--- MgrScript5_Inactive
DECLARE
  EvntType dtype. RecordID %TYPE;
  UAID     dtype. RecordID %TYPE;
  RetCode  dtype. Counter  %Type;
BEGIN -- for card
  RetCode := stnd.PROCESS_START('MgrScript5_Inactive', 'CustVer=20180917-001', stnd.Yes);
  FOR acnt_card IN (SELECT a.id, a.contract_number, a.date_open,
                           trunc(nvl(glob.LDATEACNT(a.id), glob.GET_DB_DATE_WS)) CurrDate,
                           to_date(glob.get_TAG_VALUE(a.ext_data, 'ACTIVITY_DATE'),'yyyy-mm-dd'),
                           a.total_blocked,
                           a.total_balance,
                           nvl((SELECT SUM(acc.current_balance) FROM account acc
                                WHERE acc.acnt_contract__oid = a.id AND acc.code = 'P'), 0) ClDeposit,
                           nvl((SELECT SUM(acc.current_balance) FROM account acc
                                WHERE acc.acnt_contract__oid = a.id AND acc.code != 'P'), 0) AllAccount,
                           nvl((SELECT SUM(acc.current_balance) FROM account acc
                                WHERE acc.acnt_contract__oid = a.id AND acc.current_balance > 0), 0) ClDeposit2,
                           nvl((SELECT SUM(acc.current_balance) FROM account acc
                                WHERE acc.acnt_contract__oid = a.id AND acc.current_balance < 0), 0) AllAccount2
                      FROM acnt_contract a
                     WHERE a.amnd_state = 'A' AND a.pcat = 'C'
                           AND a.ccat = 'P' AND a.con_cat = 'A'
                           and a.is_ready = 'Y'
                           AND A.ID IN (SELECT S.ID1 FROM SBERBANK_CUST.TEMP_WT S WHERE S.INFORM = 'CONTRACT_DELAY_D')
                           AND EXISTS (SELECT 1 FROM acc_scheme acs
                                       WHERE acs.id = a.acc_scheme__id AND acs.amnd_state = 'A'
                                         AND acs.pcat = a.pcat AND acs.scheme_name LIKE 'Db%')
                          -- период
                           AND nvl(glob.LDATEACNT(a.id), glob.GET_DB_DATE_WS) -
                               nvl(to_date(glob.get_TAG_VALUE(a.ext_data, 'ACTIVITY_DATE'), 'yyyy-mm-dd'), a.date_open) > 365
                           AND NOT EXISTS (SELECT 1 FROM usage_action uu, event_type tt
                                           WHERE a.id = uu.acnt_contract__id AND uu.event_type = tt.id
                                                 AND tt.amnd_state='A' AND tt.code = ('CONTRACT_DELAY') AND uu.posting_status = 'P'))
  LOOP
    EvntType := evnt.EVENT_BY_CODE('CONTRACT_DELAY', acnt_card.id);
    IF EvntType IS NOT NULL
    THEN UaID := api.PUT_EVENT(EvntType,
                            acnt_card.id,
                            NULL,
                            acnt_card.CurrDate,
                            'Contract Inactive.');
      stnd.PROCESS_MESSAGE(stnd.Information, 'Put Event CONTRACT_DELAY for contract_id = ' || acnt_card.id);
    END IF;
    COMMIT;
  END LOOP;
  stnd.PROCESS_END;
  COMMIT;
END;
