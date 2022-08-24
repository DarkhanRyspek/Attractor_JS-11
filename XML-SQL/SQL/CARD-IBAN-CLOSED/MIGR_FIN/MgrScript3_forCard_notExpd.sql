-- MgrScript3_forCard_notExpd
DECLARE  -- Local variables here
  EvntType dtype. RecordID %TYPE;
  UAID     dtype. RecordID %TYPE;
  RetCode  dtype. Counter      %Type;
BEGIN -- Test statements here
  RetCode := stnd.PROCESS_START('MgrScript3_forCard_notExpd', 'CustVer=20180917-001', stnd.Yes);
  FOR prod_cs IN (SELECT DISTINCT a.f_i, a.id, a.acnt_contract__oid,
                                  trunc(nvl(glob.LDATEACNT(a.acnt_contract__oid), glob.GET_DB_DATE_WS)) CurrDate
                    FROM usage_action u, event_type t, acnt_contract a
                   WHERE u.event_type = t.id
                     AND t.code = ('CARD_AUTO_RENEW')
                     and t.amnd_state='A'
                     AND u.acnt_contract__id = a.id
                     AND a.amnd_state = 'A' AND a.pcat = 'C' AND a.con_cat = 'C'
                     AND A.ID IN (SELECT S.ID1 FROM SBERBANK_CUST.TEMP_WT S WHERE S.INFORM = 'CARD_AUTO_RENEW')
                     AND decr.GET_STATUS_CODE(a.id, NULL, NULL, 'AUTO_CL_IS_ACTIVE') = 'Y'
                     AND (a.date_expire > nvl(glob.LDATEACNT(a.acnt_contract__oid),
                              glob.GET_DB_DATE_WS) OR a.date_expire IS NULL)
                     AND a.card_expire > to_char(nvl(glob.LDATEACNT(a.acnt_contract__oid), glob.GET_DB_DATE_WS), 'yymm')
                     AND u.id = (SELECT MAX(uu.id) FROM usage_action uu
                                 WHERE u.event_type = uu.event_type AND u.acnt_contract__id = uu.acnt_contract__id)
								 AND NOT EXISTS (SELECT 1 FROM card_info c WHERE c.acnt_contract__oid = a.id AND c.date_from > u.start_date))
  LOOP
  
    EvntType := evnt.EVENT_BY_CODE('SMS_BFR_EXPD', prod_cs.id);
    IF EvntType IS NOT NULL
    THEN UaID := api.PUT_EVENT(EvntType, prod_cs.id, NULL, prod_cs.CurrDate, 'SMS Before Expire Date');
      stnd.PROCESS_MESSAGE(stnd.Information, 'Put Event SMS_BFR_EXPD for contract_id = ' || prod_cs.id);
    END IF;
  END LOOP;
  stnd.PROCESS_END;
  COMMIT;
END;
