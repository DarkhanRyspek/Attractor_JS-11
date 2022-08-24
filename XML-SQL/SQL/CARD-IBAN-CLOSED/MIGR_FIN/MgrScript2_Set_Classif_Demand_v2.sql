-- MgrScript2_Set_Classif_Demand
DECLARE
  SkipReason dtype. ErrorMessage %TYPE;
  StatusID   dtype. RecordID %TYPE;
  ValueID    dtype. RecordID %TYPE;
  ErrMsg     dtype. ErrorMessage %TYPE;
  RetCode    dtype. Counter      %Type;
BEGIN
  RetCode := stnd.PROCESS_START('MgrScript2_Set_Classif_Demand', 'CustVer=20180917-001', stnd.Yes);
  FOR prod_cs IN (SELECT u.acnt_contract__id,
                         t.code,
                         nvl(decr.GET_STATUS_CODE(u.acnt_contract__id, NULL, NULL, 'CNTR_PTP'), 'N') St_code,
                         decr.GET_STATUS_TYPE(u.acnt_contract__id, NULL, NULL, 'CNTR_PTP') ST_type_ID
                    FROM usage_action u, event_type t
                   WHERE u.event_type = t.id
                     AND u.posting_status = 'P'
                     AND t.code IN ('PTP_ACTIVATE', 'PTP_BLK', 'PTP_CARD_ACT'))
  LOOP
    IF nvl(prod_cs.St_code, 'N') = 'N'
    THEN
      decr.GET_STATUS_VALUE(prod_cs.acnt_contract__id, NULL, NULL, 'CNTR_PTP', 'Y',
                            StatusID,
                            ValueID,
                            ErrMsg);
      
        decr.SET_STATUS(prod_cs.acnt_contract__id, NULL, NULL,
                        StatusID,
                        ValueID, --StatusValueID
                        NULL, NULL, NULL, NULL, --ActionRule
                        'Custom start CS for usage with code=' ||
                        prod_cs.code,
                        SkipReason);
        stnd.PROCESS_MESSAGE(stnd.Information, 'Set Demand Status for contract_id = ' || prod_cs.acnt_contract__id);
    END IF;
  END LOOP;
  stnd.PROCESS_END;
  COMMIT;
END;
