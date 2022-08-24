CREATE OR REPLACE PACKAGE BODY SCHEDULE.Almas IS
ows.incd
  FUNCTION card_edit(
                      i_contr_modifi_type in number ,                           --код создать контракт или субконтракт
                      i_order_num  in OWS.CARD_INFO.ORDER_N%type,               --номер заявления
                      i_order_dep  in OWS.CARD_INFO.ORDER_FROM%type,            --можно неиспользовать филиал
                      i_delivery_dep in OWS.CARD_INFO.ORDER_TO%type,            -- можно неиспользовать филиал    оба  заполняются в заявлении на выпуск карты
                      i_spf in ows.card_info.COMMENT_TEXT%type,                 -- СПФ  филиала  , точный адрес филиала , должен передоваться с КМ текст 'OSCODE=PKO7;''
                      i_client_number in OWS.CLIENT.CLIENT_NUMBER%type,           -- номер клиента
                      i_client_type in OWS.CLIENT_TYPE.CODE%type,                --  тип клиента и резидентство
                      i_short_name in OWS.CLIENT.SHORT_NAME%type,                --  наименование карточной карты
                      i_branch_code in varchar2,                                 -- OWS.BRANCH.CODE%type,         --  филиал
                      i_contr_subtype in OWS.CONTR_SUBTYPE.CODE%type,             --  суб тип карты
                      i_serv_pack in OWS.SERV_PACK.CODE%type ,                    --  сервис пакет карты
                      i_rbs_number in OWS.ACNT_CONTRACT.RBS_NUMBER%type ,         --рбс номер карты
                      i_main_contr_number in OWS.ACNT_CONTRACT.RBS_NUMBER%type , -- главный контракт , заполняется когда субконракт
                      i_contr_curr in  OWS.CURRENCY.CODE%type,                     --  валюта контракта
                      i_contr_report in varchar2,                                -- e
                      i_card_expire in OWS.ACNT_CONTRACT.CARD_EXPIRE%type,       --дата завершения срока действия карты
                      i_prod_event in OWS.PROD_EVENT.CODE%type,                   -- способ выпуска карты
                      i_contr_product  in OWS.APPL_PRODUCT.CODE%type,             --через продукт вытянуть серв пак аккаунт схем и контр таип    
                      i_rel_type in varchar2,                                   -- признак срочности 1 urgent or null 
                      p_card_number  out OWS.ACNT_CONTRACT.CONTRACT_NUMBER%type   --  маскированный номер карты OUT parameters
          -- i_cl_modifi_type IN NUMBER,                                            --код создать или несоздовать запись
          -- i_card_prod_type in number,                                            -- тип выпуска карты
          -- i_order_date in date,
          --i_contr_number  in OWS.ACNT_CONTRACT.CONTRACT_NUMBER%type ,             --  или RBS number
          -- i_auth_scenario  in varchar2,                                          --  можно вытянуть из продукта
          -- i_emboss_name in varchar2,                                             -- данные о клиенте
          -- i_contr_comment in varchar2,                                           -- можно не испольлзовать
                     ) 
  RETURN NUMBER is
                  r_contract ows.acnt_contract%ROWTYPE;          -- счетовои
                  r_card    ows.acnt_contract%ROWTYPE;           -- карточка
                  r_client  ows.client%ROWTYPE;                  -- клиент
                  r_product OWS.APPL_PRODUCT%ROWTYPE;            -- продукт
                  r_plastic OWS.CONTR_SUBTYPE%ROWTYPE;           -- суб тип карты
                  r_prodevent  OWS.PROD_EVENT%ROWTYPE;           -- вид выпуска карты
                  r_servpack  OWS.SERV_PACK%ROWTYPE;             -- сервис пакет
                  v_card_id  number;                             -- ID номер карты после Инсерта чтобы заАпрувить
                  v_isready_card OWS.ACNT_CONTRACT.IS_READY%type;--
                  v_isready_acc OWS.ACNT_CONTRACT.IS_READY%type; --запомнить  текушее значение счетовои 
                  v_isready_acc_new OWS.ACNT_CONTRACT.IS_READY%type;-- новое значение после аппрува 
                  s_officer number;                                -- пользователь который заводит контракт АБИС
                  v_resp_appr varchar (4000);                    --  сообщение об ошибке при Апруве
                  v_comment_text varchar (4000);                 --  переменная для  корректного ввода СПФ
                  v_previd number;                               -- возврат предыдущего статуса контракта
                  
 pragma autonomous_transaction;  --  Автономная транзакция чтобы commit не мешал запуску через линк
   
 BEGIN
     select id into s_officer from ows.officer where user_id = 'ABIS_USER' and amnd_state='A';
     o_errm := null;

         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => s_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;      
  DBMS_OUTPUT.put_line(   'Officer ');
  
        --Проверяем валюту Карты
         if i_contr_curr not in  ('398','840','978') then
        --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Неизвестный код валюты');
         o_errm := 1001;
         rollback;
         return 0;
         END if;
 
  DBMS_OUTPUT.put_line(   'Currency is correct');
  
       /*Ищем клиента*/
           BEGIN
           select cl.*  into  r_client from OWS.CLIENT cl 
           where CL.CLIENT_NUMBER=i_client_number and 
           CL.AMND_STATE='A'  and CL.IS_READY='Y';
                    EXCEPTION
                    WHEN no_data_found THEN
                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Клиент не найден');
                    o_errm := 1025;
                    rollback;
                    return 0;
                    WHEN too_many_rows THEN
                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по клиенту');
                    o_errm := 1019;
                    rollback;
                    return 0;
                    END;
           
   DBMS_OUTPUT.put_line(   'Client found ');
   
   /* Ищем контракт*/
           BEGIN
           SELECT acnt.* INTO r_contract
           FROM ows.acnt_contract acnt -- , ows.client c1
           WHERE acnt.amnd_state = 'A' AND
                 acnt.con_cat = 'A' AND
                 acnt.rbs_number = i_main_contr_number  -- номер RBS счетовои контракта
                 --and c1.id = ACNT.CLIENT__ID and C1.CLIENT_NUMBER= i_client_number and c1.amnd_state='A'
               ;
                     EXCEPTION
                     WHEN no_data_found THEN
                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Контракт не найден');
                     o_errm := 1006;
                     rollback;
                     return 0;
                     WHEN too_many_rows THEN
                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по контракту');
                     o_errm := 1030;
                     rollback;
                     return 0;
                     END;    
            /* Проверяем параметры контракта */
              IF (r_contract.contr_status) = 86 THEN
              -- ows.sy_process.process_message(messagetype => 'E', messagetext => 'Контракт закрыт');
               o_errm := 1003;
              return 0;
              END IF; 
DBMS_OUTPUT.put_line(   'Contract found');
      
    /*Ищем Prodaction Event ,Вид Выпуска */
        BEGIN
        select  pe.* into r_prodevent from OWS.PROD_EVENT pe
             where pe.AMND_STATE='A' and  PE.CONT_CAT='C' and 
                   PE.CODE=i_prod_event;
                   
                     EXCEPTION
                     WHEN no_data_found THEN
                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Prodaction Event  не найден');
                     o_errm := 1036;
                     rollback;
                     return 0;
                     WHEN too_many_rows THEN
                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по Prodaction Event ');
                     o_errm := 1037;
                     rollback;
                     return 0;
                     END;
        
   DBMS_OUTPUT.put_line(   'Production Event Selected') ;     
           /* Проверяем параметры СПФ*/
              IF (i_spf) not like 'OSCODE=%;' THEN
              -- ows.sy_process.process_message(messagetype => 'E', messagetext => 'не корректный формат СПФ');
               o_errm := 1046;
              return 0;
              END IF;  
                /*Ищем продукт*/
                /*физ лица*/   
                IF (r_client.ccat)='P'  THEN   
                               
                     BEGIN
                      select apr.*  into r_product from OWS.APPL_PRODUCT apr
                      where apr.CODE=i_contr_product  and 
                            apr.AMND_STATE='A' and 
                            apr.CON_CAT='C' and 
                            apr.main_product=r_contract.main_product  and
                            apr.PCAT='C' and 
                            apr.PRODUCT_STATUS='A' and
                            APR.IS_READY='Y';
                                               EXCEPTION
                                               WHEN no_data_found THEN
                                               --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Продукт не найден');
                                               o_errm := 1016;
                                               rollback;
                                               return 0;
                                               WHEN too_many_rows THEN
                                               --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по Продукту');
                                               o_errm := 1038;
                                               rollback;
                                               return 0;
                                               END;
    
                   DBMS_OUTPUT.put_line(   'Product');
       
                 /* Юр лица */  
               ELSE
               /*Ищем СубТип карты*/
                   BEGIN
                   select  cs.* into r_plastic from OWS.CONTR_SUBTYPE cs
                        where CS.AMND_STATE='A' and  CS.CON_CAT='C' and CS.IS_ACTIVE='Y' and        cs.code=i_contr_subtype;
            
                                                    EXCEPTION
                                                    WHEN no_data_found THEN
                                                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'СубТип контракта не найден');
                                                    o_errm := 1039;
                                                    rollback;
                                                    return 0;
                                                    WHEN too_many_rows THEN
                                                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по СубТипу контракта);
                                                    o_errm := 1040;
                                                    rollback;
                                                    return 0;
                                                    END;
        
                      DBMS_OUTPUT.put_line(   'Contract Subtype') ;   
           
                /*Ищем Сервис Пакет*/
                    BEGIN
                    select  sp.* into r_servpack from OWS.SERV_PACK  sp
                         where SP.AMND_STATE='A' and  SP.CON_CAT='C' and SP.IS_READY='Y' and  SP.F_I=737 and   sp.code=i_serv_pack;
                 
                   
                                                    EXCEPTION
                                                    WHEN no_data_found THEN
                                                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Сервис Пакет не найден');
                                                      DBMS_OUTPUT.put_line(   'Сервис Пакет не найден') ;
                                                    o_errm := 1032;
                                                    rollback;
                                                    return 0;
                                                    WHEN too_many_rows THEN
                                                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по Сервис Пакету');
                                                     DBMS_OUTPUT.put_line(   'слишком много записей найдено по Сервис Пакету') ;
                                                    o_errm := 1041;
                                                    rollback;
                                                    return 0;
                                                    END;
        
                      DBMS_OUTPUT.put_line(   'Service Pack') ;  
      
               END IF;   
        
    if i_contr_modifi_type=2  THEN  -- Создать карточный контракт 
       BEGIN

          DBMS_OUTPUT.put_line(   'Create new ');
          
          v_isready_acc := r_contract.is_ready;
          ows.YACNT_CONTRACT( r_contract.id, 'H' , v_previd );   -- создаем историческую запись
          update ows.acnt_contract set amnd_officer= s_officer, is_ready='N' where id = r_contract.id; 
          -- Физические лица
          IF (r_client.ccat)='P'  THEN 
              BEGIN
              
               DBMS_OUTPUT.put_line(   'Private ');
             
               insert into ows.acnt_contract( 
                                          AMND_OFFICER,       --1
                                          F_I,                --2
                                          PCAT,               --3  
                                          CON_CAT,            --4
                                          CCAT,               --5 
                                          CLIENT_TYPE,        --6
                                          PARENT_PRODUCT,     --7
                                          PRODUCT,            --8
                                          CLIENT__ID,         --9
                                          RBS_NUMBER ,        --10 
                                          CONTRACT_NAME,      --11
                                          COMMENT_TEXT,       --12
                                       -- CONTR_TYPE,         --13
                                       -- CONTR_SUBTYPE__ID,  --14 
                                       -- ACC_SCHEME__ID,     --15  
                                       -- SERV_PACK__ID,      --16 
                                          ACNT_CONTRACT__OID, --17 
                                          TR_FIRST_NAM,       --18
                                          TR_LAST_NAM,        --19
                                          TR_COMPANY,         --20
                                          CARD_EXPIRE,          --21
                                       -- REPORT_TYPE         --22 
                                          ADD_INFO_01
                                      )         
                               values(s_officer,               --1 
                                      737,                     --2
                                      'C',                     --3
                                      'C',                     --4
                                      r_client.CCAT,           --5
                                      r_client.CLT,            --6
                                      r_product.PARENT_CODE,   --7
                                      r_product.INTERNAL_CODE, --8 
                                      r_client.ID,             --9 
                       
                                      i_rbs_number,            --10
                                      i_short_name,            --11
                                      i_rbs_number,            --12
                                    --r_product.CONTR_TYPE,    --13
                                   -- i_contr_subtype ,        --14 
                                    --r_contract.ACC_SCHEME__ID,--15
                                    --r_product.SERVICE_PACK,  --16
                                      r_contract.id,           --17
                                      r_client.FIRST_NAM,      --18
                                      r_client.LAST_NAM,       --19
                                      r_client.TR_COMPANY_NAM, --20
                                      i_card_expire,          --21
                                 --  r_product.REPORT_TYPE    --22
                                      i_rel_type
                                             );
                                 
                                DBMS_OUTPUT.put_line(   'Created ');
                                
                 END;
           --Юридические лица
          ELSIF (r_client.ccat)='C'  THEN  
                BEGIN     
                
                                DBMS_OUTPUT.put_line(   'Comercial ') ;   
                                     
                insert into ows.acnt_contract( 
                                          AMND_OFFICER,       --1
                                          F_I,                --2
                                          PCAT,               --3  
                                          CON_CAT,            --4
                                          CCAT,               --5 
                                          CLIENT_TYPE,        --6
                                         -- PARENT_PRODUCT,     --7
                                         -- PRODUCT,            --8
                                          CLIENT__ID,         --9
                                          RBS_NUMBER ,        --10 
                                          CONTRACT_NAME,      --11
                                          --COMMENT_TEXT,       --12
                                          CHANNEL,            --12.1
                                          CONTR_TYPE,         --13
                                          CONTR_SUBTYPE__ID,  --14 
                                          ACC_SCHEME__ID,     --15  
                                          SERV_PACK__ID,      --16 
                                          ACNT_CONTRACT__OID, --17 
                                          TR_FIRST_NAM,       --18
                                          TR_LAST_NAM,        --19
                                          TR_COMPANY,         --20
                                          CARD_EXPIRE,        --21
                                          REPORT_TYPE,
                                          BILLING_CONTRACT,
                                          ADD_INFO_01
                                          )        --22  
                             values(  s_officer,               --1 
                                      737,                     --2
                                      'C',                     --3
                                      'C',                     --4
                                      r_client.CCAT,           --5
                                      r_client.CLT,            --6
                                     -- r_product.PARENT_CODE,   --7
                                     -- r_product.INTERNAL_CODE, --8 
                                      r_client.ID,             --9 
                                      i_rbs_number,            --10
                                      i_short_name,            --11
                                     -- i_rbs_number,            --12
                                      r_plastic.CHANNEL,       --12.1
                                      r_plastic.CONTR_TYPE__OID,--13  
                                      r_plastic.id    ,         --14 
                                      r_contract.ACC_SCHEME__ID,--15
                                      r_servpack.id,             --16
                                      r_contract.id,           --17
                                      r_client.FIRST_NAM,      --18
                                      r_client.LAST_NAM,       --19
                                      r_client.TR_COMPANY_NAM, --20
                                      i_card_expire,           --21
                                      i_contr_report,   --22
                                      r_contract.id,
                                      i_rel_type
                                             );
                                 
                                DBMS_OUTPUT.put_line(   'Created ');
                                
                END; 
          END IF;                   
               v_resp_appr:=  ows.spac.renew_contr(r_contract.id);      -- одобряем контракт
               o_rsp := substr (v_resp_appr, 3);  
                 DBMS_OUTPUT.put_line(v_resp_appr);
               select is_ready into v_isready_acc_new from ows.acnt_contract where id = r_contract.id;
               if v_isready_acc_new = 'Y' then 
                   select ac.id  into  v_card_id  from ows.acnt_contract ac where AC.RBS_NUMBER=i_rbs_number and ac.AMND_STATE='A'; 
                   select ci.COMMENT_TEXT  into  v_comment_text from OWS.CARD_INFO ci where ci.ACNT_CONTRACT__OID=v_card_id and ci.STATUS='I' ;   
                   
                        if v_comment_text='' then 
                        
                               if i_prod_event='NCRD' then -- значение по умолчанию
                                  update OWS.CARD_INFO 
                                  set                 ORDER_N=i_order_num, 
                                                      ORDER_FROM=i_order_dep,  
                                                      ORDER_TO=i_delivery_dep, 
                                                      CARD_EXPIRE=i_card_expire, 
                                                      COMMENT_TEXT=i_spf
                                  where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                               else                        --модификация
                                  update OWS.CARD_INFO
                                  set                 ORDER_N=i_order_num, 
                                                      ORDER_FROM=i_order_dep,  
                                                      ORDER_TO=i_delivery_dep,  
                                                      PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                      EVENT=r_prodevent.EVENT,
                                                      PRODUCTION_EVENT=r_prodevent.CODE,
                                                      CARD_EXPIRE=i_card_expire,
                                                      COMMENT_TEXT=i_spf
                                   where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                               end if;  
                               
                        else  --если в comment texte  есть строка то добавляем к существующему тексту    
                        
                                 if i_prod_event='NCRD' then -- значение по умолчанию
                                  update OWS.CARD_INFO 
                                  set                 ORDER_N=i_order_num, 
                                                      ORDER_FROM=i_order_dep,  
                                                      ORDER_TO=i_delivery_dep, 
                                                      CARD_EXPIRE=i_card_expire, 
                                                       COMMENT_TEXT=i_spf||v_comment_text
                                  where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                                  
                               else         --модификация  
                                            
                                  update OWS.CARD_INFO
                                  set                 ORDER_N=i_order_num, 
                                                      ORDER_FROM=i_order_dep,  
                                                      ORDER_TO=i_delivery_dep,  
                                                      PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                      EVENT=r_prodevent.EVENT,
                                                      PRODUCTION_EVENT=r_prodevent.CODE,
                                                      CARD_EXPIRE=i_card_expire,
                                                      COMMENT_TEXT=i_spf||v_comment_text
                                   where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                               end if;  
                               
                         end if;
                DBMS_OUTPUT.put_line( 'card info ');
                                                          /* Ищем карту для выхода*/
                                   BEGIN
                                   SELECT  (substr(acnt.CONTRACT_NUMBER,1,6) ||'******' ||substr(acnt.CONTRACT_NUMBER,13,4)) Contract_number INTO p_card_number
                                           FROM ows.acnt_contract acnt 
                                           WHERE acnt.amnd_state = 'A' AND
                                                 acnt.con_cat = 'C' AND
                                                 acnt.rbs_number =i_rbs_number;
                                                             EXCEPTION
                                                             WHEN no_data_found THEN
                                                             --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Выпушенная карта  не найден');
                                                             o_errm := 1044;
                                                             rollback;
                                                             return 0;
                                                             WHEN too_many_rows THEN
                                                             --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по выпушенной карте');
                                                             o_errm := 1045;
                                                             rollback;
                                                             return 0;
                                                             END;
                      commit;
                      return 1;
                     
               else  -- is_ready  N
                dbms_output.put_line( 'main contract dont be approved ');
                           update ows.acnt_contract 
                           set                     is_ready= v_isready_acc 
                           where id = r_contract.id ;    -- возвращаю контракт в исходное состояние
                               DBMS_OUTPUT.put_line(   'card info is null  ');
                   commit;                      -- commit для update
                   return 0;
                
               end if;
                                     EXCEPTION
                                     WHEN no_data_found THEN
                                     o_errm := 1042;
                                         DBMS_OUTPUT.put_line(  'card donf found');
                                     rollback;
                                     return 0;
                                     WHEN too_many_rows THEN
                                      --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено');
                                          DBMS_OUTPUT.put_line(  'more information about card ');
                                     o_errm := 1007;
                                     rollback;
                                     return 0;       
                                     END;
    ELSIF i_contr_modifi_type=3  THEN -- Изменить карту
            BEGIN
            DBMS_OUTPUT.put_line(   'Edit');
                v_isready_acc := r_contract.is_ready;
                ows.YACNT_CONTRACT( r_contract.id, 'H' , v_previd );   -- создаем историческую запись
                update ows.acnt_contract set amnd_officer= s_officer, is_ready='N' where id = r_contract.id; 
                update ows.acnt_contract set 
                                          AMND_OFFICER=s_officer,                   --1
                                          F_I=737,                                  --2
                                          PCAT='C',                                 --3  
                                          CON_CAT='C',                              --4
                                          CCAT=r_client.CCAT,                       --5 
                                          CLIENT_TYPE=r_client.CLT,                 --6
                                          PARENT_PRODUCT=r_product.PARENT_CODE,     --7
                                          PRODUCT=r_product.INTERNAL_CODE,          --8
                                          CLIENT__ID=r_client.ID,                   --9
                                          RBS_NUMBER=i_rbs_number,                  --10 
                                          CONTRACT_NAME=i_short_name,               --11
                                          COMMENT_TEXT=i_rbs_number,                --12
                                          CONTR_TYPE=r_product.CONTR_TYPE,          --13
                                          CONTR_SUBTYPE__ID=r_product.CONTR_SUBTYPE,--14 
                                          ACC_SCHEME__ID=r_product.ACC_SCHEME,      --15  
                                          SERV_PACK__ID=r_product.SERVICE_PACK,     --16 
                                          ACNT_CONTRACT__OID=r_contract.id,         --17 
                                          TR_FIRST_NAM=r_client.FIRST_NAM,          --18
                                          TR_LAST_NAM=r_client.LAST_NAM,            --19
                                          CARD_EXPIRE=i_card_expire,                --20
                                          REPORT_TYPE= r_product.REPORT_TYPE,       --21 
                                          ADD_INFO_01=i_rel_type
                where rbs_number=i_rbs_number;
                
               v_resp_appr :=  ows.spac.renew_contr (r_contract.id);      -- одобряем контракт
               o_rsp := substr (v_resp_appr, 3);  
                select is_ready into v_isready_acc_new from ows.acnt_contract where id = r_contract.id;
               if v_isready_acc_new = 'Y' then 
                  select ac.id  into  v_card_id  from ows.acnt_contract ac where AC.RBS_NUMBER=i_rbs_number and ac.AMND_STATE='A' ;   
                  select ci.COMMENT_TEXT  into  v_comment_text from OWS.CARD_INFO ci where ci.ACNT_CONTRACT__OID=v_card_id and ci.STATUS='I' ; 
                      if v_comment_text='' then 
                            if i_prod_event='NCRD' then -- значение по умолчанию
                               update OWS.CARD_INFO 
                               set                 ORDER_N=i_order_num, 
                                                  ORDER_FROM=i_order_dep,  
                                                  ORDER_TO=i_delivery_dep,  
                                                  CARD_EXPIRE=i_card_expire,
                                                  COMMENT_TEXT=i_spf
                               where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                             else                        --модификация
                               update OWS.CARD_INFO
                               set                 ORDER_N=i_order_num, 
                                                  ORDER_FROM=i_order_dep,  
                                                  ORDER_TO=i_delivery_dep  ,
                                                  PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                  EVENT=r_prodevent.EVENT,
                                                  PRODUCTION_EVENT=r_prodevent.CODE,
                                                  CARD_EXPIRE=i_card_expire,
                                                  COMMENT_TEXT=i_spf
                               where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                            end if;  
                     else  --если в comment texte  есть строка то добавляем к существующему тексту
                            if i_prod_event='NCRD' then -- значение по умолчанию
                               update OWS.CARD_INFO 
                               set                 ORDER_N=i_order_num, 
                                                  ORDER_FROM=i_order_dep,  
                                                  ORDER_TO=i_delivery_dep,  
                                                  CARD_EXPIRE=i_card_expire,
                                                  COMMENT_TEXT=i_spf||v_comment_text
                               where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                             else                        --модификация
                               update OWS.CARD_INFO
                               set                 ORDER_N=i_order_num, 
                                                  ORDER_FROM=i_order_dep,  
                                                  ORDER_TO=i_delivery_dep  ,
                                                  PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                  EVENT=r_prodevent.EVENT,
                                                  PRODUCTION_EVENT=r_prodevent.CODE,
                                                  CARD_EXPIRE=i_card_expire,
                                                  COMMENT_TEXT=i_spf||v_comment_text
                               where ACNT_CONTRACT__OID=v_card_id and STATUS='I';
                            end if;  
                 
                     end if;  
                                                           /* Ищем карту для вывода*/
                                   BEGIN
                                   SELECT  (substr(acnt.CONTRACT_NUMBER,1,6) ||'******' ||substr(acnt.CONTRACT_NUMBER,13,4)) Contract_number INTO p_card_number
                                   FROM ows.acnt_contract acnt 
                                   WHERE acnt.amnd_state = 'A' AND
                                         acnt.con_cat = 'C' AND
                                         acnt.rbs_number =i_rbs_number;
                                                     EXCEPTION
                                                     WHEN no_data_found THEN
                                                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'выпушенная карта не найден');
                                                     o_errm := 1044;
                                                     rollback;
                                                     return 0;
                                                     WHEN too_many_rows THEN
                                                     --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по выпушеннои карте ');
                                                     o_errm := 1045;
                                                     rollback;
                                                     return 0;
                                                     END; 
                  commit;
                  return 1;
               else    -- is_ready  N
                  update ows.acnt_contract 
                  set    is_ready= v_isready_acc 
                  where id = r_contract.id ;    -- возвращаю контракт в исходное состояние
                  commit;            -- commit для update
                  return 0;
               end if;
                                       EXCEPTION
                                       WHEN no_data_found THEN
                                       o_errm := 1043;
                                       rollback;
                                       return 0;
                                       WHEN too_many_rows THEN
                                       --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено');
                                       o_errm := 1007;
                                       rollback;
                                       return 0;       
                                     END;
    ELSIF i_contr_modifi_type=0  THEN -- Перевыпуск карты
            BEGIN
            DBMS_OUTPUT.put_line(   'Replace card ');
                  BEGIN
                  select card.*  into r_card from OWS.ACNT_CONTRACT  card,OWS.ACNT_CONTRACT main_contr
                  where   CARD.AMND_STATE='A'
                     and  CARD.CON_CAT='C'       --card
                     and  CARD.CCAT in ('P','C')
                     and  CARD.PCAT='C'            
                     and  CARD.IS_READY='Y'         --card approved
                     and  CARD.CONTR_STATUS=14      --card ok
                     and  CARD.RBS_NUMBER=i_rbs_number
                     and  CARD.ACNT_CONTRACT__OID=MAIN_CONTR.ID 
                     and  MAIN_CONTR.AMND_STATE='A'
                     and  MAIN_CONTR.CON_CAT='A'         --account
                     and  MAIN_CONTR.CCAT in ('P','C')
                     and  MAIN_CONTR.PCAT='C'
                     and  MAIN_CONTR.IS_READY='Y'   -- account approved
                     and  MAIN_CONTR.CONTR_STATUS=51;  --account ok
                     
                                      EXCEPTION
                                      WHEN no_data_found THEN
                                      --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Карта не найден');
                                      o_errm := 1042;
                                      rollback;
                                      return 0;
                                      WHEN too_many_rows THEN
                                      --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по Карте');
                                      o_errm := 1043;
                                      rollback;
                                      return 0;
                                      END;
                   
                        DBMS_OUTPUT.put_line('Card find');
                        
             v_resp_appr := ows.mrk.MARK_FOR_REPLACE(r_card.id);
              -- v_resp_appr := OWS.MRK.MARK_CARD(r_card.id);
                     IF  substr(v_resp_appr,1,1) = 'I'                       --если без ошибок  
                         then o_rsp:= substr(v_resp_appr,3);
                         select ci.COMMENT_TEXT  into  v_comment_text from OWS.CARD_INFO ci where ci.ACNT_CONTRACT__OID=v_card_id and ci.STATUS='I' ;   
                               if v_comment_text='' then 
                                 update  OWS.CARD_INFO
                                 set                      ORDER_N=i_order_num, 
                                                          ORDER_FROM=i_order_dep,  
                                                          ORDER_TO=i_delivery_dep  ,
                                                          PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                          EVENT=r_prodevent.EVENT,
                                                          PRODUCTION_EVENT=r_prodevent.CODE,
                                                          CARD_EXPIRE=i_card_expire,
                                                          COMMENT_TEXT=i_spf
                                 where ACNT_CONTRACT__OID=r_card.id and STATUS='I';
                              else  --если в comment texte  есть строка то добавляем к существующему тексту
                                 update  OWS.CARD_INFO
                                 set                      ORDER_N=i_order_num, 
                                                          ORDER_FROM=i_order_dep,  
                                                          ORDER_TO=i_delivery_dep  ,
                                                          PRODUCTION_TYPE=r_prodevent.PRODUCTION_TYPE,
                                                          EVENT=r_prodevent.EVENT,
                                                          PRODUCTION_EVENT=r_prodevent.CODE,
                                                          CARD_EXPIRE=i_card_expire,
                                                          COMMENT_TEXT=i_spf||v_comment_text
                                 where ACNT_CONTRACT__OID=r_card.id and STATUS='I';
                              end if;   
                         update OWS.ACNT_CONTRACT
                         set                     CARD_EXPIRE=i_card_expire,  ADD_INFO_01=i_rel_type
                         where id=r_card.id;
                                                                               /* Ищем карту для выхода*/
                                           BEGIN
                                           SELECT  (substr(acnt.CONTRACT_NUMBER,1,6) ||'******' ||substr(acnt.CONTRACT_NUMBER,13,4)) Contract_number INTO p_card_number
                                           FROM ows.acnt_contract acnt 
                                           WHERE acnt.amnd_state = 'A' AND
                                                 acnt.con_cat = 'C' AND
                                                 acnt.rbs_number =i_rbs_number;
                                                                 EXCEPTION
                                                                 WHEN no_data_found THEN
                                                                 --ows.sy_process.process_message(messagetype => 'E', messagetext => 'выпушенная карта не найден');
                                                                 o_errm := 1044;
                                                                 rollback;
                                                                 return 0;
                                                                 WHEN too_many_rows THEN
                                                                 --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Слишком много записей найдено по выпушеннои карте');
                                                                 o_errm := 1045;
                                                                 rollback;
                                                                 return 0;
                                                                 END;
                         commit;
                         return 1;
                     ELSE                                                    --  ошибка , завершить
                         o_rsp:= substr(v_resp_appr,3);
                         rollback;
                         return 0;
                     END IF;
             
                        DBMS_OUTPUT.put_line(   'Card Mark');
             
           END;
    End if;    

                    EXCEPTION -- :)))))))   Тотальная ошибка
                    WHEN others THEN
                    -- ows.sy_process.process_message(messagetype => 'E', messagetext => 'Общая ошибка');
                    o_errm := 1046;  
                    o_rsp := SQLERRM;
                    rollback;
                    return 0;
                    RETURN 0;
            
                  END;


function get_errm return varchar is
begin
return o_errm;
end;

function get_rsp return varchar is
begin
return o_rsp;
end; 
function atm_monitor(i_term__id    in OWS.DEVICE_REC.TERMINAL_ID%type ,
 p_status out varchar2,
 p_operations out varchar2
 ) return number  is
     r_terminal  OWS.DEVICE_REC%ROWTYPE;
     r_crnt_opera  OWS.OPERATIONS.NAME%type;
     v_rsp varchar2(4000);
begin
    /* Ищем терминал*/
     BEGIN
         SELECT device.*
         INTO r_terminal
         FROM  OWS.DEVICE_REC DEVICE
         WHERE device.amnd_state = 'A' AND
               DEVICE.TERM_CAT= 'A'    AND
               DEVICE.TERMINAL_ID= i_term__id ;
         if     r_terminal.current_operation is null    then   r_crnt_opera:='';
         elsif r_terminal.current_operation is not null then
          SELECT distinct OPERA.NAME 
          INTO   r_crnt_opera
          FROM   OWS.OPERATIONS  OPERA
          WHERE  OPERA.AMND_STATE='A' and 
                 OPERA.ID=r_terminal.current_operation;
         end if;   
                       
               DBMS_OUTPUT.put_line(   'ATM found');
                    EXCEPTION
                    WHEN no_data_found THEN
                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Банкомат ненайден');
                    o_errm := 1022;
                    DBMS_OUTPUT.put_line(   'ATM not found');
                    rollback;
                    return 0;
                    WHEN too_many_rows THEN
                    --ows.sy_process.process_message(messagetype => 'E', messagetext => 'слишком много записеи наийдено по банкомату');
                    o_errm := 1023;
                    DBMS_OUTPUT.put_line(   'more  info about ATM ');
                    rollback;
                    return 0;
                    END;
     
     IF  r_terminal.IS_ONLINE='Y'  THEN
          BEGIN
                  DBMS_OUTPUT.put_line(   'IS ONLINE');
              IF r_terminal.STATUS in ('0','1') THEN  -- 0- OK, 1 - Information
                  DBMS_OUTPUT.put_line(   'OK');
                  if r_terminal.STATUS='0' then p_status:='OK';
                  elsif (r_terminal.STATUS='1') then p_status:='Information';
                  end if;
                  p_operations:=r_crnt_opera;
                   return 1;
              ELSE                   -- 2-Warning, 3-Error, 4- Not Config,5 - Fatal-Error 
                  DBMS_OUTPUT.put_line(   'NOT');
               
                 if  r_terminal.STATUS='2'  then  p_status:='Warning';
                 elsif r_terminal.STATUS='3'  then p_status:='Error';
                 elsif r_terminal.STATUS='4' then p_status:='Not Configured';
                 else p_status:='Fatal-Error';
                 end if;            
                 p_operations:=r_crnt_opera;
                rollback;
                 RETURN 0;
              END IF;
          END;
     ELSE --is_online='N'  '
                  DBMS_OUTPUT.put_line(   'IS NOT ONLINE');
         rollback;
         return 0;
     END IF;
     
        EXCEPTION
        WHEN others THEN
        o_errm := 1024;
        o_rsp := SQLERRM;
        return 0;   
end;



function test2(i_rbs_number     in varchar2 ) return number  is
  v_officer number;
     r_contract ows.acnt_contract%ROWTYPE;
     v_rsp varchar2(4000);
begin
  select id into v_officer from ows.officer where user_id = 'ABIS_USER' and amnd_state='A';
    o_errm := null;
    o_rsp := null;

     IF ows.stnd.localdate IS NULL THEN
     ows.stnd.start_session(newofficerid => v_officer
     ,computername => SYS_CONTEXT('USERENV', 'HOST')
     ,appname => 'Our Application'
     ,appversion => '0.1 Beta');
     END IF;

    /* Ищем контракт*/
     BEGIN
         SELECT acnt.*
           INTO r_contract
         FROM ows.acnt_contract acnt
         WHERE acnt.amnd_state = 'A' AND
             acnt.con_cat = 'C'
              AND
             acnt.rbs_number = i_rbs_number ;
     
         EXCEPTION
         WHEN no_data_found THEN
         o_errm := 1006;
         return 0;
         WHEN too_many_rows THEN
         o_errm := 1007;
         return 0;
     END;

     
     v_rsp := ows.mrk.MARK_FOR_REPLACE (r_contract.id);
     
     IF substr(v_rsp,1,1) = 'I' 
       then o_rsp:= substr(v_rsp,3);
           return 1;
     ELSE
       o_rsp:= substr(v_rsp,3);
      return 0;
     END IF;
     
      EXCEPTION
       WHEN others THEN
        o_errm := 1009;
        o_rsp := SQLERRM;
        return 0;   
end;

 PROCEDURE  stop_list( 
 i_card_id  in ows.acnt_contract.ID%type
-- i_evnt_id  in ows.event_type.ID%type,
--i_evnt_code in ows.event_type.CODE%type
  )  is
     s_officer number;
     r_card  OWS.ACNT_CONTRACT%ROWTYPE;
      r_status  OWS.CONTR_STATUS%ROWTYPE;
      v_req_group varchar2(4000);
      v_channel varchar2(2000); 
       v_status varchar2(2000); 
      v_exp_date  date; 
      v_yy number;
      v_mm number;
      processlogid   INTEGER;
      params         VARCHAR2 (32);
         
 begin
       processlogid :=
         ows.stnd.process_start ('Exception Request List', params, 'N');
         ows.stnd.process_message ('I',
                                   'Local Date: '
                                || TO_CHAR (sysdate, 'dd.mm.yyyy')
                               );
        select id into s_officer from ows.officer where user_id = 'ABIS_USER' and amnd_state='A';
         IF ows.stnd.localdate IS NULL THEN
            ows.stnd.start_session(newofficerid => s_officer
           ,computername => SYS_CONTEXT('USERENV', 'HOST')
           ,appname => 'Our Application'
           ,appversion => '0.1 Beta');
         END IF;
         
  DBMS_OUTPUT.put_line(   'Officer ');
      
    BEGIN 
      SELECT card.*
      INTO   r_card
      FROM   ows.ACNT_CONTRACT card
      WHERE  card.AMND_STATE='A'  and 
         card.CON_CAT='C'  and 
         card.id=i_card_id;
       
               DBMS_OUTPUT.put_line(   'CARD found');
                    EXCEPTION
                    WHEN no_data_found THEN
                    DBMS_OUTPUT.put_line(   'CARD not found');
                    rollback;
                    WHEN too_many_rows THEN
                    DBMS_OUTPUT.put_line(   'more  info about CARD ');
                    rollback;
                    END;
       BEGIN 
      SELECT status.*
      INTO   r_status
      FROM    ows.CONTR_STATUS status
      WHERE 
         r_card.contr_status=status.id  and 
         status.amnd_state='A';
               DBMS_OUTPUT.put_line(   'status found');
                    EXCEPTION
                    WHEN no_data_found THEN
                    DBMS_OUTPUT.put_line(   'status not found');
                    rollback;
                    WHEN too_many_rows THEN
                    DBMS_OUTPUT.put_line(   'more  info about Status ');
                    rollback;
                    END;
                    
               IF r_card.CHANNEL='v'  then    
                  v_req_group:='VSTOP';
                  v_channel:='V';  
                  v_status:=r_status.code;
               ELSIF r_card.Channel='e'  then 
                     v_req_group:='MSTOP';
                     v_channel:='E'; 
                                 /* Подбор статусов по мастеркарду */
                               CASE r_status.code
                               WHEN '41' THEN   --Pick up L 41
                               v_status:='L';   --Lost
                               WHEN '43' THEN   --Pick up S 43
                               v_status :='S';  --Stolen
                               WHEN '07' THEN   --Pick up 07    Pick up 04
                               v_status:= 'O';  --Other(pickup)
                               WHEN '04' THEN   -- Pick up 04
                               v_status:= 'O';  --Other(pickup)
                               /*WHEN '' THEN
                               v_status:= 'P';
                               WHEN '' THEN
                               v_status:= 'U';
                               WHEN '' THEN
                               v_status:= 'X';
                               WHEN '' THEN
                               v_status:= 'F';
                               WHEN '' THEN
                               v_status:= 'C';*/
                               ELSE
                               --ows.sy_process.process_message(messagetype => 'E', messagetext => 'Неизвестный код валюты');
                               DBMS_OUTPUT.put_line(   'Incorrect card_expire');
                               rollback;
                               END CASE;
               END IF;
               
               IF r_card.CARD_EXPIRE is not null then 
               begin 
                   v_yy:=to_number(substr(r_card.CARD_EXPIRE,1,2));
                   v_mm:=to_number(substr(r_card.CARD_EXPIRE,3,2));
                   IF v_mm=12  then 
                      v_exp_date:=to_date('01.01.'||(v_yy+1));  
                   ELSE 
                      v_exp_date:=to_date('01.'||(v_mm+1)||'.'||v_yy);                 
                   END IF;
               end;  
               ELSE
                         DBMS_OUTPUT.put_line(   'Incorrect card_expire');
                    rollback;
               END IF;   
                              
 DBMS_OUTPUT.put_line(   'Begin...create ') ; 
 
             BEGIN       
                insert into ows.remote_file_req( 
                                          AMND_OFFICER, 
                                          CHANNEL,
                                         -- REG_NUMBER, approve
                                          --FILE_CODE,  approve
                                          AREA,
                                          --MEMBER_ID,
                                          CARD_NUMBER,
                                          CARD_EXPIRY,    
                                          CARD_SEQ_NUM,
                                          ACTION_TYPE,
                                          REQUEST_GROUP,
                                          REQUEST_CODE,
                                          --POSTING_DATE,
                                          EXPIRY_DATE,
                                          COMMENT_TEXT
                                          )          
                 values(  s_officer,
                          v_channel,                   
                          --'E2',         --File Code  approve
                          '0',         --AREA                  
                           r_card.contract_number, --CARD NUMBER
                           r_card.CARD_EXPIRE,
                           '1',        --card seq number 
                           'A',       -- 'Add'   action type
                          v_req_group,--Request group
                             v_status  ,     --request code
                          v_exp_date,  --expire date  
                         r_status.NAME  ---COMMENT_TEXT
                                );
                END; 
DBMS_OUTPUT.put_line(  'Created ');
         COMMIT;
       ows.stnd.process_end;
        EXCEPTION
        WHEN OTHERS
        THEN
      DBMS_OUTPUT.put_line (SQLCODE || ': ' || SUBSTR (SQLERRM, 1, 100));
         ows.stnd.process_end;
end;
 function ins_card
(
 n_num     in     number
     ) return number is
fr number;
begin
 
return 0;
end;

END Almas; 
/

