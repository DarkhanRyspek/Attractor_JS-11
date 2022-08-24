-- MgrScript4_forExpdCard
DECLARE
  EvntType dtype. RecordID %TYPE;
  UAID     dtype. RecordID %TYPE;
  RetCode  dtype. Counter  %Type;
BEGIN   -- for card
  RetCode := stnd.PROCESS_START('MgrScript4_forExpdCard', 'CustVer=20180917-001', stnd.Yes);
  FOR acnt_card IN (SELECT a.id,
                           trunc(nvl(glob.LDATEACNT(a.id), glob.GET_DB_DATE_WS)) CurrDate
                      FROM acnt_contract a
                     WHERE a.amnd_state = 'A'
                       AND a.pcat = 'C'
                       AND a.con_cat = 'C'
                       AND a.is_ready = 'Y'
                       AND a.date_expire IS NULL
                       AND A.ID IN (SELECT S.ID1 FROM SBERBANK_CUST.TEMP_WT S WHERE S.INFORM = 'CARD_EXPD_1')
                       AND decr.GET_STATUS_CODE(a.id,NULL,NULL,'AUTO_CL_IS_ACTIVE') = 'Y'
                       AND a.card_expire < to_char(nvl(glob.LDATEACNT(a.id), glob.GET_DB_DATE_WS),'yymm')
                       AND NOT EXISTS (SELECT 1 FROM usage_action uu, event_type tt
                                       WHERE a.id = uu.acnt_contract__id AND uu.event_type = tt.id
                                         AND tt.code = ('CARD_EXPD') AND tt.amnd_state='A' AND uu.posting_status = 'P'))
  LOOP
    EvntType := evnt.EVENT_BY_CODE('CARD_EXPD', acnt_card.id);
    IF EvntType IS NOT NULL
    THEN UaID := api.PUT_EVENT(EvntType,
                            acnt_card.id,
                            NULL,
                            acnt_card.CurrDate,
                            'Card Contract close.');
      stnd.PROCESS_MESSAGE(stnd.Information, 'Put Event CARD_EXPD for contract_id = ' || acnt_card.id);
    END IF;
    COMMIT;
  END LOOP;
  stnd.PROCESS_END;
  COMMIT;
END;
