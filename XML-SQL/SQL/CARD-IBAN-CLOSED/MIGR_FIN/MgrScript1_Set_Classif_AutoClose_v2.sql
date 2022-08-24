-- MgrScript1_Set_Classif_AutoClose
--PL/SQL Developer Test script 3.0 
DECLARE
  LocalDate  dtype. CurrentDate %TYPE;
  CLassID    dtype. RecordID %TYPE;
  SkipReason dtype. ErrorMessage %TYPE;
  StatusID   dtype. RecordID %TYPE;
  ValueID    dtype. RecordID %TYPE;
  ErrMsg     dtype. ErrorMessage %TYPE;
  RetCode    dtype. Counter      %Type;
BEGIN
  RetCode := stnd.PROCESS_START('MgrScript1_Set_Classif_AutoClose', 'CustVer=20180917-001', stnd.Yes);
  LocalDate := glob.GET_DB_DATE_WS;
  
  SELECT MIN(a.id) id INTO CLassID FROM cs_status_type a WHERE a.amnd_state = 'A' AND a.code = 'AUTO_CL_IS_ACTIVE';

  -- Search Default Value in Product Options
  FOR prod_cs IN (SELECT appl.id, appl.internal_code, default_value, decr.VALUE_IS_ACTIVE(default_value) Prod_Val
                    FROM product_option p, appl_product appl
                   WHERE p.option_id = CLassID --StatusID
                     AND p.amnd_state = stnd.Active
                     AND decr.VALUE_IS_ACTIVE(p.default_value) = 'Y'
                     and appl.internal_code in ('140807000000000000036020')
                     AND (p.date_from <= LocalDate OR p.date_from IS NULL)
                     AND (p.date_to >= LocalDate OR p.date_to IS NULL)
                     AND p.appl_product__oid = appl.id AND appl.amnd_state = 'A'
                   ORDER BY p.id DESC)
  LOOP
    stnd.PROCESS_MESSAGE(stnd.Information, '  Product = ' || prod_cs.internal_code);  
    FOR acnt_cs IN (SELECT a.id, nvl(decr.GET_STATUS_CODE(a.id, NULL, NULL, 'AUTO_CL_IS_ACTIVE'),'N') St_code, a.contract_number
                      FROM acnt_contract a
                     WHERE a.amnd_state = 'A'
                       AND a.product = prod_cs.internal_code
                       AND nvl(decr.GET_STATUS_CODE(a.id, NULL, NULL, 'AUTO_CL_IS_ACTIVE'),'N') = 'N'
                       AND a.is_ready = 'Y')
    LOOP   
      IF nvl(acnt_cs.St_code, 'N') = 'N'
      THEN
        decr.GET_STATUS_VALUE(acnt_cs.id, NULL, NULL, 'AUTO_CL_IS_ACTIVE', 'Y',
                              StatusID, ValueID, ErrMsg);
          decr.SET_STATUS(acnt_cs.id, NULL, NULL, StatusID, ValueID, --StatusValueID
                          NULL, NULL, NULL, NULL, --ActionRule
                          'Custom start CS for Product', SkipReason);
          stnd.PROCESS_MESSAGE(stnd.Information, 'Set AutoClose Status for contract_id = ' || acnt_cs.id);
      END IF;
    END LOOP;
    COMMIT;
  END LOOP;
  stnd.PROCESS_END;
  commit;
END;

