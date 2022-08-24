--Акция начисление Cashback 100%
Declare
v_contract_number varchar2(20);
v_cb_amount number;
--begin  
    select 'KZ75914CP84052907076', 1500.50
    into v_contract_number, v_cb_amount
    from dual;
    
  INSERT INTO ows.doc
      (AMND_OFFICER, AMND_STATE, IS_AUTHORIZATION, MESSAGE_CATEGORY, OUTWARD_STATUS, POSTING_STATUS, REQUEST_CATEGORY, RETURN_CODE, SERVICE_CLASS, 
       SETTL_AMOUNT, SETTL_CURR, SOURCE_ACC_TYPE, SOURCE_NUMBER, TARGET_ACC_TYPE, TARGET_NUMBER, TRANS_DETAILS, TRANS_DATE)
  VALUES
      (55502, --Жулдызбаев Т. 
       'A', 'N', 'U', 'W', 'W', 'P', '0', 'A',
       v_cb_amount,
       '398',  --settl_curr,
       'B2',   --SOURCE_ACC_TYPE
       '038-BONUS', --SOURCE_NUMBER
       'B1',   --TARGET_ACC_TYPE
       v_contract_number, --TARGET_NUMBER
       'Начисление 100% Cashback по акции. SD-258625',
       sysdate);
       
  INSERT INTO ows.doc
      (AMND_OFFICER, AMND_STATE, IS_AUTHORIZATION, MESSAGE_CATEGORY, OUTWARD_STATUS, POSTING_STATUS, REQUEST_CATEGORY, RETURN_CODE, SERVICE_CLASS, 
       SETTL_AMOUNT, SETTL_CURR, SOURCE_ACC_TYPE, SOURCE_NUMBER, TARGET_ACC_TYPE, TARGET_NUMBER, TRANS_DETAILS, TRANS_DATE)
  VALUES
      (55502, --Жулдызбаев Т. 
       'A', 'N', 'U', 'W', 'W', 'P', '0', 'A',
       v_cb_amount,
       '398',  --settl_curr,
       'B1',   --SOURCE_ACC_TYPE
       v_contract_number, --SOURCE_NUMBER
       'P',   --TARGET_ACC_TYPE
       v_contract_number, --TARGET_NUMBER
       'Начисление 100% Cashback по акции. SD-258625',
       sysdate);   
    
    --commit;   
end;
