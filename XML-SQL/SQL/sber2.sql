функция всегда возвращает одно значение и используется в запросах

процедура может возвращать несколько значении и неиспользутся в запросах

select * from sys.user$ where name='SB_GATE'

**************************************************
-- Grant/Revoke object privileges 
grant select on CONTRACT_REGISTER to OWS;
grant select on CONTRACT_REGISTER to OWSROWN;
  -- Grant/Revoke object privileges 
grant select, insert, update, delete on TEMP_CONTR to OWSROWN;


*********************************************
Относительно данной транзакции.
Отказ с кодом 05 был получен от банка эмитента
В поле 44.1 значение =  5 Issuer response

Можете другие примеры выслать?


**************************************************

SELECT grantee "Кому", granted_role "Что", NULL "На что"
FROM Dba_Role_Privs
WHERE grantee='SB_GATE'
UNION ALL 
SELECT grantee, PRIVILEGE, table_name
FROM Dba_Tab_Privs
WHERE grantee='SB_GATE'
UNION ALL 
SELECT grantee, PRIVILEGE, NULL
FROM dba_sys_Privs
WHERE grantee='SB_GATE'

select 
REGEXP_SUBSTR('Rd','[а-з]')

select REGEXP_SUBSTR(ac.tr_company,'[0-9]{9}') from ( select 'алмас' f  from dual ) s where s.f like '%алма%'

select replace(replace(to_char(trunc(24585.00,2),'9999999999.99'),' ','0'),'.','') from dual

select regexp_replace('208010100000','.','X', 5, 1) as res from dual
union all
select regexp_replace('208010100000','.','X', 2, 1) as res from dual;

select REGEXP_SUBSTR('Rd','[а-з]') from dual

spac.PACK_IS_USED(id)='Y'

select ascii('
') from dual

call util.user_unlock('U06929','Qwerty!111')

create public synonym get_p2p_info for sberbank_cust.get_p2p_info;

create public synonym t2 for scott.t22;

данные по таблице 

select * from user_constraints where table_name='CONTR_TYPE';

select * from user_cons_columns where table_name='CONTR_TYPE';

select * from user_indexes where table_name='CONTR_TYPE';


select * from user_ind_columns where table_name='CONTR_TYPE';

select * from v$parameter p where p.name = 'java_jit_enabled';

select to_char(to_number(substr('0000000200013',1,length('0000000200013')-2))||'.'||substr('0000000200013',-2)) from dual

 select (to_date('05102016 12:05','ddmmyyyy hh24:mi')-to_date('05102016 12:00','ddmmyyyy hh24:mi'))*86400 from dual

ows.glob.MASK_STR(d.target_number,'6*4') card_num,

select ows.CPST.ON_US_CHANNEL(ChannelCode => 'B') from dual 

 select replace(replace(to_char(trunc(24585.00,2),'9999999999.99'),' ','0'),'.','') from dual

 select count(*)/1440  from ows.doc d 
where d.amnd_date>to_date('01102016','ddmmyyyy')
and d.trans_date>=to_date('04102016','ddmmyyyy')
and d.trans_date<to_date('05102016','ddmmyyyy')
and d.is_authorization in ('Y','P','Z')

select bt.country,bt.channel 
from ows.bin_table  bt
where bt.amnd_state='A'
and rpad(bt.end_bin,decode(bt.pan_length,0,length(bt.end_bin),bt.pan_length),'9')>='4263451863764808'
and rpad(bt.start_bin,decode(bt.pan_length,0,length(bt.start_bin),bt.pan_length),'0') <='4263451863764808'


select sum((cl110.rec_date-cl100.rec_date)*86400)/count(*)
from ows.coms_log cl100, ows.coms_log cl110 
where cl100.rec_date>=to_date('04102016','ddmmyyyy')
and cl100.rec_date<to_date('05102016','ddmmyyyy')
and cl100.mtid='0100'
and cl100.int_key=cl110.int_key
and cl110.mtid='0110'

select sum((cl110.rec_date-cl100.rec_date)*86400)/count(*)
from ows.coms_log cl100, ows.coms_log cl110 
where cl100.rec_date>=to_date('11082017','ddmmyyyy')
and cl100.rec_date<to_date('12082017','ddmmyyyy')
and cl100.mtid='0100'
and cl100.int_key=cl110.int_key
and cl110.mtid='0110'

 select count(*)/(86400*30)
from ows.coms_log cl100
where cl100.rec_date>=to_date('01072017','ddmmyyyy')
and cl100.rec_date<to_date('01082017','ddmmyyyy')
and cl100.mtid in ('0100','0110','0400','0410','0800','0810')




select ows.rpr.GET_ACC_BAL(acc.id,to_date('29042016','ddmmyyyy')) 
from ows.account acc , ows.acnt_contract ac
where ac.contract_number='KZ49914CP39879180682'
and ac.amnd_state='A'
and ac.id=acc.acnt_contract__oid
and acc.code='P'



alter system kill session '989,20641' immediate

create public synonym trans_ptp for sberbank_cust.trans_ptp;

select * from NLS_DATABASE_PARAMETERS

select degree from dba_tables


SELECT host, lower_port, upper_port, acl FROM dba_network_acls ;

select extract(YEAR FROM TO_DATE('09032017')) FROM DUAL


select --+rule
       s.INST_ID, s.SID, s.SERIAL#, s.USERNAME, s.STATUS, s.MACHINE 
  from gv$lock l, gv$session s 
 where l.INST_ID=s.INST_ID
   and l.TYPE='TO'
   and l.SID=s.SID
   and l.id1 in (select o.object_id from dba_objects o 
                  where o.object_name = Upper('temp_contr'))


Параметры 
Таблица 108-6 параметров строки Функция 
Параметр Описание 
opt Указывает, что возвращается строка выглядит так: 
• 'U', 'U' - результат прописные буквы, 
• 'L', 'L' - результат в строчные буквы 
• 'А', 'A' - результат в смешанные буквы, дело 
• 'X', 'X' - результат в верхний регистр букв и цифр 
• 'Р', 'P' - результат любых печатных символов. 
В противном случае возвращается строка в заглавных букв альфа. 
len - Длина возвращаемой строки 

Возвращаемые значения 
Строка varchar2

Примеры 
    select DBMS_RANDOM.STRING('u',  4)  from dual;
-- NXBM    
    select DBMS_RANDOM.STRING('i',  5)  from dual;
-- TTULB    
    select DBMS_RANDOM.STRING('a',  6)  from dual;
-- drpGPp    
    select DBMS_RANDOM.STRING('x',  7)  from dual;
-- RXP5CGQ    
    select DBMS_RANDOM.STRING('p',  7)  from dual;
--  (>Mf$h@



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Select * from dba_tab_privs where grantee=<user_or_role> - просмотр всех объектных привилегий 

Select * from dba_col_privs where grantee=<user_or_role> - просмотр всех привилегий на столбцы 

select * from dba_sys_privs where grantee=<user_or_role> - просмотр всех системных привилегий 

select * from dba_role_privs where grantee=<user_or_role> - просмотр системных привилегий, назначенных польователям или ролям 

select * from role_role_privs where gantee=<user_or_role> - просмотр ролей, назначенных ролям или пользователям 

select * from role_sys_privs where gantee=<user_or_role> - просмотр системных привилегий, назначенных ролям 

select * from role_tab_privs where gantee=<user_or_role> - просмотр привилегий на таблицы, предоставленные ролям 

++++++++++++++++++++++++trans type+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select * from ows.mess_dict
  where 
/*  object_type = 'Transaction' and object_name = 'Transaction'
    and*/
     amnd_state = 'A'
    and message_label in ('IDT:IQBACA','IQBACA');

Select * from ows.dict where code in ('IDT:T8BACA','T8BACA');


select * from ows.mess_dict
  where object_type = 'Transaction' and object_name = 'Transaction'
    and amnd_state = 'A'
    and upper(message_label) like '%IQBACA%'

Select * from ows.dict where upper(code) like '%IQBACA%'

++++++++++++++++++++++++++++++++++++++++++++++НБРК больше 10000 долларов переводы/Безналичная/ снятие наличных наши карты в любых устройствах , кроме казахстана (АТМ исключение), валюта не тенге (исключение переводы)
select
 rownum l1,
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) l2, 
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) l3,
 cl.itn l4, 
 cl.add_info_01 l5, 
 case when d.trans_type in (5,50) 
       then 'Безналичная Оплата или Казино картой СБРК'
      when d.trans_type in (13,11) 
       then 'Снятие наличных картой СБРК'
       when  d.trans_type in (15,700)   
         then 'Перевод на карту СБРК' 
       when d.trans_type=33213 then 
         'Перевод с карты СБРК' 
    end l6,  
  d.trans_date  l8,
   (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) l9,  
   (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) l10, 
     trunc(d.trans_amount/1000,2) l11, 
     trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)/1000,2) l12 , 
     case when d.trans_type<>33213  
           then (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) 
          when d.trans_type=33213 
           then (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                  from ows.doc dd,ows.bin_table b 
                  where  dd.amnd_state='A' 
                  and dd.doc__summ__id=d.doc__summ__id 
                  and dd.trans_type=700 
                  and b.start_bin_4=substr(dd.target_number,1,6) 
                  and b.amnd_state='A' 
                  and b.country is not null 
                  and rownum=1) end l13,
     case when d.trans_type not in (33213,700,15)  
           then d.trans_details  
          when  d.trans_type=33213 
           then (select nvl((select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                           from ows.appl_info ai, ows.client cl 
                              where ai.add_info_02=dd.target_number
                              and ai.amnd_state='A'
                              and cl.id=ai.client__oid   
                              and cl.amnd_state='A'
                              and ai.add_info_type='P2P_CLIENT' and rownum=1),
                             nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'CPNA'),d.trans_details))
                             from ows.doc dd 
                             where  dd.amnd_state='A'  and dd.request_category='P' 
                             and dd.is_authorization='N'
                             and dd.doc__summ__id=d.doc__summ__id
                             and dd.trans_type=700)
           else   nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details) end l16                         
from ows.doc d, ows.acnt_contract ac , ows.client cl,(select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
where d.amnd_state='A'
and d.is_authorization='N' 
and d.posting_status='P' 
and d.service_class='T' 
and (d.trans_curr<>'398' or (d.trans_curr='398' and d.trans_type in (15,700,33213))) 
and (d.trans_country<>'KAZ' or (d.trans_country='KAZ' and (d.trans_type=13 or (d.trans_type=33213 and 
                               (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                from ows.doc dd,ows.bin_table b 
                                where  dd.amnd_state='A' 
                                and dd.doc__summ__id=d.doc__summ__id 
                                and dd.trans_type=700
                                and b.start_bin_4=substr(dd.target_number,1,6) 
                                and b.amnd_state='A' 
                                and b.country is not null 
                                and rownum=1)<>'KAZ'))))
and d.amnd_date>lc.date_from-5
and d.trans_date>=lc.date_from
and d.trans_date<=lc.date_to
and d.target_channel in ('e','v','h') 
and d.trans_type in (5,50,13,11,15,700,33213) 
and ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)>10000 
and ac.amnd_state='A'
and ac.id=d.target_contract
and cl.amnd_state='A'
and ac.client__id=cl.id
order by 6
255639
+++++++++++++++++++++++++++++++++++++++++++++++отчет по автоматическому перевыпуску   Дебетовых карт ++++++++++++++++++++++++++++++++++
select 
nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio, 
cl.add_info_01 iin, 
ac.contract_number nomer_scheta,
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='A' and cs.id=ac.contr_status ) status_Scheta,
ac.date_open,
substr(ca.contract_number,1,6)||'******'||substr(ca.contract_number,13,4) nomer_karty,
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='C' and cs.id=ca.contr_status ) status_Karty,
(select ct.name from ows.contr_subtype ct where ct.id=ca.contr_subtype__id and ct.con_cat='C' ) tip_plastika,
ca.card_expire,
(select br.name from ows.branch br where br.amnd_state='A' and cl.branch=br.code ) filial
from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca,(select to_date(l.date_from) Date_from from ows.v_local_constants l) lc
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.pcat='C'
and ac.ccat='P'
and ac.client__id=cl.id
and cl.amnd_state='A'
and ca.acnt_contract__oid=ac.id
and ca.amnd_state='A'
and ca.con_cat='C'
and ca.card_expire=to_char(lc.date_from,'yymm')
and ca.contr_subtype__id in (33413,33414,33415,36127,36128,36136,33454,36287,35704,35787,
35927,36507,36512,36516,32892,35103,35844,36447,36471,36703,36787,36827,36890,37110,37111,34302,36487)
and to_date(ows.rpr.GET_TAG_VALUE(ca.ext_data,'ACTIVITY_DATE'),'yyyy-mm-dd')>=add_months(last_day(lc.date_from)+1,-2)
and ca.contr_status in (98,14)
and ac.acc_scheme__id in (select acs.id from ows.acc_scheme acs where upper(acs.scheme_name) not like 'CR%'
and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724')

++++++++++++++++++++++++++++++++++++++++++++++++поиск подозрительных операции где произошла смена пакета , но сумма зависла ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select * from (
select cr.doc__id ,
(select count(*) from ows.account acc, 
ows.acnt_contract ac, 
ows.item ie, ows.entry et
where acc.acnt_contract__oid=ac.id
and ac.con_cat='A'  and ac.amnd_state='A'
and ie.account__oid=acc.id
and et.item__id=ie.id
and et.service_class='M'
and cr.doc__id=et.doc_id
and cr.acnt_contract__oid=ac.id) kolvo
from ows.CREDIT_HISTORY cr
where 
 cr.CREDIT_STATUS = 'M'
and cr.closed>=to_date('15102015','ddmmyyyy')
and cr.service_class='M'
and exists (select * from ows.doc d where d.id=cr.doc__id and d.trans_type=377 and d.amnd_date>=to_date('15102015','ddmmyyyy'))
) s
where s.kolvo=0

-------------решение через doc_entry
select 
c.doc__id,
(select count(*) from ows.DOC_ENTRY e where e.DOC__OID=c.doc__id) kolvo
from ows.CREDIT_HISTORY c
where c.CREDIT_STATUS = 'M'
and c.closed>=to_date('15102015','ddmmyyyy')
and c.service_class='M'
and c.id=42798799
and exists (select * from ows.doc d where d.id=c.doc__id and d.trans_type=377)


++++++++++++++++++++++++++++++++++поиск записей в td_auth_sch  по транзакции по OTP Cash+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 select * from ows.td_auth_sch 
where auth_type=1169 
and  id>5358300
and (date_from between to_date('06.04.2016  12:20','DD.MM.YYYY HH24:MI') and to_date('07.04.2016 12:25','DD.MM.YYYY HH24:MI'))
and acnt_contract__id in
  (select target_contract from ows.doc 
   where source_code='01000K' 
      and request_category='Q' 
      and (trans_date between to_date('06.04.2016  12:20','DD.MM.YYYY HH24:MI') and to_date('07.04.2016 12:25','DD.MM.YYYY HH24:MI'))
      and doc.id>234000000
      and doc.amnd_date>to_date('27032016','ddmmyyyy')
      and trans_amount=10000
      and trans_curr=398
      and return_code=0)

  ++++++++++++++++++++++++++++++++++++++Дублирование PIN CHANGE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  select mp.name pare,mp.is_ready main_ready, cp.name chil,cp.is_ready child_ready, ap.default_is_active,ap.is_ready dop_ready,
  cp2.name chil,cp2.is_ready child_ready, ap2.default_is_active,ap2.is_ready dop_ready,
 ap.* 
from ows.serv_pack mp,
ows.add_pack ap,
ows.serv_pack cp,
ows.add_pack ap2,
ows.serv_pack cp2 
where ap.amnd_state='A'  
and  ap.name='ELEC PBal_St APack'--upper(ap.name) like '%CASH BY CODE%'
and cp.amnd_state='A'
and mp.amnd_state='A'
and ap.serv_pack__id=cp.id
and ap.serv_pack__oid=mp.id
and ap2.amnd_state='A'
and cp2.amnd_state='A'
and ap2.name='ELEC PIN Change' --2 pack
and mp.id=ap2.serv_pack__oid
and cp2.id=ap2.serv_pack__id
+++++++++++++++++++++++++++++++++++++отчет НБРК по всем операциям за период
select 
rownum 1,
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 2, -- фио полностью или коротки 
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) l1, --резиденство
 cl.itn l2, -- рнн
 cl.add_info_01 l3, -- иин
 case when d.trans_type in (5,50) 
       then 'Оплата услуг'
      when d.trans_type in (13,11)
       then 'Снятие наличных'
      when d.trans_type in (33213,700,35699,182) 
       then 'Переводы'
      when d.trans_type in (39473,15) 
       then 'Зачисления' 
      when d.trans_type in (39476) 
       then 'Списание'  
      when d.source_channel='B' 
       then case when (select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type)='1' 
                  then 'Зачисления'  
                 else 'Списание' end end l4,  --признак операции 
 (select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) l5, --тип транзакции
  d.trans_date l6, -- дата транзакции 
  case when ac.con_cat='A' 
        then ac.contract_number 
       else (select aa.contract_number from ows.acnt_contract aa where aa.id=ac.acnt_contract__oid) end l7,-- номер контракта
  trunc(d.trans_amount/1000,2) l8, -- сумма в валюте тыс единиц
  (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr), --валюта
  trunc((select mt.local_amount/(select f.fx_middle from ows.fx_rate f where f.f_i=724 and f.seqv_n=mt.fx_seqv_n and f.code='840') 
           from ows.m_transaction mt 
           where mt.doc__oid=d.id and mt.service_class='T' and mt.REQUEST_CAT='P'),2) l9, --advice транзакция  в долларах  по среднему курсу
  case when d.trans_type not in (33213,700) --  СТРАНА операции все операции кроме ПЕРЕВОДОВ
         then  (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) 
       when d.trans_type in (33213) -- СТРАНА по ch debit
         then  (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                  from ows.doc dd,ows.bin_table b 
                  where  dd.amnd_state='A' 
                  and dd.doc__summ__id=d.doc__summ__id 
                  and dd.trans_type=700 
                  and b.start_bin_4=substr(dd.target_number,1,6) 
                  and b.amnd_state='A'        
                  and b.country is not null 
                  and rownum=1)--  СТРАНА вытаскиваем страну по бину  CH PAYMENT  и БИНа
        else case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h')
                    then 'Kazakstan' --СТРАНА если канал CH Debit сберовскии то Казахстан
                  else (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) end  end l10, --СТРАНА иначе вытаскиваем старну из транзакции 
  case when d.trans_type in (33213) and (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=700 ) in ('e','v','h') 
        then  (select (select ctt.name from ows.client_type ctt where ctt.amnd_state='A' and ctt.id=clt.clt) --  если карта отправитель наша вытаскиваем ТИП КЛИЕНТА
                 from ows.doc dd,ows.acnt_contract acc,ows.client clt 
                 where  dd.amnd_state='A' 
                   and dd.doc__summ__id=d.doc__summ__id 
                   and dd.trans_type=700 
                   and acc.amnd_state='A'
                   and acc.id=dd.target_contract
                   and clt.amnd_state='A'
                   and acc.client__id=clt.id)
       when d.trans_type in (700) and  (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h') 
        then   (select (select ctt.name from ows.client_type ctt where ctt.amnd_state='A' and ctt.id=clt.clt)-- если карта получатель наш то вытаскиваем ТИП КЛИЕНТА
                  from ows.doc dd,ows.acnt_contract acc,ows.client clt 
                  where  dd.amnd_state='A' 
                   and dd.doc__summ__id=d.doc__summ__id 
                   and dd.trans_type=33213 
                   and acc.amnd_state='A'
                   and acc.id=dd.target_contract
                   and clt.amnd_state='A'
                   and acc.client__id=clt.id)  end l11,
  null,  
  case when d.trans_type not in (33213,700)
        then d.trans_details   --НЕ ПЕРЕВОД деталь транзакции для операции 
       when d.trans_type in (700)  --ПЕРЕВОД по CH Payment 
        then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h')
                    then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                            from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                            where ac.id=dd.target_contract 
                            and cl.id=ac.client__id 
                            and dd.amnd_state='A' 
                            and dd.doc__summ__id=d.doc__summ__id 
                            and dd.trans_type=33213)  --если  отправитель наш Вытаскиваем ФИО нашего клиента
                    else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details) end  --Иначе если отправитель не наш клиент то вытаскиваем CPNA
       when d.trans_type in (33213) -- ПЕРЕВОД CH DEBIT
         then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=700 ) in ('e','v','h')
                     then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                             from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                             where ac.id=dd.target_contract 
                             and cl.id=ac.client__id 
                             and dd.amnd_state='A' 
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)-- если получатель наш Вытаскиваем  ФИО нашего клиента
                    else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details) end  end l12,   -- Иначе вытаскиваем все что есть в CPNA
  (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch), --филиал                                                                                                    
  (select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) l,--тип транзакции
   d.id,d.target_contract
from ows.doc d,ows.acnt_contract ac,ows.client cl
where d.amnd_state='A'
and ac.amnd_state='A'
and ac.id=d.target_contract
and cl.amnd_state='A'
and ac.client__id=cl.id
and d.target_contract not in (357554,357603,357541,357552,385019,357551,357566,383519,3699658,357640,2684648,357610,1879092,3719523,357553,357611)
and d.id in (select p.rnn from ows.pragmaclient p where p.inform='07042016f')

+++++++++++++++++++++++++++++++++++++p2p client++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) ,cl.country , ai.add_info_02
 from ows.appl_info ai, ows.client cl 
where ai.add_info_02='4276620022357275'
and ai.amnd_state='A'
and cl.id=ai.client__oid   
and cl.amnd_state='A'
and ai.add_info_type='P2P_CLIENT'
PayWave VISA Clas Priv Stnd KZT SBER TKB
+++++++++++++++++++++++++++++++++++отчеты для НБРК по списку сотрудников++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) FIO,
 cl.add_info_01 iin,
  cl.itn rnn, -- рнн
 (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=ac.curr) valuta_scheta,
 ac.date_open data_otkrytie_scheta,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',(ows.rpr.GET_ACC_BAL(acc.id,to_date('01032016','ddmmyyyy'))),to_date('01032016','ddmmyyyy'))) balance_KZT_01032016,
 acc.gl_number bal_schet1,
ac.contract_number kart_schet
from ows.acnt_contract ac , ows.client cl , ows.account acc, ows.pragmaclient pg
where ac.amnd_state='A'
and ac.con_cat='A'
and cl.amnd_state='A'
and cl.id=ac.client__id
and cl.add_info_01=pg.iin
and acc.acnt_contract__oid=ac.id
and acc.code in ('P','P2','P1')
and pg.inform='15042016NBRK'
group by cl.add_info_01
++++++++++++++++++++++++++++++++Отчет для мониторинга перевод сам себе , перевод через СБОЛ на иностранный банк и с Иностранного Банка ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
 rownum l1,
 case  when  d.trans_type=700    
         then 'Перевод на карту СБРК c Иностранного Банка' 
        when d.trans_type=33213 
         then 'Перевод с карты СБРК через СБОЛ в Иностранный Банк' 
    end l2,  
 Case when  d.trans_type=33213  
      then  (select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt and rownum=1) 
      else  'нет данных Иностранного банка'  end l3, 
 Case when  d.trans_type=33213  
      then  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
      else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details)  end  l5, 
 Case when  d.trans_type=33213 then cl.itn else 'нет данных Иностранного банка' end l6, 
 Case when  d.trans_type=33213  then cl.add_info_01 else 'нет данных Иностранного банка'  end l7, 
 (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) l8,
 Case when  d.trans_type=700  
      then  (select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt and rownum=1) 
      else  'нет данных Иностранного банка'  end l9,  
 Case when  d.trans_type=700 then nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
      else (select nvl((select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                           from ows.appl_info ai, ows.client cl 
                              where ai.add_info_02=dd.target_number
                              and ai.amnd_state='A'
                              and cl.id=ai.client__oid   
                              and cl.amnd_state='A'
                              and ai.add_info_type='P2P_CLIENT' and rownum=1),
                             nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'CPNA'),d.trans_details))
                             from ows.doc dd 
                             where  dd.amnd_state='A'  and dd.request_category='P' 
                             and dd.is_authorization='N'
                             and dd.doc__summ__id=d.doc__summ__id
                             and dd.trans_type=700)  end l11 ,   
 Case when  d.trans_type=700 then cl.itn else 'нет данных Иностранного банка'   end    l12, 
 Case when  d.trans_type=700  then cl.add_info_01 else 'нет данных Иностранного банка'  end l13,    
 Case when  d.trans_type=700 then 'Kazakhstan' 
      else (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                  from ows.doc dd,ows.bin_table b 
                  where  dd.amnd_state='A' 
                  and dd.doc__summ__id=d.doc__summ__id 
                  and dd.trans_type=700 
                  and b.start_bin_4=substr(dd.target_number,1,6) 
                  and b.amnd_state='A' 
                  and b.country is not n;ull 
                  and rownum=1) end  l14,                              
 d.trans_date  l15,   
   (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) l16,
     trunc(d.trans_amount/1000,2) l17        
from ows.doc d, ows.acnt_contract ac , ows.client cl,(select to_date(l.date_from) as Date_from, to_date(l.date_to) as date_to from ows.v_local_constants l) lc
where d.amnd_state='A'
and d.is_authorization='N' 
and d.posting_status='P' 
and d.service_class='T'  
and (d.trans_country<>'KAZ' or (d.trans_country='KAZ' and  d.trans_type=33213 and 
                               (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                from ows.doc dd,ows.bin_table b 
                                where  dd.amnd_state='A' 
                                and dd.doc__summ__id=d.doc__summ__id 
                                and dd.trans_type=700
                                and b.start_bin_4=substr(dd.target_number,1,6) 
                                and b.amnd_state='A' 
                                and b.country is not null 
                                and rownum=1)<>'KAZ'))
and d.amnd_date>lc.date_from-5
and d.trans_date>=lc.date_from
and d.trans_date<=lc.date_to
and d.target_channel in ('e','v','h') 
and (d.trans_type=700 or (d.trans_type=33213 and d.source_channel='W')) 
and ac.amnd_state='A'
and ac.id=d.target_contract
and cl.amnd_state='A'
and ac.client__id=cl.id
4402576503292554

++++++++++++++++++++++поиск чужих клиентов по карте в таблице р2р клиент+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) ,cl.country , ai.add_info_02
 from ows.appl_info ai, ows.client cl 
where ai.add_info_02='4276620022357275'
and ai.amnd_state='A'
and cl.id=ai.client__oid   
and cl.amnd_state='A'
and ai.add_info_type='P2P_CLIENT'


++++++++++++++++++++++++трансграничные операции свыше 10000 баксов для НБРК+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 rownum l1,
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) l2, -- фио полностью или коротки 
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) l3, --резиденство
 cl.itn l4, -- рнн
 cl.add_info_01 l5, -- иин
 case when d.trans_type in (5,50) --ретеил казино 
       then 'Безналичная Оплата или Казино картой СБРК'
      when d.trans_type in (13,11) -- банкомат и касса
       then 'Снятие наличных картой СБРК'
       when  d.trans_type in (15,700)  --  перевод Credit CH Payment 
         then 'Перевод на карту СБРК' 
       when d.trans_type=33213 'Перевод с карты СБРК' --CH DEBIT
    end l6,  --признак операции 
 -- d.trans_date  l8,-- дата транзакции
   (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) l9, --филиал  
    (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) l10, --валюта  
     trunc(d.trans_amount/1000,2) l11, -- сумма в валюте тыс единиц
     trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)/1000,2) l12 , -- по курсу тысяси доллара 
     case when d.trans_type<>33213  -- если не от нас уходит деньги , то есть наша карта где то обслуживается или к нам переводит деньги 
           then (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) 
          when d.trans_type=33213 -- если перевод делает наша карта то смотрим куда идет перевод денег в бин 
           then (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                  from ows.doc dd,ows.bin_table b 
                  where  dd.amnd_state='A' 
                  and dd.doc__summ__id=d.doc__summ__id 
                  and dd.trans_type=700 
                  and b.start_bin_4=substr(dd.target_number,1,6) 
                  and b.amnd_state='A' 
                  and b.country is not null 
                  and rownum=1) l13,-- страна  назначения денег
     case when d.trans_type not in (33213,700,15)  --Если не перевод то можем только деталь транзакции вытащить
           then d.trans_details  
          when  d.trans_type=33213 -- если деньги от нас уходит то выводим данные с CPNA
           then (select nvl((select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                              from ows.appl_info ai, ows.client cl 
                              where ai.add_info_02=dd.target_number
                              and ai.amnd_state='A'
                              and cl.id=ai.client__oid   
                              and cl.amnd_state='A'
                              and ai.add_info_type='P2P_CLIENT' rownum=1),
                             nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'CPNA'),d.trans_details))
                             from ows.doc dd 
                             where  dd.amnd_state='A'  and dd.request_category='P' 
                             and dd.is_authorization='Y'
                             and dd.doc__summ__id=d.doc__summ__id
                             and dd.trans_type=700)
           else   nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details)  -- иначе если деньги к нам поступают то смотрим ФИО кто нам его отправил или Деталь                       
from ows.doc d, ows.acnt_contract ac , ows.client cl
where d.amnd_state='A'
and d.is_authorization='Y' --финик
and d.request_category='P' --advice
and d.posting_status='P' -- успешный
and d.service_class='T' --транзакции
and (d.trans_curr<>'398' or (d.trans_curr='398' and d.trans_type in (15,700,33213)) -- инвалюта или при переводах тенге
and (d.trans_country<>'KAZ' or (d.trans_type in (13,33213) and d.trans_country='KAZ'
                                and (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                from ows.doc dd,ows.bin_table b 
                                where  dd.amnd_state='A' 
                                and dd.doc__summ__id=d.doc__summ__id 
                                and dd.trans_type=700
                                and b.start_bin_4=substr(dd.target_number,1,6) 
                                and b.amnd_state='A' 
                                and b.country is not null 
                                and rownum=1)<>'KAZ' )) -- не казахстан или снятие нал в казахстане
and d.amnd_date>to_date('08042016','ddmmyyyy')
and d.trans_date>=to_date('10042016','ddmmyyyy')
and d.trans_date<to_date('18042016','ddmmyyyy')
and d.id>240805137
and d.target_channel in ('e','v','h') -- наш мастер виза китай
and d.trans_type in (5,50,13,11,15,700,33213) -- ретейл казино банкомат касса кредит  на карту с карты 
and ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)>10000 -- порог 10 000 баксов
and ac.amnd_state='A'
and ac.id=d.target_contract
and cl.amnd_state='A'
and ac.client__id=cl.id


++++++++++++++++++свыше 10000 баксов для НБРК добавлены 2 типа операции ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select
 rownum l0,
case  when ac.acnt_contract__oid is null and ac.con_cat='A' then ac.contract_number
      else (select co.contract_number from ows.acnt_contract co where co.amnd_state='A' and co.id=ac.acnt_contract__oid and co.con_cat='A') end contract,
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) l2, 
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) l3,
 cl.itn l4, 
 cl.add_info_01 l5, 
 case when d.trans_type in (5,50) 
       then 'Безналичная Оплата или Казино картой СБРК'
      when d.trans_type in (13,11) 
       then 'Снятие наличных картой СБРК'
       when  d.trans_type in (15,700)   
         then 'Перевод на карту СБРК' 
       when d.trans_type=33213 
         then  'Перевод с карты СБРК' 
       when d.trans_type=35323 then 'Списание Outgoing Transfer To Other INT Bank' 
       when d.trans_type=35636 then ' Пополнение Payment To Client from Other INT Bank'       
    end l6,  
  d.trans_date  l8,
   (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) l9,  
   (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) l10, 
     trunc(d.trans_amount/1000,2) l11, 
     trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)/1000,2) l12 , 
     case when d.trans_type<>33213  
           then (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) 
          when d.trans_type=33213 
           then (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                  from ows.doc dd,ows.bin_table b 
                  where  dd.amnd_state='A' 
                  and dd.doc__summ__id=d.doc__summ__id 
                  and dd.trans_type=700 
                  and b.start_bin_4=substr(dd.target_number,1,6) 
                  and b.amnd_state='A' 
                  and b.country is not null 
                  and rownum=1) end l13,
     case when d.trans_type not in (33213,700,15)  
           then d.trans_details  
          when  d.trans_type=33213 
           then (select nvl((select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                           from ows.appl_info ai, ows.client cl 
                              where ai.add_info_02=dd.target_number
                              and ai.amnd_state='A'
                              and cl.id=ai.client__oid   
                              and cl.amnd_state='A'
                              and ai.add_info_type='P2P_CLIENT' and rownum=1),
                             nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'CPNA'),d.trans_details))
                             from ows.doc dd 
                             where  dd.amnd_state='A'  and dd.request_category='P' 
                             and dd.is_authorization='N'
                             and dd.doc__summ__id=d.doc__summ__id
                             and dd.trans_type=700)
           when  d.trans_type in (700,15)  then nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'CPNA'),d.trans_details) end l16                         
from ows.doc d, ows.acnt_contract ac , ows.client cl --,(select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
where d.amnd_state='A'
and d.is_authorization='Y' 
and d.posting_status='P' 
and d.service_class='T' 
and (d.trans_curr<>'398' or (d.trans_curr='398' and d.trans_type in (15,700,33213))) 
and (d.trans_country<>'KAZ' or (d.trans_country='KAZ' and (d.trans_type in (13,35323,35636)or (d.trans_type=33213 and 
                               (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                from ows.doc dd,ows.bin_table b 
                                where  dd.amnd_state='A' 
                                and dd.doc__summ__id=d.doc__summ__id 
                                and dd.trans_type=700
                                and b.start_bin_4=substr(dd.target_number,1,6) 
                                and b.amnd_state='A' 
                                and b.country is not null 
                                and rownum=1)<>'KAZ')))
                             or (d.trans_country is null and d.trans_type in (35323,35636) )      )
and d.amnd_date>to_date('20042016','ddmmyyyy')--lc.date_from-5
and d.trans_date>=to_date('20042016','ddmmyyyy')--lc.date_from
and d.trans_date<=to_date('28042016','ddmmyyyy')--lc.date_to
and d.target_channel in ('e','v','h','O') 
and d.trans_type in (5,50,13,11,15,700,33213,35323,35636) 
and ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'840',d.trans_amount,d.trans_date)>10000 
and ac.amnd_state='A'
and ac.id=d.target_contract
and cl.amnd_state='A'
and ac.client__id=cl.id
and d.id>246300000

++++++++++++++++++++поиск не корректных пакетов где отключен снятие нала по заказу+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  select mp.name pare,mp.is_ready main_ready, cp.name chil,cp.is_ready child_ready, ap.default_is_active,ap.is_ready dop_ready,
 ap.* 
from ows.serv_pack mp,
ows.add_pack ap,
ows.serv_pack cp
where ap.amnd_state='A'  
and upper(ap.name) like '%CASH BY CODE%'
and cp.amnd_state='A'
and mp.amnd_state='A'
and ap.serv_pack__id=cp.id
and ap.serv_pack__oid=mp.id
and ap.default_is_active='N'

++++++++++++++++подключена ли услуга смс банкинг+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ua.start_date from ows.usage_action ua 
where  ua.posting_status in ('S','W','P')
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS%') 


+++++++++++++++++независимый блок+++++++++++++++++++++++++++++++++++++++++++++++++++++
declare   
  i varchar2(12000);
  a varchar2(255);
  appl_id integer;
begin 
  select doc into appl_id from v_local_constants;
  begin 
  i:=ows.appl.APPROVE_APPL(appl_id);
  exception when others then 
     begin 
       select APPL_COMMENT into a from ows.appl_acnt where id=appl_id;      
       update ows.v_local_constants lc set lc.BUF:=APPL_COMMENT;
     end;  
  end;  
  dbms_output.put_line(i);
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
r.did,
(select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) "Филиал",
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) "ФИО клиента",
  cl.add_info_01 "ИИН клиента",
  cl.company_nam "Организация",
  ac.contract_number "Номер КартСчет",
  ca.date_open "Дата Отк.Карты" ,
  ca.date_expire "Дата Зак.Карты",
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='C' and cs.id=ca.contr_status ) "Статус Карты",
(select ct.name from ows.contr_subtype ct where ct.id=ca.contr_subtype__id and ct.con_cat='C' and ct.amnd_state='A' ) "Вид Карты",
trunc(r.trans_amount,2) "Сумма Поступ.",
(select c.full_name from ows.currency c where c.amnd_state='A' and c.code=r.trans_curr) "Валюта Поступ.",
trunc(ows.fx.MIDDLE_RATE(null,'724',null,r.trans_curr,'398',r.trans_amount,r.trans_date) ,2) "Сумма Тенге",
r.trans_date "Дата Поступ.",
(select name from ows.trans_type tt where tt.amnd_state='A' and tt.id=r.trans_type) "Вид платежа",
r.trans_details "Деталь"
from
              (          
              select 
              d.id did,
              d.trans_amount,
              d.trans_curr,
              d.trans_date,
              d.trans_type,
              d.trans_details ,
              case when ac.con_cat='C' then  ac.acnt_contract__oid else ac.id end mn, 
              case when ac.con_cat='A' then max(ca.id) else ac.id end mid  
              from ows.doc d,  ows.acnt_contract ac ,ows.acnt_contract ca, ows.m_transaction mt, ows.client cl,
                   (select sp.id from ows.serv_pack sp where sp.amnd_state='A' and sp.con_cat='C' and upper(sp.name) like '% SAL%') b
              where 
              ac.amnd_state='A'
              and ac.con_cat in ('A','C')
              and ac.client__id=cl.id
              and cl.amnd_state='A'
              and cl.branch in ('TXB15','ODPTP','SRRPTP','SPF1PTP','TXB11')
              and ca.amnd_state='A'
              and ca.con_cat='C'
              and d.amnd_state='A'
              and d.is_authorization='N'
              and d.posting_status='P'
              and d.service_class='T'
              and d.target_number=ac.contract_number
              and ((ac.con_cat='C' and ac.id=ca.id and ca.serv_pack__id=b.id) or 
                  (ac.con_cat='A' and ac.id=ca.acnt_contract__oid and ca.serv_pack__id=b.id))
              and mt.doc__oid=d.id
              and mt.service_class='T'
              and mt.posting_status='P'
              and mt.direction='1'
              and d.amnd_date>=to_date('25102015','ddmmyyyy')
              and d.trans_date>=to_date('01112015','ddmmyyyy')
              and d.trans_date<to_date('01122015','ddmmyyyy')
              --and d.id=197785128
              and d.id>175801270
              group by d.id, ac.con_cat,ac.acnt_contract__oid,ac.id, d.trans_amount, d.trans_curr,d.trans_date, d.trans_type,d.trans_details 
               ) r,
               ows.acnt_contract ac , ows.acnt_contract ca,ows.client cl
where ac.amnd_state='A'  and ac.id=r.mn
and ca.amnd_state='A' and ca.id=r.mid
and cl.amnd_state='A'  and ac.client__id=cl.id
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Declare 
v_previd number; 
begin
ows.yclient(106915,'H',v_previd);
dbms_output.put_line('='||v_previd);
commit;
end;

++++++++++++все unknow операции+++наши карты в чужом устройстве++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select * from ows.doc d
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status<>'J'
and d.service_class='T'
and d.trans_type=5
and d.id>253586792
and d.amnd_date>=to_date('10052016','ddmmyyyy')
and d.trans_date>=to_date('10052016','ddmmyyyy')
AND D.trans_condition = 'NNK'
and d.target_channel in ('v','e','h')
and d.source_channel not in ('A','P','W','B','O')


++++++++++++++++++++++++++++++++++++++++++++скрипт для обновления +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
declare 
v_previd number; 
v_officer number;
pr_id  number;
v_count number := 0;
cursor cur is 
                select cl.id, cl.client_number , pg.rnn , cl.birth_date 
                    from ows.pragmaclient pg,ows.client cl 
                    where pg.inform='05052016PRIL5' 
                    and cl.amnd_state='A'
                    and cl.client_number=pg.clnumber
                    and substr(pg.rnn,5,2)<=12
                    and ((substr(pg.rnn,5,2)=01 and substr(pg.rnn,7,2)<=31) 
                    or  (substr(pg.rnn,5,2)=02 and substr(pg.rnn,7,2)<=29)
                    or  (substr(pg.rnn,5,2)=03 and substr(pg.rnn,7,2)<=31)
                    or  (substr(pg.rnn,5,2)=04 and substr(pg.rnn,7,2)<=30)
                    or  (substr(pg.rnn,5,2)=05 and substr(pg.rnn,7,2)<=31)
                    or  (substr(pg.rnn,5,2)=06 and substr(pg.rnn,7,2)<=30)
                    or  (substr(pg.rnn,5,2)=07 and substr(pg.rnn,7,2)<=31)
                    or  (substr(pg.rnn,5,2)=08 and substr(pg.rnn,7,2)<=31)
                    or  (substr(pg.rnn,5,2)=09 and substr(pg.rnn,7,2)<=30)
                    or  (substr(pg.rnn,5,2)=10 and substr(pg.rnn,7,2)<=31)
                    or  (substr(pg.rnn,5,2)=11 and substr(pg.rnn,7,2)<=30)
                    or  (substr(pg.rnn,5,2)=12 and substr(pg.rnn,7,2)<=31)) ;
begin
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
   
         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
         
    pr_id := OWS.STND.PROCESS_START('Обновление клиентской таблицы',null,'N');
      
    for rec in cur loop
      ows.yclient(rec.id,'H',v_previd);
      update ows.client cl set cl.birth_date=to_date(rec.rnn,'yyyymmdd') , cl.amnd_officer=v_officer  where id = rec.id; 
      v_count:=v_count+1;
            
             if  mod(v_count,100) = 0 then 
        OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client Number='||to_char(rec.client_number)||'  IIN='||to_char(rec.birth_date));
               commit;
             end if;  
       OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client Number='||to_char(rec.client_number)||'  IIN='||to_char(rec.birth_date));
     end loop;
       commit; 
     OWS.STND.PROCESS_END;
       EXCEPTION
          WHEN others THEN
              OWS.STND.PROCESS_MESSAGE ('E',substr(SQLERRM,1,250));
              OWS.STND.PROCESS_END;
end;

jaguar123

Date From - To City

KZ80914CP39881802325
++++++++++++++++++++++++авторизация++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select * from ows.auth_record ar 
where ar.ACNT_CONTRACT__OID=5961600
and ar.TRANS_DATE>=to_date('10032016','ddmmyyyy')

+++++++++++++++++++++++++++проверка на ограничения ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select mp.id, mp.name from ows.add_pack ap , ows.serv_pack mp, ows.serv_pack cp 
where ap.amnd_state='A'
and mp.amnd_state='A'
and cp.amnd_state='A'
and ap.serv_pack__id=cp.id
and ap.serv_pack__oid=mp.id
and cp.id in (select
ut.serv_pack__oid
 from ows.usage_templ ut 
where ut.amnd_state='A' and ut.serv_pack__oid is not null
and ut.doc_ret_code not in ('0','5','61'))

++++++++++++++++++++++++++++выписка по контракту комерса+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
with a as (
select td.doc__id did,
dev.contract_name dev_nam
from ows.device_rec dr,
     ows.acq_dev_cycle acc,
     ows.acq_cst_cycle acs,
     ows.trans_dispense td,
     ows.acnt_contract ac, 
     ows.acnt_contract dev
where 
td.acq_cst_cycle__oid=acs.id
and acs.acq_dev_cycle__oid=acc.id
and acc.device_rec__oid=dr.id and dr.term_cat='P'
and dev.id=dr.acnt_contract__oid
and dev.acnt_contract__oid=ac.id
and ac.client_type in (1900,1901)
and ac.contract_number='KZ86914CC39864382828'
and td.trans_date>=to_date('01122015','ddmmyyyy')
and td.trans_date<=to_date('07042016','ddmmyyyy')
)
select d.id,
d.posting_date "Дата зачис." ,
d.trans_date "Дата транз.",
substr(d.target_number,1,6)||'******'||substr(d.target_number,13,4) "Номер Карт.",
d.auth_code "Код автор.",
(select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=d.target_channel  ) "Тип",
d.source_number "Устройство",
 sum(mt.trans_amount)  "Сумма транз.",
sum(mt.s_fee_amount) "Комиссия",
 (sum(mt.trans_amount)-sum(mt.s_fee_amount)) "Итого",
a.dev_nam "Магазин",
case when d.request_category in ('Q','P') then 'Успешно'
     when d.request_category='R' then 'Возврат'
     when d.request_category='J' then 'Частичный возврат'
     when d.request_category='A' then 'Частичное опротестование/повторное уведомление'  end "Результат"   
from ows.doc d,ows.m_transaction mt,a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status<>'J'
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status<>'J'
and d.amnd_date>=to_date('26112015','ddmmyyyy')
and d.id>185215398
--and d.ret_ref_number in ('533601867094' ,'534201099832')
and d.trans_date>=to_date('01122015','ddmmyyyy')
and d.trans_date<=to_date('07042016','ddmmyyyy')
and d.id=a.did
group by d.id , d.posting_date, d.trans_date ,d.target_number,d.auth_code,d.target_channel,d.source_number,a.dev_nam,d.request_category
order by 3

with a as(
)
select a.   from a
union all
select a. sum from a
group by a.


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
null,
rownum,
tab.did,
tab.pdate,
tab.tdate,
tab.cardn,
tab.auth,
tab.dtype,
tab.device,
tab.summa,
tab.fee,
tab.itogo,
tab.magazine,
tab.rez,
tab.contr_num,
sum(tab.summa) over(partition by tab.contr_num,trunc(tab.pdate) ) PSumma,
sum(tab.summa) over(partition by tab.contr_num) CSumma,
tab.Date_from,
tab.date_to,
 sum(tab.fee) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_fee,
 sum(tab.itogo) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_itogo,
 sum(tab.fee) over(partition by tab.contr_num) CSumma_fee,
 sum(tab.itogo) over(partition by tab.contr_num) CSumma_itogo
from
(select d.id did,
d.posting_date pdate,
a.con_num contr_num,
d.trans_date tdate,
substr(d.target_number,1,6)||'******'||substr(d.target_number,13,4) cardn,
d.auth_code auth,
(select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=d.target_channel  ) dtype,
d.source_number device,
sum(mt.trans_amount)  summa,
sum(mt.s_fee_amount) fee,
(sum(mt.trans_amount)-sum(mt.s_fee_amount)) itogo,
a.dev_nam magazine,
case when d.request_category in ('Q','P') then 'Успешно'
     when d.request_category='R' then 'Возврат'
     when d.request_category='J' then 'Частичный возврат'
     when d.request_category='A' then 'Частичное опротестование/повторное уведомление'  end rez ,
 lc.Date_from, lc.date_to
from ows.doc d,ows.m_transaction mt,( select td.doc__id did,
                                      dev.contract_name dev_nam,
                                      ac.contract_number con_num
                                      from ows.device_rec dr,
                                       ows.acq_dev_cycle acc,
                                       ows.acq_cst_cycle acs,
                                       ows.trans_dispense td,
                                       ows.acnt_contract ac, 
                                       ows.acnt_contract dev,
                                       ows.client cl, 
                                      (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf, COMMAND_TEXT contract from ows.v_local_constants l) lc
                                where 
                                td.acq_cst_cycle__oid=acs.id
                                and acs.acq_dev_cycle__oid=acc.id
                                and acc.device_rec__oid=dr.id and dr.term_cat='P'
                                and dev.id=dr.acnt_contract__oid
                                and dev.acnt_contract__oid=ac.id
                                and ac.client__id=cl.id  and cl.amnd_state='A'
                                and ac.client_type in (1900,1901) 
                                and ((ac.contract_number=lc.contract and lc.contract is not null ) or (lc.contract is null and cl.short_name=lc.buf))
                                and cl.short_name is not null and ac.contract_number is not null
                                and td.trans_date>=lc.Date_from
                                and td.trans_date<=lc.date_to) a,
   (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status<>'J'
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status<>'J'
and d.amnd_date>=lc.Date_from-5
and d.trans_date>=lc.Date_from
and d.trans_date<=lc.date_to
and d.id=a.did
group by d.id , d.posting_date, a.con_num, d.trans_date ,d.target_number,d.auth_code,d.target_channel,d.source_number,a.dev_nam,d.request_category, lc.Date_from, lc.date_to
order by 3,2) tab

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    with a as (
      select distinct ct.code from ows.country ct where ct.amnd_state='A'
      and ct.code in 
      ('AND','ATG','BHS','BRB','BLZ','BRN','VUT','GTM','GRD','DJI','DOM','IDN','ESP','CYP','MAC','HKG','СОМ','CRI','MYS','LBR','LIE','MUS','PRT','MDV','MLT','MHL','MCO','MMR',
       'NRU','ANT','ABW','NGA','NUI','COK','PLW','PAN','WSM','SYC','VCT','KNA','LCA','AIA','BMU','VGB','GIB','CYM','MSR','TCA','IMY','GGY','JEY','SGS','SGS','IOT','VIR','GUM',
       'PRI','USA','TON','PHL','LKA','BHR','GUY','DMA','IRL','COL','LBN','LUX','MRT','MNP','MAR','ARE','SMR','SUR','TZA','TTO','FJI','FRA','PYF','GUF','MNE','JAM')
      )
      
select b.mesyac ,count(*) kolvo    
(select 
case when substr(d.trans_date,4,7)='01.15' then 'Январь 2015' 
     when substr(d.trans_date,4,7)='02.15' then 'Февраль 2015' 
     when substr(d.trans_date,4,7)='03.15' then 'Март 2015'
       when substr(d.trans_date,4,7)='04.15' then 'Апрель 2015' 
         when substr(d.trans_date,4,7)='05.15' then 'Май 2015' 
           when substr(d.trans_date,4,7)='06.15' then 'Июнь 2015' 
             when substr(d.trans_date,4,7)='07.15' then 'Июль 2015' 
               when substr(d.trans_date,4,7)='08.15' then 'Август 2015' 
                 when substr(d.trans_date,4,7)='09.15' then 'Сентябрь 2015' 
                   when substr(d.trans_date,4,7)='10.15' then 'Октябрь 2015' 
                     when substr(d.trans_date,4,7)='11.15' then 'Ноябрь 2015' 
                       when substr(d.trans_date,4,7)='12.15' then 'Декабрь 2015'
                        when substr(d.trans_date,4,7)='01.16' then 'Январь 2016'
                          when substr(d.trans_date,4,7)='02.16' then 'Февраль 2016'
                            when substr(d.trans_date,4,7)='03.16' then 'Март 2016'  end mesyac 
from ows.doc d
where d.amnd_state='A'
and d.is_authorization='N' 
and d.posting_status='P' 
and d.service_class='T' 
and d.amnd_date>to_date('01012015','ddmmyyyy')
and d.amnd_date<to_date('01042016','ddmmyyyy')
and d.target_channel in ('e','v','h') ) b
group by b.mesyac
order by 1

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
b.mesyac,
b.strana,
      count(*) kolvo,
      sum(b.summa_tg) summa_v_tg_K
from (
                with a as (
                select distinct  ct.code from ows.country ct where ct.amnd_state='A'
                and ct.code in 
                ('AND','ATG','BHS','BRB','BLZ','BRN','VUT','GTM','GRD','DJI','DOM','IDN','ESP','CYP','MAC','HKG','СОМ','CRI','MYS','LBR','LIE','MUS','PRT','MDV','MLT','MHL','MCO','MMR',
                 'NRU','ANT','ABW','NGA','NUI','COK','PLW','PAN','WSM','SYC','VCT','KNA','LCA','AIA','BMU','VGB','GIB','CYM','MSR','TCA','IMY','GGY','JEY','SGS','SGS','IOT','VIR','GUM',
                 'PRI','USA','TON','PHL','LKA','BHR','GUY','DMA','IRL','COL','LBN','LUX','MRT','MNP','MAR','ARE','SMR','SUR','TZA','TTO','FJI','FRA','PYF','GUF','MNE','JAM')
                )
select 
case when substr(d.trans_date,4,7)='01.15' then 'Январь 2015' 
     when substr(d.trans_date,4,7)='02.15' then 'Февраль 2015' 
     when substr(d.trans_date,4,7)='03.15' then 'Март 2015'
       when substr(d.trans_date,4,7)='04.15' then 'Апрель 2015' 
         when substr(d.trans_date,4,7)='05.15' then 'Май 2015' 
           when substr(d.trans_date,4,7)='06.15' then 'Июнь 2015' 
             when substr(d.trans_date,4,7)='07.15' then 'Июль 2015' 
               when substr(d.trans_date,4,7)='08.15' then 'Август 2015' 
                 when substr(d.trans_date,4,7)='09.15' then 'Сентябрь 2015' 
                   when substr(d.trans_date,4,7)='10.15' then 'Октябрь 2015' 
                     when substr(d.trans_date,4,7)='11.15' then 'Ноябрь 2015' 
                       when substr(d.trans_date,4,7)='12.15' then 'Декабрь 2015'
                        when substr(d.trans_date,4,7)='01.16' then 'Январь 2016'
                          when substr(d.trans_date,4,7)='02.16' then 'Февраль 2016'
                            when substr(d.trans_date,4,7)='03.16' then 'Март 2016'  end mesyac ,  
case when d.trans_country<>'KAZ' then (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=d.trans_country and rownum=1) 
   else (select (select cy.name from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                                            from ows.bin_table b 
                                                            where  b.start_bin_4=substr(d.target_number,1,6) 
                                                            and b.amnd_state='A' 
                                                            and b.country is not null 
                                                            and rownum=1)  end strana ,
trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'398',d.settl_amount,d.trans_date)) summa_tg
from ows.doc d,a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.service_class='T' 
and d.amnd_date>=to_date('01012015','ddmmyyyy')
and d.amnd_date<to_date('01042016','ddmmyyyy')
and d.trans_type=700
and (d.trans_country=a.code  or (d.trans_country='KAZ' and (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                                            from ows.bin_table b 
                                                            where  b.start_bin_4=substr(d.target_number,1,6) 
                                                            and b.amnd_state='A' 
                                                            and b.country is not null 
                                                            and rownum=1)=a.code ))
) b
group by b.strana,b.mesyac
order by 1,2

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

and upper(main_check_value)  like '%INSTANT%'

+++++++++++++++++++++++++++++++данные для аудита++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
(select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) "Филиал",
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) "ФИО клиента",
  cl.add_info_01 "ИИН клиента",
  cl.company_nam "Организация",
  case when ac.con_cat='C' then substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)  else ac.contract_number end  "Номер.Контр.",
  ac.date_open "Дата Отк." ,
  ac.date_expire "Дата Зак.",
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='C' and cs.id=ac.contr_status ) "Статус Карты",
(select ct.name from ows.contr_subtype ct where ct.id=ac.contr_subtype__id and ct.con_cat='C' and ct.amnd_state='A' ) "Вид Карты",
trunc(d.trans_amount,2) "Сумма Операц.",
(select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) "Валюта Операц.",
trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'398',d.trans_amount,d.trans_date),2) "Сумма Тенге",
d.trans_date "Дата Операц.",
(select name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) "Вид платежа",
d.trans_details "Деталь"      
              from ows.doc d,  ows.acnt_contract ac , ows.m_transaction mt, ows.client cl,
              (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf from ows.v_local_constants l) lc
              where 
              ac.amnd_state='A'
              and ac.con_cat in ('A','C')
              and ac.client__id=cl.id
              and cl.amnd_state='A'
              and cl.branch in ( select br.code
                                  from ows.branch br ,ows.client clm
                                  where br.amnd_state='A' 
                                  and clm.amnd_state='A'
                                  and clm.id=br.bank_client 
                                  and clm.city=lc.buf)
              and d.amnd_state='A'
              and d.is_authorization='N'
              and d.posting_status='P'
              and d.service_class='T'
              and d.target_number=ac.contract_number
              and d.trans_type not in (37939,37996,38080,37328,37339,39489,39476,39473,43,40,396,47,46,33173,33174,395)        
              and mt.doc__oid=d.id
              and mt.service_class='T'
              and mt.posting_status='P'
              and mt.direction='1'
              and d.amnd_date>=lc.date_from-5
              and d.trans_date>=lc.date_from
              and d.trans_date<=lc.date_to
++++++++++++++++++++++++++++++++++Дебит для Аудит+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
(select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) "Филиал",
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) "ФИО клиента",
  cl.add_info_01 "ИИН клиента",
  cl.company_nam "Организация",
  ac.contract_number "Номер.Контр.",
  ac.date_open "Дата Отк.Карты" ,
  ac.date_expire "Дата Зак.Карты",
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='C' and cs.id=ac.contr_status ) "Статус Карты",
(select ct.name from ows.contr_subtype ct where ct.id=ac.contr_subtype__id and ct.con_cat='C' and ct.amnd_state='A' ) "Вид Карты",
trunc(d.trans_amount,2) "Сумма Операц.",
(select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) "Валюта Операц.",
trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'398',d.trans_amount,d.trans_date),2) "Сумма Тенге",
d.trans_date "Дата Операц.",
(select name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) "Вид платежа",
d.trans_details "Деталь"      
              from ows.doc d,  ows.acnt_contract ac , ows.m_transaction mt, ows.client cl,
             (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf from ows.v_local_constants l) lc
              where 
              ac.amnd_state='A'
              and ac.con_cat in ('A','C')
              and ac.client__id=cl.id
              and cl.amnd_state='A'
              and cl.branch in ( select br.code
                                  from ows.branch br ,ows.client clm
                                  where br.amnd_state='A' 
                                  and clm.amnd_state='A'
                                  and clm.id=br.bank_client 
                                  and clm.city=lc.buf)
              and d.amnd_state='A'
              and d.is_authorization='N'
              and d.posting_status='P'
              and d.service_class='T'
              and d.target_number=ac.contract_number
              and d.trans_type not in (37939,37996,38080,37328,37339,39489,39476,39473,43,40,396,47,46,33173,33174,395)        
              and mt.doc__oid=d.id
              and mt.service_class='T'
              and mt.posting_status='P'
              and mt.direction='-1'
              and d.amnd_date>=lc.date_from-5
              and d.trans_date>=lc.date_from
              and d.trans_date<lc.date_to
++++++++++++++++++++++++++++++++++Кредит для Аудита++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
POS Chip SBT Full Grade
,POS,TERM,TERM_CHIP,CARD,CARDHOLDER,MERCH,CARD_CHIP,CHIP_SVC,READ_CHIP,DATA_TRACK,DATA_CHIP,

PSCR=Y0;CVR=03A06002;TVR=0000208000;SEQV_N=0098;9F10=06010A03A06002;DE19=398;VPD=05000010;DE22=051;DE25=00;CVCR=M;PRODUCT_ID=P D;CARD_AFS=D;FX_S_N=16392943000724;T_USG=AK;

select 
(select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) "Филиал",
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) "ФИО клиента",
  cl.add_info_01 "ИИН клиента",
  cl.company_nam "Организация",
  case when ac.con_cat='C' then substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)  else ac.contract_number end  "Номер.Контр.",
  ac.date_open "Дата Отк." ,
  ac.date_expire "Дата Зак.",
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.con_cat='C' and cs.id=ac.contr_status ) "Статус Карты",
(select ct.name from ows.contr_subtype ct where ct.id=ac.contr_subtype__id and ct.con_cat='C' and ct.amnd_state='A' ) "Вид Карты",
trunc(d.trans_amount,2) "Сумма Операц.",
(select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) "Валюта Операц.",
trunc(ows.fx.MIDDLE_RATE(null,'724',null,d.trans_curr,'398',d.trans_amount,d.trans_date),2) "Сумма Тенге",
d.trans_date "Дата Операц.",
(select name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) "Вид платежа",
d.trans_details "Деталь"      
              from ows.doc d,  ows.acnt_contract ac , ows.m_transaction mt, ows.client cl,
              (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf from ows.v_local_constants l) lc
              where 
              ac.amnd_state='A'
              and ac.con_cat in ('A','C')
              and ac.client__id=cl.id
              and cl.amnd_state='A'
              and cl.branch in ( select br.code
                                  from ows.branch br ,ows.client clm
                                  where br.amnd_state='A' 
                                  and clm.amnd_state='A'
                                  and clm.id=br.bank_client 
                                  and clm.city=lc.buf)
              and d.amnd_state='A'
              and d.is_authorization='N'
              and d.posting_status='P'
              and d.service_class='T'
              and d.target_number=ac.contract_number
              and d.trans_type not in (37939,37996,38080,37328,37339,39489,39476,39473,43,40,396,47,46,33173,33174,395)        
              and mt.doc__oid=d.id
              and mt.service_class='T'
              and mt.posting_status='P'
              and mt.direction='1'
              and d.amnd_date>=lc.date_from-5
              and d.trans_date>=lc.date_from
              and d.trans_date<=lc.date_to


++++++++++++++++++++++++++++++++++++++++данные по инстант аппликации ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select * from ows.APPL_ACNT where /*approval_stage = 'ACCEPT' and   posting_status='W' and*/ 
amnd_state='A'   
and pcat='C' 
and appl_acnt__oid is null 
and substr(appl_reg_number,1,1)='6'
and amnd_date>=to_date('02062016','ddmmyyyy') 


+++++++++++++++++++++++++++++++++++++++Выборка по Номаду++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select rownum||s.d from
(select '~SBR~'||ac.CONTRACT_NUMBER||'~WBONUS~2000~'||to_char(ac.date_open,'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.acnt_contract ac ,ows.card_info ci,
              ( select max(ci.seqv_number) mid,ci.acnt_contract__oid aid 
              from ows.acnt_contract ac ,ows.card_info ci 
              where ac.amnd_state='A'
              and ac.pcat='C'
              and ac.con_cat='C' 
              and ac.date_open=to_date('08062016','ddmmyyyy')
              and ac.id=ci.acnt_contract__oid
              group by ci.acnt_contract__oid ) f
where f.aid=ac.id
and ac.amnd_state='A'
and ci.seqv_number=f.mid
and ci.production_event in ('NCRD','NLOST','NCRDD','NCU','NCWOPIN')
and ci.acnt_contract__oid=ac.id
union all
select '~SBR~'||ac.CONTRACT_NUMBER||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||trunc(sum(mt.local_amount)/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type=5 
and d.amnd_date>=to_date('08062016','ddmmyyyy')-5
and d.trans_date>=to_date('08062016','ddmmyyyy')
and d.trans_date<to_date('08062016','ddmmyyyy')+1
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
group by trunc(d.trans_date),ac.CONTRACT_NUMBER,acs.scheme_name) s


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select  f.bank_date ir_Date,
            r.code instr_code,
            (r.fx_buy+r.fx_sell)/2 kurs,
            f.date_from,
            to_char(f.date_from,'SSSSS') ss
      from  ows.fx_seqv f,
            ows.fx_rate r 
     where  f.f_i=724
       and  f.bank_date='22.06.2016'
       and  r.f_i=724
       and  f.seqv_n=r.seqv_n
+++++++++++++++++++++++++++++++++++++доступ к выписке++++++++++++++++++++++++++++++++++++++++++++
select  ofg.name,ofc.* from ows.sy_handbook sh,ows.officer ofc,ows.officer_group ofg
where sh.amnd_state='A'
and sh.group_code='REPORT_USER'
and sh.code=ofc.user_id
and ofc.amnd_state='A'
and ofg.amnd_state='A'
and ofg.id=ofc.officer_group__oid


+++++++++++++++++++++++++++++++++++операция по всем картам в наших кассах++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select case when d.target_channel in ('v','e','h') then 'СБРК' else 'не СБРК' end channel,
count(*) kolvo 
from ows.doc d,( 
                               select td.doc__id did
                                      from ows.device_rec dr,
                                       ows.acq_dev_cycle acc,
                                       ows.acq_cst_cycle acs,
                                       ows.trans_dispense td,
                                       ows.acnt_contract ac, 
                                       ows.acnt_contract dev
                                where 
                                td.acq_cst_cycle__oid=acs.id
                                and acs.acq_dev_cycle__oid=acc.id
                                and acc.device_rec__oid=dr.id 
                                and dr.term_cat='P'  and dr.transaction_class='C' 
                                and dev.id=dr.acnt_contract__oid
                                and dev.acnt_contract__oid=ac.id
                                and td.trans_date>=to_date('01032016','ddmmyyyy')
                                and td.trans_date<=to_date('31032016','ddmmyyyy')                                                              
                                ) a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.service_class='T'
AND D.TRANS_TYPE  = '11'
and d.amnd_date>=to_date('25022016','ddmmyyyy')
and d.trans_date>=to_date('01032016','ddmmyyyy')
and d.trans_date<=to_date('31032016','ddmmyyyy')
and d.id=a.did
group by d.target_channel
++++++++++++++++++++++++++++++++++реверс проводок возврат корректировка +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select pg.rnn,pg.inform from ows.pragmaclient pg where pg.inform='15082016MACRO2V' for update

select distinct ac.contract_number
from ows.acnt_contract ac , ows.account acc, ows.acc_scheme acs
where acc.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.con_cat='A'
and acc.code in ('<')
and acc.current_balance<>0
and acs.amnd_state='A' 
and acs.scheme_name='Cr KZ Priv Res 10-24 CrC TKB' 
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and exists (
 select ac2.* from ows.acnt_contract ac2, ows.account acc, ows.item i, ows.entry e
  where  ac2.contract_number=ac.contract_number  
  and ac2.amnd_state='A'
  and acc.acnt_contract__oid=ac2.id
  and acc.code in ('<')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01082016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u')
 and e.posting_date>=to_date('12082016','ddmmyyyy')
  and e.posting_date<=to_date('15082016','ddmmyyyy')
 )
 order by 1


select 
(select acc1.account_name from ows.account acc1 where acc1.id=mt.source_account ) sourc,
(select acc2.account_name from ows.account acc2 where acc2.id=mt.target_account ) targt,
mt.posting_status,
mt.service_class,
ac.contract_number,
et.posting_date,mt.id mtid , mt.trans_amount, mt.trans_curr
from ows.acnt_contract ac , ows.account acc , ows.item it , ows.entry et ,ows.m_transaction mt , ows.pragmaclient pg
where ac.contract_number=pg.rnn and pg.inform='15082016MACRO2V'
and ac.amnd_state='A'
and ac.id=acc.acnt_contract__oid  and ac.contract_number<>'KZ97914038P000654185'
and acc.code in ('<')
and acc.id=it.account__oid
and It.DATE_from>=to_date('01082016','ddmmyyyy')
and et.item__id=it.id
and et.service_class in ('u','U') and mt.posting_status in ('I','P')
and et.posting_date>=to_date('12082016','ddmmyyyy')
and et.posting_date<=to_date('15082016','ddmmyyyy')
and et.m_transaction__id=mt.id
and mt.target_account<>acc.id
order by 5,2


select 
mt.id
from ows.acnt_contract ac , ows.account acc , ows.item it , ows.entry et ,ows.m_transaction mt , ows.pragmaclient pg
where ac.contract_number=pg.rnn and pg.inform='15082016MACRO2V'
and ac.amnd_state='A'
and ac.id=acc.acnt_contract__oid  and ac.contract_number<>'KZ97914038P000654185'
and acc.code in ('<')
and acc.id=it.account__oid
and It.DATE_from>=to_date('01082016','ddmmyyyy')
and et.item__id=it.id
and et.service_class in ('u','U')
and et.posting_date>=to_date('12082016','ddmmyyyy')
and et.posting_date<=to_date('15082016','ddmmyyyy')
and et.m_transaction__id=mt.id




select 
distinct ac.id
from ows.acnt_contract ac , ows.account acc , ows.item it , ows.entry et ,ows.m_transaction mt , ows.pragmaclient pg
where ac.contract_number=pg.regnumber and pg.inform='15082016MACRO2V'
and ac.amnd_state='A'
and ac.id=acc.acnt_contract__oid  and ac.contract_number<>'KZ97914038P000654185'
and acc.code in ('<')
and acc.id=it.account__oid
and It.DATE_from>=to_date('01082016','ddmmyyyy')
and et.item__id=it.id
and et.service_class in ('u','U')
and et.posting_date>=to_date('12082016','ddmmyyyy')
and et.posting_date<=to_date('15082016','ddmmyyyy')
and et.m_transaction__id=mt.id

---------------------------------------------------------------------------
select distinct ac.contract_number
from ows.acnt_contract ac , ows.account acc, ows.acc_scheme acs
where acc.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.con_cat='A'
and acc.code in 
('-9','-8','-13','-12','-7','-6','-4','-2','-1','-11','-10','-17','-16','-15','-14','-5','-3','-','S4','S5','F1','F3','F2','S2','i')
and acc.current_balance<>0
and acs.amnd_state='A' 
and lower(acs.scheme_name) like 'cr%univer%' 
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and exists (
 select ac2.* from ows.acnt_contract ac2, ows.account acc, ows.item i, ows.entry e
  where  ac2.contract_number=ac.contract_number
  and ac2.amnd_state='A'
  and acc.acnt_contract__oid=ac2.id
  and acc.code in ('P','P1','P2')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01062016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u','U')
 and e.posting_date>=to_date('12072016','ddmmyyyy')
  and e.posting_date<to_date('20072016','ddmmyyyy')
 )
 order by 1

++++++++++++++++++++++++++++++миграция по старой схеме +++++++++++++++++++++++++++++++++++++++++++++
DECLARE 
CURSOR MIG_CUR is (
SELECT ac.id, ac.contract_number, abs(sberbank_cust.Due_Dt(ows.glob.ldate, ac.contract_number, 'OVD', 'L')) due
FROM ows.acnt_contract ac
WHERE ac.amnd_state   = 'A'
AND ac.CCAT           = 'P'
AND ac.CON_CAT        = 'A'
AND ac.PCAT           ='C'
and ac.is_ready <> 'C'
AND ac.acc_scheme__id in (
select acs.id
                        from ows.acc_scheme acs 
                        where acs.amnd_state='A' 
                        and lower(acs.scheme_name) like 'cr%'
                        and lower(acs.scheme_name) not like '%univer%'
                        and lower(acs.scheme_name) not like '%stop%'
                        and acs.tariff_domain=2238
                        ) 
and (select sberbank_cust.Due_Dt(ows.glob.ldate, ac.contract_number, 'OVD', 'L') from dual) <> 0
and not exists (
  select ua.id 
  from ows.usage_action ua, ows.event_type et
  where ua.ACNT_CONTRACT__ID=ac.id
  AND et.amnd_state = 'A'
  AND ua.event_type = et.id
  AND et.code in ('OVD_DUE_1_90', 'OVD_DUE_90', 'OVD_DUE_180')
)
and exists (
  select ua.id 
  from ows.usage_action ua, ows.event_type et
  where ua.ACNT_CONTRACT__ID=ac.id
  AND et.amnd_state = 'A'
  AND ua.event_type = et.id
  AND et.code = 'OVERDUE'
)

);

Evnt_ID_OVD_1_90 dtype. RecordID %Type :=0;
Evnt_ID_OVD_90 dtype. RecordID %Type :=0;
Evnt_Code_OVD_1_90 CONSTANT dtype. Name %Type :='OVD_DUE_1_90';
Evnt_Code_OVD_90 CONSTANT dtype. Name %Type :='OVD_DUE_90';
Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

    
 BEGIN
 
  select max(id) into Evnt_ID_OVD_1_90 from ows.EVENT_TYPE where code=Evnt_Code_OVD_1_90 and amnd_state='A'; 
  select max(id) into Evnt_ID_OVD_90 from ows.EVENT_TYPE where code=Evnt_Code_OVD_90 and amnd_state='A';
     
 glob.BUTTON_PROC_START('Migrate Credit Contract OLD Scheme v.2_0 Part 2', 'Post Events for OLD Scheme: OVD_1_90 or OVD_90');

for rec in MIG_CUR
 LOOP
 if (rec.due >= 0 and rec.due < 90)
 then
 Usage_Action_ID := evnt.LOAD_EVENT
 (
  Evnt_ID_OVD_1_90,
  rec.ID,
  NULL,
  glob.LDATE-rec.due,
  NULL,
  'Migrate OLD Credit 1 to 90'
 );
 else 
 Usage_Action_ID := evnt.LOAD_EVENT
 (
  Evnt_ID_OVD_90,
  rec.ID, 
  NULL, 
  glob.LDATE-rec.due+90,  
  NULL,    
  'Migrate OLD Credit 90' 
 );
 end if;
 
 if Usage_Action_ID > 0 then 
evnt.POST_EVENT(
  Usage_Action_ID,
  NULL            
);
end if;

 stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.contract_number);

 END LOOP;
 commit;
 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END ;

+++++++++++++++++++++++++++++++++++++++update usage action стираем переключение на стоп схему+++++++++++++++
/*для юниверсал */

DECLARE 
          
CURSOR MIG_CUR is (select DISTINCT ac.contract_number, ua.id ua_id, ua.new_scheme from ows.acnt_contract ac, ows.usage_action ua
    where ua.event_type = (select id from ows.event_type et 
                          where et.amnd_state = 'A'
                          and et.name = 'STOP_SCHEME_ACTIV_Universal')
    and ua.posting_status = 'P'
    and ua.acnt_contract__id = ac.id
    and ua.new_scheme is not null
    and ac.amnd_state = 'A'
    and ac.CCAT           = 'P'
    AND ac.CON_CAT        = 'A'
    AND ac.PCAT           ='C'
    AND ac.acc_scheme__id IN (
    select id from ows.acc_scheme acs where acs.amnd_state='A' 
    and lower(acs.scheme_name) like 'cr%' 
    and lower(acs.scheme_name) like '%univer%') 
    );
        
ErrMsg dtype. Name %Type;

BEGIN
 
 glob.BUTTON_PROC_START('Update Usage_action for Universal Credit Contract', 'Clear New_scheme field');

for rec in MIG_CUR
 LOOP
  update usage_action set new_scheme = null where id = rec.ua_id;
  stnd.PROCESS_MESSAGE(stnd.Information , 'Updated usage_action_ID='|| rec.ua_id ||' for contract '||rec.contract_number);

 END LOOP;
 
 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;


/*для старых продуктов*/

DECLARE         
CURSOR MIG_CUR_2 is (select DISTINCT ac.id, ac.contract_number, ua.id ua_id, ua.new_scheme from ows.acnt_contract ac, ows.usage_action ua
    where ua.event_type = (select id from ows.event_type et 
                          where et.amnd_state = 'A'
                          and et.code = 'STOP_ACNT')
    and ua.posting_status = 'P'
    and ua.acnt_contract__id = ac.id
    and ua.new_scheme is not null
    and ac.amnd_state = 'A'
    and ac.CCAT           = 'P'
    AND ac.CON_CAT        = 'A'
    AND ac.PCAT           ='C'
    AND ac.acc_scheme__id IN (select id from ows.acc_scheme acs where acs.amnd_state='A' 
and lower(acs.scheme_name) like 'cr%' 
and lower(acs.scheme_name) not like '%univer%') 
    );    

ErrMsg dtype. Name %Type;

BEGIN
 
 glob.BUTTON_PROC_START('Migrate Credit Contract OLD Scheme v.1_0 Part 1', 'Migr From StopScheme and Update Usage_action OLD Scheme');

for rec in MIG_CUR_2
 LOOP
  update usage_action set new_scheme = null where id = rec.ua_id;
  stnd.PROCESS_MESSAGE(stnd.Information , 'Update Usage_action_ID='|| rec.ua_id ||' for contract '||rec.contract_number);

 END LOOP;
 commit;
 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio, 
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)  card_num,
 cl.add_info_01 iin,
 (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch) filial,
 cl.company_nam,
 ac.date_open,
 sp.name,
 ac.contract_number
from ows.acnt_contract ac, ows.client cl, ows.serv_pack sp 
where ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and ac.contr_status<>'109'
and ac.client__id=cl.id
and cl.amnd_state='A'
and cl.branch in ('ODPTP','SRRPTP','TXB11','SPF1PTP','TXB15')
and ac.serv_pack__id=sp.id
and sp.amnd_state='A'
and upper(sp.name) like '% SAL%'
and sp.use_for_contracts='Y'
and not exists (select * from 
                ows.doc d, ows.m_transaction mt
                where  d.amnd_state='A'
                and d.posting_status='P'
                and d.service_class='T'
                and d.id=mt.doc__oid
                and mt.posting_status='P'
                and mt.service_class='T'
                and ac.contract_number=d.target_number
                and d.amnd_date>=to_date('01062016','ddmmyyyy')
                and d.amnd_date<=to_date('22062016','ddmmyyyy'))
                
                
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio, 
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)  card_num,
 cl.add_info_01 iin,
 (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch) filial,
 cl.company_nam,
 ac.date_open,
 sp.name,
 ac.contract_number
from ows.acnt_contract ac, ows.client cl, ows.serv_pack sp 
where ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and ac.contr_status<>'109'
and ac.client__id=cl.id
and cl.amnd_state='A'
and cl.branch in ('ODPTP','SRRPTP','TXB11','SPF1PTP','TXB15')
and ac.serv_pack__id=sp.id
and sp.amnd_state='A'
and upper(sp.name) like '% SAL%'
and sp.use_for_contracts='Y'
and not exists (select * from 
                ows.doc d, ows.m_transaction mt
                where  d.amnd_state='A'
                and d.posting_status='P'
                and d.service_class='T'
                and d.id=mt.doc__oid
                and mt.posting_status='P'
                and mt.service_class='T'
                and ac.contract_number=d.target_number
                and d.id>263570000
                and d.amnd_date>=to_date('01062016','ddmmyyyy')
                and d.amnd_date<=to_date('22062016','ddmmyyyy'))
                
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
      s.kanal  ,
      s.tip_trans,
       s.area,
       s.valuta,
       count(*) kolvo from 
(select 
(select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) tip_trans,
case when d.trans_type in (5,11,13,15,50,60,34084,35316,35636,35642,39473,39476,39489,37980,35338,35323) 
      then Case when d.trans_country='KAZ' or d.trans_country is null 
           then 'Kazakhstan'  
           else 'TransBorder' end
      when d.trans_type=700  then case when d.source_channel in ('E','V','S') and d.trans_country='KAZ'  then  'Kazakhstan'
                                       when d.source_channel in ('E','V','S') and d.trans_country<>'KAZ' then 'TransBorder'  
                                       when d.source_channel in ('A','P','W') and d.target_channel in ('v','e','h') then 'Внутри Банка'
                                       when d.source_channel in ('A','P','W')  and  d.target_channel in ('V','S','E') then 
                                                                      case when  (select (select cy.code from ows.country cy where cy.amnd_state='A' and cy.code=b.country and rownum=1)
                                                                          from ows.bin_table b 
                                                                          where  b.start_bin_4=substr(d.target_number,1,6) 
                                                                          and b.amnd_state='A' 
                                                                          and b.country is not null 
                                                                          and rownum=1)='KAZ' then 'Kazakhstan'
                                                                            else 'TransBorder' end end  end  Area ,
 Case when d.trans_curr=398 then 'Tenge' 
       else 'Invaluta'  end valuta    ,
  (select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=d.source_channel)  kanal                                                
from ows.doc d
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.service_class='T'
and d.trans_type in (5,11,13,15,50,60,700,34084,35316,35636,35642,39473,39476,39489,37980,35338,35323)
and d.amnd_date>=to_date('01062015','ddmmyyyy')
and d.amnd_date<to_date('01062016','ddmmyyyy')
and d.id>135756000
and (d.target_channel in ('v','e','h','O') or (d.target_channel in ('V','S','E') and d.trans_type=700))
)s
group by s.tip_trans,
       s.area,
       s.valuta,kanal  
+++++++++++++++++++++++выборка для определения предыдущего раб дня+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
  case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
   then to_date('01012100','ddmmyyyy')
   when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
   (trunc(trunc(sysdate)+1)-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
   then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
  else trunc(sysdate)-1 end d
from dual

+++++++++++++++++++++++++++Доработтанный отчет по Номаду+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*ПРОТЕСТИРОВАН АВТОМАТИЗИРОВАН*/
select rownum||s.d Nomad from
(select '~SBR~'||ac.tr_company||'~WBONUS~2000~'||to_char(ac.date_open,'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.acnt_contract ac ,ows.card_info ci,
              ( select max(ci.seqv_number) mid,ci.acnt_contract__oid aid 
              from ows.acnt_contract ac ,ows.card_info ci , ows.appl_product ap,(select 
                                                                                  case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
                                                                                   then to_date('01012100','ddmmyyyy')
                                                                                   when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
                                                                                   (trunc(trunc(sysdate)+1)-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
                                                                                   then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
                                                                                  else trunc(sysdate)-1 end d
                                                                                from dual) a
              where ac.amnd_state='A'
              and ac.pcat='C'
              and ac.con_cat='C' 
              and ac.date_open=a.d
              and ac.id=ci.acnt_contract__oid
              and ac.main_product=ap.id
              and ap.amnd_state='A'
              and upper(ap.name) like '%NOMAD%'
              group by ci.acnt_contract__oid ) f
where f.aid=ac.id
and ac.amnd_state='A'
and ci.seqv_number=f.mid
and ci.production_event in ('NCRD','NLOST','NCRDD','NCU','NCWOPIN')
and ci.acnt_contract__oid=ac.id
union all
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap,(select 
                                                                                                      case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
                                                                                                       then to_date('01012100','ddmmyyyy')
                                                                                                       when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
                                                                                                       (trunc(trunc(sysdate)+1)-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
                                                                                                       then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
                                                                                                      else trunc(sysdate)-1 end d
                                                                                                    from dual) a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50) 
and (d.posting_date>=a.d and d.posting_date<a.d+1) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
and ac.main_product=ap.id
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name) s
+++++++++++++++++++++++++++++++++корректировка проводки ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select distinct ac.contract_number
from ows.acnt_contract ac , ows.account acc, ows.acc_scheme acs
where acc.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.con_cat='A'
and acc.code in ('<')
and acc.current_balance<>0
and acs.amnd_state='A' 
and acs.scheme_name='Cr KZ Priv Res 10-24 CrC TKB' 
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and exists (
 select ac2.* from ows.acnt_contract ac2, ows.account acc, ows.item i, ows.entry e
  where  ac2.contract_number=ac.contract_number  
  and ac2.amnd_state='A'
  and acc.acnt_contract__oid=ac2.id
  and acc.code in ('<')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01082016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u')
 and e.posting_date>=to_date('12082016','ddmmyyyy')
  and e.posting_date<to_date('15082016','ddmmyyyy')
 )
 order by 1

++++++++++++++++++++++++++++++остаток ++++++++++++++++++++++++++++++++++++++
select 
a1||a2||a3 from
(
with v as
(select 
(select acc.tr_company from ows.acnt_contract acc 
    where acc.amnd_state='A' 
      and acc.acnt_contract__oid=ac.id
      and acc.client__id=ac.client__id
      and acc.tr_company is not null
      and rownum=1) tr_company,     
to_date('01082016','ddmmyyyy') date_from,
ac.contract_number,
a.id
from ows.acnt_contract ac,ows.appl_product ap,ows.account a
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and instr(upper(ap.name),'NOMAD')<>0
and a.acnt_contract__oid=ac.id
and a.account_type=6
and ac.curr='398')
     select
     '~SBR~'||v.tr_company||'~SBANK~' a1, to_char(round(
                  (
                    (
                      (
                        (
                         (select
                           sum(ows.rpr.GET_ACC_BAL(v.id,trunc(add_months(last_day(v.date_from),-1))+ROWNUM))
                          from ows.client
                             where rownum <= abs(to_number(trunc(add_months(last_day(v.date_from),-1))-last_day(v.date_from)))/*непрерывнй диапазон дат*/)
                         )/abs(to_number(trunc(add_months(last_day(v.date_from),-1))-last_day(v.date_from))))*0.04)/12)/3.7
                 )) a2,'~'||to_char(last_day(v.date_from),'DDMONYY','NLS_DATE_LANGUAGE=American') a3
      
           from v
           where v.tr_company is not null)
where a2<>0           



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

DECLARE 
v_count number := 0;

CURSOR MIG_CUR is (SELECT ac.*
          FROM ows.acnt_contract ac
          WHERE ac.amnd_state   = 'A'
          AND ac.CON_CAT        = 'A'
          AND ac.PCAT           ='C'
          and ac.contr_status=465
          AND ac.is_ready <> 'C'
          );
          

Evnt_ID_Migr dtype. RecordID %Type :=0;
Evnt_Code_Migr CONSTANT dtype. Name %Type :='PTP_ACTIVATE';
Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID_Migr from ows.EVENT_TYPE where code=Evnt_Code_Migr and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate PTP Contract v.1_0 Part 1', 'MIGR CONTRACT STATUS FROM Account Blocked to Account PTP');

for rec in MIG_CUR
 LOOP
 Usage_Action_ID := evnt.LOAD_EVENT
 (
  Evnt_ID_Migr,
  rec.ID,
  NULL,
  NULL,
  NULL,
  'Согласно СЗ №8356627 от 08.09.2016'
 );
 if Usage_Action_ID > 0 then 
evnt.POST_EVENT(
  Usage_Action_ID,
  NULL            
);
end if; 
 v_count:=v_count+1;
                    if  mod(v_count,1000) = 0 then 
                         commit;
                     end if;
   stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.contract_number); 
 END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select u.*
  from ows.USAGE_TEMPL u
where u.amnd_state = 'A'
   and u.is_active = 'Y'
   and u.limit_usage_type not in ('B', 'S', 'X', 'C', 'K', 'R')
 --  and u.limit_renew_type <> 'M'
   and u.f_i = '724'
  -- and u.con_cat = 'C'
   and u.acnt_contract__oid is null
   and instr(u.usage_code, 'RISK_Fuel_CAT') = 0
   and
u.usage_code not in
    ('P2P MIN', 'RISK_ElCom_3DS', 'CVV2_All Ecommerce_3DS')
and u.usage_code in ('RISK_ElCom')    
 


select u.serv_pack__oid
  from ows.USAGE_TEMPL u
where u.amnd_state = 'A'
   and u.is_active = 'Y'
   and u.acnt_contract__oid is null
   and u.serv_pack__oid is not null
   and u.usage_code in ('RISK_ElCom') 
--and lower(u.usage_code) like '%risk_ fallback%' 

select * from ows.evnt_msg em where em.address_data='77013170602'

select
u.id
,u.contract
,u.usage_templ__oid
,limit_usage_type
,usage_code
,limit_renew_type
,limit_period
,service_pack
,from_pack
,ows.rpr.USAGE_CURR(u.usage_templ__oid, u.contract) curr
,ows.rpr.USAGE_MAX_NUMBER(u.usage_templ__oid, u.contract) lim_max_number
,cast(ows.rpr.USAGE_MAX_AMOUNT(u.usage_templ__oid, u.contract) as number(28,10)) lim_max_amount
,cast(ows.rpr.USAGE_MAX_SINGLE_AMOUNT(u.usage_templ__oid, u.contract) as number(28,10)) max_single_amount
,cast(ows.rpr.USAGE_MAX_PCNT(u.usage_templ__oid, u.contract) as number(15,8)) max_pcnt
,ows.rpr.USG_IS_EXCEEDED_MAX_N(u.usage_templ__oid, u.contract) is_exc_max_n
,ows.rpr.USG_IS_EXCEEDED_MAX_AMNT(u.usage_templ__oid, u.contract) is_exc_max_amnt
,l.id limiter_id
,ows.rpr.USAGE_CURRENT_NUMBER(u.usage_templ__oid, u.contract) current_number
,cast(ows.rpr.USAGE_CURRENT_AMOUNT(u.usage_templ__oid, u.contract) as number(28,10)) current_amount
,ows.rpr.USAGE_SWCH_DATE_FROM(u.usage_templ__oid, u.contract) switch_date_from
,ows.rpr.USAGE_SWCH_DATE_TO(u.usage_templ__oid, u.contract) switch_date_to
,ows.rpr.USAGE_SWCH_STATUS(u.usage_templ__oid, u.contract) switch_status
,ows.rpr.USAGE_CURRENT_STATUS(u.usage_templ__oid, u.contract) current_status
,ows.rpr.USAGE_START_DATE(u.usage_templ__oid, u.contract) start_date
,ows.rpr.USAGE_END_DATE(u.usage_templ__oid, u.contract) end_date
,ows.rpr.LAST_USG_HISTORY_RECORD_DATE(l.id) last_record_date
,ows.rpr.USAGE_OPEN_NUMBER(u.usage_templ__oid, u.contract) open_number
,cast(ows.rpr.USAGE_OPEN_AMOUNT(u.usage_templ__oid, u.contract) as number(28,10)) open_amount
,ows.rpr.USAGE_TEMPL_APPR_ID(u.usage_templ__oid, u.contract) usage_templ_appr_id
,ows.rpr.USG_MAX_NUM_IS_EDIT(u.usage_templ__oid, u.contract) max_num_is_editable
,ows.rpr.USG_MAX_AMNT_IS_EDIT(u.usage_templ__oid, u.contract) max_amnt_is_editable
,ows.rpr.USAGE_TARIFF_NAME(u.usage_templ__oid, u.contract) tariff_name
from 
   (  
   select b.usage_templ__oid id
         ,b.contract
         ,b.usage_templ__oid
         ,limit_usage_type
         ,b.usage_code
         ,limit_renew_type
         ,limit_period
         ,service_pack
         ,from_pack
         ,user_add_info
         ,group_code
         ,from_template
         ,area
         ,channel
         ,doc_ret_code
         ,max_amnt_bal_type
         ,used_amnt_bal_type
         ,max_trn_amount
         ,min_trn_amount
         ,pref_type
         ,sic_group
         ,trans_type
   from
     (  
     select a.contract
            ,a.usage_templ__oid
            ,usage_code
        from  ows.usage_templ_appr a
       where a.contract = 7131477
         and a.date_to >= sysdate and a.date_from <= sysdate
      union
      select /*+ordered */
             c.id
            ,a.usage_templ__oid
            ,usage_code
        from ows.acnt_contract c, ows.serv_pack cp, ows.serv_pack p, ows.usage_templ_appr a
       where  c.id = 7131477
         and cp.id = c.serv_pack__id
         and p.id = case
                       when cp.parent_pack is null 
                         or instr(cp.auth_conf_mode, 'NO_COPY') > 0
                         or instr(cp.auth_conf_mode, 'SCAN_SERVICE') > 0
                       then cp.id
                       else cp.parent_pack 
                    end
         and a.date_to >= sysdate and a.date_from <= sysdate
         and a.service_pack in (p.id, p.base_pack)
         and a.contract is null) b,
   table(ows.rpr.USG_TMPL_APPR_CACHED(b.usage_templ__oid, b.contract))  
   ) u, 
ows.usage_limiter l
where l.acnt_contract__oid(+) = u.contract and l.usage_template(+) = u.id;





+++++++++++++++++++++++++++++approve contract+++++++++++++++++++++++++++++++++++++++++++


declare
errmess dtype. ErrorMessage %Type;
prID dtype.RecordID %Type;
begin
prID := stnd.process_start('Approve Contracts for Correct Penalty Recalculation', null, null);
for contract in (select * from acnt_contract 
              where acnt_contract__oid is null
              and amnd_state = 'A' and id=6854693
              and acc_scheme__id in (26858)) 
loop
  update acnt_contract set is_ready='N' where id=contract.id;
  errmess := spac.renew_contr(contract.id);
end loop;
stnd.process_end();
end;

+++++++++++++++++++++++++++++++++миграция схемы +++++++++++++++++++++++++++++++++++++++

Запрос 2:

SELECT ac.id, ac.contract_number, ac.amount_available, ua.start_date, round(ows.glob.LDATE - ua.start_date, 0) due
FROM ows.acnt_contract ac,
  ows.usage_action ua
WHERE ac.amnd_state   = 'A'
AND ac.CCAT           = 'P'
AND ac.CON_CAT        = 'A'
AND ac.PCAT           ='C'
AND ac.acc_scheme__id IN ( 26858) -- Add scheme_ID with new settings
AND ua.ACNT_CONTRACT__ID=ac.id 
AND ua.event_type         = (select et.id from ows.event_type et where et.amnd_state = 'A' and et.code = 'OVERDUE')
AND ua.POSTING_STATUS     ='P'
and not exists (
  select ua.id 
  from ows.usage_action ua, ows.event_type et
  where ua.ACNT_CONTRACT__ID=ac.id
  AND et.amnd_state = 'A'
  AND ua.event_type = et.id
  AND et.code in ('OVD_DUE_1_90', 'OVD_DUE_90', 'OVD_DUE_180')  
)

1753342

Запрос 1:

SELECT ac.*
FROM ows.acnt_contract ac
WHERE ac.amnd_state   = 'A'
AND ac.CCAT           = 'P'
AND ac.CON_CAT        = 'A'
AND ac.PCAT           ='C'
AND ac.acc_scheme__id = 30197 -- Add scheme_ID of old STOP_scheme

456127

+++++++++++++++++++++++++++++++++++СБРФ БИН+++++++++++++++++++++++++++++++++++++++++++++++++

SELECT * FROM OWS.SY_HANDBOOK SH 
WHERE SH.AMND_STATE='A' 
AND SH.GROUP_CODE='SMID_SBRF'



SELECT BT.MEMBER_ID
FROM OWS.BIN_TABLE BT ,OWS.SY_HANDBOOK SH 
WHERE BT.AMND_STATE='A'
AND (BT.ICA_NUMBER=SH.CODE OR BT.MEMBER_ID=SH.CODE)
AND SH.AMND_STATE='A'
AND SH.GROUP_CODE='SMID_SBRF'

++++++++++++++++++++++++++++++++++обороты наш карты в сбрф и сбрф в нашей сети++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SELECT S.SETI, SUM(S.SUMMA_TG) SUMMA_TG, COUNT(*) KOLVO FROM 
    (
      select 
      CASE WHEN EXISTS  (
                          SELECT BT.MEMBER_ID
                          FROM OWS.BIN_TABLE BT ,OWS.SY_HANDBOOK SH 
                          WHERE BT.AMND_STATE='A'
                          AND (BT.ICA_NUMBER=SH.CODE OR BT.MEMBER_ID=SH.CODE)
                          AND SH.AMND_STATE='A'
                          AND SH.GROUP_CODE='SMID_SBRF'
                          AND BT.MEMBER_ID=D.TARGET_MEMBER_ID) THEN 'КАРТЫ СБРФ В СЕТИ СБРК'
           ELSE   'КАРТЫ СБРК В СЕТИ СБРФ'  END SETI  ,  ows.fx.MIDDLE_RATE(null,'724',null,D.SETTL_CURR,'398',D.SETTL_AMOUNT,D.POSTING_DATE) SUMMA_TG       
      from ows.doc d
      where d.amnd_state='A'
      and D.POSTING_STATUS='P'
      AND D.IS_AUTHORIZATION='N'
      AND D.AMND_DATE>=TO_DATE('25072016','DDMMYYYY')
      AND D.ID>288403196  
      AND D.ID<307938972
      AND D.TRANS_TYPE  IN (700,33213)
      AND D.TRANS_DATE>=TO_DATE('01082016','DDMMYYYY')--AUG
      AND D.TRANS_DATE<TO_DATE('01092016','DDMMYYYY')
      AND EXISTS (
                              SELECT BT.MEMBER_ID
                              FROM OWS.BIN_TABLE BT ,OWS.SY_HANDBOOK SH 
                              WHERE BT.AMND_STATE='A'
                              AND (BT.ICA_NUMBER=SH.CODE OR BT.MEMBER_ID=SH.CODE)
                              AND SH.AMND_STATE='A'
                              AND SH.GROUP_CODE='SMID_SBRF'
                              AND (BT.MEMBER_ID=D.TARGET_MEMBER_ID OR BT.MEMBER_ID=D.SOURCE_MEMBER_ID))
      ) S 
GROUP BY S.SETI


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare 
v_previd number; 
v_officer number;

cursor cur is 
               ( select distinct pg.rnn contract_number,pg.iin,
                  trunc(add_months(last_day(sysdate)-16,pg.iin)) date_end,
                  acc.current_balance sum_bal, 
                  abs(acc.current_balance/pg.iin) pay,
                  (select acc.account_name from ows.account acc where acc.id=so.account__id) Order_acc,so.target_template,
                  (select act.id from ows.acc_templ act where act.amnd_state='A' and act.acc_scheme__oid=ac.acc_scheme__id and act.code='<5') acc_temp_id,
                  so.id soid
                  from ows.pragmaclient pg ,ows.acnt_contract ac,ows.account acc, ows.standing_order so
                  where pg.inform='26102016OVL' 
                  and pg.rnn=ac.contract_number
                  and ac.amnd_state='A'
                  and acc.acnt_contract__oid=ac.id and acc.code='<4'
                  and so.amnd_state='A'
                  and so.acnt_contract__oid=ac.id
                  and (so.date_event<>'M' or  so.date_event is  null)
                  and so.target_amount=0
                  );

ErrMsg dtype. Name %Type;                    
                    
begin
 
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
   
         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
         
   glob.BUTTON_PROC_START('Создание Ордеров', 'Согласно ПМ по возврату средств на счета возмещений по банкоматам.');
      
    for rec in cur loop
      ows.ystanding_order(rec.soid,'H',v_previd);
 update ows.standing_order so set so.order_type='C',
                                  so.date_event='E',
                                  so.target_amount_curr='398',
                                  so.amount_event=rec.pay,
                                  so.target_amount=rec.pay,
                                  so.may_be_prt='Y',
                                  so.check_target_amnt='ADVICE',
                                  so.target_template=rec.acc_temp_id,
                                  so.is_active='Y',
                                  so.activity_date_to=rec.date_end,
                                  so.priority='-10' 
      where so.id = rec.soid; 

 stnd.PROCESS_MESSAGE(stnd.Information , 'Standing Order ID='|| rec.soid||' for contract '||rec.contract_number);      
       
     end loop;
       commit; 

      ErrMsg := glob.BUTTON_PROC_END('Script finished');

end;
ERRMSG := APPL_XML.PARM_VALIDATE('Order Department', ORDERDPRT, PTNAME, 32, STND.NO, STND.YES)
++++++++++++++++++++++++++++++++++++++операционный доход+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select  
case when d.service_class='T'  then 'Opercionny dohod tenge'
     else 'Kommisionny dohod tenge' end tip ,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG        
from ows.gl_trace_srvc gt, ows.doc d
where d.amnd_state='A'
and gt.doc__oid=d.id
and gt.entry_role in ('F','A')
and gt.cr_contract<>3838660
and gt.dr_contract<>3838660
and (  ( d.trans_type in (5,50) and gt.cr_contract<>357580    --038-MERCHANT_FEE  038-CNP_FEE
                             and gt.dr_contract<>357580) or  d.trans_type not in (5,50))                            
and d.amnd_date>=to_date('21092016','ddmmyyyy')
and d.is_authorization='N'
and d.posting_status='P'
group by d.service_class

+++++++++++++++++++++++++++++++++++++интернет транзакции+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
count(d.id),
sum(d.trans_amount),
(select cu.name from ows.currency cu where cu.amnd_state = 'A' and cu.code = d.trans_curr)
from ows.doc d 
where d.amnd_state = 'A'
and d.is_authorization = 'N'
and d.posting_status = 'P'
and d.service_class = 'T'
and d.trans_condition in
('NEV2',
'PES',
'NEU2',
'PET',
'NEV',
'NEU'
)
and d.trans_date >= to_date('01092016','ddmmyyyy')
and d.trans_date <= to_date('30092016','ddmmyyyy')
and d.id > 302798030
group by d.trans_curr


++++++++++++++++++++++++++++++++++++++++Требование Нацистов НБРК++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number "номер Контр",
de.TRANS_DATE "дата опера",
de.RET_REF_NUMBER "номер докум",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr<>1)  then 
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end "Дебит",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr=1)  then 
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end "Кредит",
 case when de.trans_type=5 
        then 'Безналичная Оплата услуг ПОС\Интернет'
      when de.trans_type=50 
        then 'Безналичная Оплата услуг Казино'   
      when de.trans_type=13
        then 'Снятие наличных через Банкомат'
      when de.trans_type=11
        then 'Снятие наличных через Кассу'
      when de.trans_type=15
        then 'Безналичное зачисление' 
      when de.trans_type in (182,700)
        then 'Безналичное зачисление' 
      when de.trans_type in (33213)
        then 'Безналичное списание' 
      when de.trans_type in (35314,40274)
        then 'Зачисление Зарплаты'  
      when de.trans_type in (35316)
        then 'Зачисление через Кассу'   
      when de.trans_type in (35468,35549,35590,35670,35678,37328,37759)
        then 'Списание Комиссиии Банка'  
      when de.trans_type in (35630,35636)
        then 'Зачсиление средств с чужого банка через АБИС' 
      when de.trans_type in (37980)
        then 'Пополнение через ИПТ' 
      when de.trans_type in (39473)
        then 'Зачисление через СБОЛ' 
       when de.trans_type in (39476)
         then 'Списание через СБОЛ' 
       when de.trans_type in (39489)
         then 'оплата услуг в СБОЛ' end   "назнач платежа",
de.TRANS_DETAILS "информ о контраг",
ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,ac.curr,(ows.rpr.GET_ACC_BAL(acc.id,de.POSTING_DATE)),(de.POSTING_DATE)) "Сальдо",
(select cu.name from ows.currency cu where cu.amnd_state = 'A' and cu.code = ac.curr) "валюта счета"
from ows.doc_entry de, ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.code='P'
and acc.id=de.ACCOUNT__OID
and acc.acnt_contract__oid=ac.id
and de.TRANS_DATE>=to_date('01012014','ddmmyyyy')
and ac.id in (
                select 
                ac.id
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.contract_number in ('KZ45914CP39817241598',
                'KZ64914CP39810761171','KZ98914CP39842265189','KZ41914CP39833703055','KZ51914038PN00076280','KZ17914CP84015128851',
                'KZ47914CP39866751623','KZ58914CP39820696989','KZ57914CP39853964127','KZ64914CP84048475732','KZ54914CP39889122704',
                'KZ97914CC39876408593','KZ52914CC39829280304','KZ41914CP39833703055','KZ57914CP39853964127','KZ64914CP84048475732',
                'KZ51914038PN00076280','KZ02914CP39838179628','KZ09914CP39881974129','KZ54914CP84093292337','KZ58914CP39822027538',
                'KZ88914CP39828320067','KZ45914CP39817241598','KZ64914CP39810761171','KZ98914CP39842265189','KZ54914CP39889122704',
                'KZ17914CP84015128851','KZ47914CP39866751623'))
order by 1,2

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

DECLARE 
v_count number := 0;

CURSOR MIG_CUR is (select dev.id did,dev.contract_number, sp.name , dev.con_cat, dev.terminal_category, dev.contract_name, 
                        (select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id=dev.contr_status) status,
                        dev.date_open,
                        case when dev.date_open<add_months(to_date('08072016','ddmmyyyy'),-6) then dev.date_open
                             else add_months(dev.date_open,6) end date_start
                        from ows.serv_pack_evnt se ,ows.serv_pack sp, ows.acnt_contract dev
                        where se.event_type in ( select et.id from ows.event_type et where et.amnd_state='A' and et.name ='Switch Usage' )
                        and se.serv_pack__oid=sp.id
                        and se.amnd_state='A'
                        and sp.amnd_state='A'
                        and dev.amnd_state='A'
                        and dev.serv_pack__id=sp.id
                        and dev.base_relation is null
                        and se.switch_tag='Y'
                        and dev.is_ready<>'C'
                        and dev.contr_status<>102
                        and dev.date_open<to_date('08072016','ddmmyyyy')
                   );
          

Evnt_ID_Migr dtype. RecordID %Type :=0;
Evnt_Code_Migr CONSTANT dtype. Name %Type :='SW_USG';
Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID_Migr from ows.EVENT_TYPE where code=Evnt_Code_Migr and amnd_state='A';

 glob.BUTTON_PROC_START('Migrate PTP Contract v.1_0 Part 1', 'MIGR CONTRACT STATUS FROM Account Blocked to Account PTP');

for rec in MIG_CUR
 LOOP

 Usage_Action_ID := evnt.LOAD_EVENT
 (
  Evnt_ID_Migr,
  rec.DID,
  NULL,
  rec.date_start,
  NULL,
  'Согласно СЗ №8356627 от 08.09.2016'
 );
 if Usage_Action_ID > 0 then 
evnt.POST_EVENT(
  Usage_Action_ID,
  NULL            
);
end if; 
 v_count:=v_count+1;
                    if  mod(v_count,1000) = 0 then 
                         commit;
                     end if;
   stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.contract_number); 
 END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;



++++++++++++++++++++++++++++++++++++счета ГК которые не заведны в системе++++++++++++++++++++++++++++++++++++++

select distinct act.gl_number from ows.acc_scheme acs , ows.acc_templ act
where acs.amnd_state='A'
and lower(acs.scheme_name) like 'cr%'
and act.acc_scheme__oid=acs.id
and act.amnd_state='A'
minus
select distinct act.gl_number from ows.acc_scheme acs , ows.acc_templ act
where acs.amnd_state='A'
and lower(acs.scheme_name) like 'cr%'
and act.acc_scheme__oid=acs.id
and act.amnd_state='A'
and exists (select * from ows.gl_account ga
            where ga.amnd_state='A'
            and ga.gl_number=act.gl_number)     
order by 1

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 'date_id;acc_id;acc_num;blac_id;blac_num;curr_code;clnt_name;atyp_id;bal_curr;bal_tenge' from dual
union all
select 
to_char(sysdate-1,'dd/mm/yyyy')||';'||ac.id||';'||ac.contract_number||';'||ga.id||';'||acc.gl_number||';'||(select c.name from ows.currency c where c.amnd_state='A' and c.code=ac.curr)||';'||nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)||';'||acc.account_type||';'||rtrim(to_char(ows.rpr.GET_ACC_BAL(acc.id,sysdate-1), 'fm999999999990D9999999999999'), '.,')||';'||rtrim(to_char(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',( ows.rpr.GET_ACC_BAL(acc.id,sysdate-1)),sysdate-1), 'fm999999999990D9999999999999'), '.,') a
from ows.acnt_contract ac, ows.account acc, ows.client cl,ows.gl_account ga
where 
ac.amnd_state='A'
and cl.amnd_state='A' 
and ac.pcat='C'
and ac.f_i=724
and ac.client__id=cl.id
and ac.id=acc.acnt_contract__oid
and ac.con_cat='A'
and ga.gl_number=acc.gl_number
and ga.curr=acc.curr
and (exists ( select * from  ows.account acc
             where acc.acnt_contract__oid =ac.id
             and   ows.rpr.GET_ACC_BAL(acc.id,sysdate-1)<>0) 
     or 
     exists (select * from ows.contr_status cs 
             where cs.amnd_state='A' and cs.is_valid in ('D','V') and cs.id=ac.contr_status))
    

++++++++++++++++++++++++++++++++миграция устроиств на ограничения до 6 и после 6 месяцев++++++++++++++++++++++++++++++++++++++++++

select dev.id,dev.contract_number, sp.name , dev.con_cat, dev.terminal_category, dev.contract_name, 
(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id=dev.contr_status) status,
dev.date_open,
case when dev.date_open<add_months(to_date('08072016','ddmmyyyy'),-6) then dev.date_open
     else add_months(dev.date_open,6) end date_start
from ows.serv_pack_evnt se ,ows.serv_pack sp, ows.acnt_contract dev
where se.event_type in ( select et.id from ows.event_type et where et.amnd_state='A' and et.name ='Switch Usage' )
and se.serv_pack__oid=sp.id
and se.amnd_state='A'
and sp.amnd_state='A'
and dev.amnd_state='A'
and dev.serv_pack__id=sp.id
and dev.base_relation is null
and se.switch_tag='Y'
and dev.is_ready<>'C'
and dev.contr_status<>102
and dev.contract_number='00000026'
and dev.date_open<to_date('08072016','ddmmyyyy')
order by 1

+++++++++++++++++++++++++++++++++баланс проценты по контракту++++++++++++++++++++++++++++++++++++++++++++++++


select  ac.contract_number,
 acc.account_name,
 ows.rpr.GET_ACC_BAL(acc.id,to_date('01072016','ddmmyyyy')),
 ows.cards_reports.GET_ACC_INT_AMNT(acc.id,acc.N_OF_CYCLE,null,null,to_date('01072016','ddmmyyyy'),null)  
from ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and ac.contract_number in ('KZ20914CP39811423115','KZ73914CP39875217121')
and acc.code in ('!I1','!1','S3','S1','S4','S5')

select  
 acc.account_name,
ows.eoc.GET_ACC_INT(acc.id)
from ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and ac.contract_number='KZ73914CP39875217121'

++++++++++++++++++++++блок ограничения+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare
prID dtype.RecordID %Type;
begin
prID := usg_p.block_usage(3817966);
end;


++++++++++++++++++++++++выписка корректировка типов ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


1) Прошу вас на тестовой системе изменить описание записей в mess_dict:

select * from ows.mess_dict where OBJECT_TYPE = 'Transaction' and OBJECT_NAME = 'GL Transaction' and MESSAGE_LABEL = 'T4BACA' and id in (474902, 467115);



Установите MESSAGE_NAME в значение "Transfer From Employer (Fee): Bank Account --> Client Account".

2) Записи из списка необходимо отметить как удаленные (Amnd_state = C):

select * from ows.mess_dict where OBJECT_TYPE = 'Transaction' and OBJECT_NAME = 'Transaction' and MESSAGE_LABEL = 'IDT:T4';

update ows.mess_dict set amnd_state='C' where id=1006356


3) Проверьте, что в выписке по старым проводкам отображаются корректные расшифровки типов транзакции.

Эти исправления являются обходным решением, и не отменяют необходимости использовать уникальные коды типов транзакций.


+++++++++++++++++++++++++выписка корректировка+++++++++++++++++++++++++++++++++++++++++

Здравствуйте Алмас,

Похоже что такое же решение позволит закрыть проблему с "Payment To Client from Bank Account"

Прошу вас на тестовой системе изменить описание записей в mess_dict:

select * from ows.mess_dict where OBJECT_TYPE = 'Transaction' and OBJECT_NAME = 'GL Transaction' and MESSAGE_LABEL = 'T1BACA';

Установите MESSAGE_NAME в значение "Transfer From Employer (Fee): Bank Account --> Client Account".

Проверьте, что в выписке по старым проводкам отображаются корректные расшифровки типов транзакции.

Сообщите, пожалуйста, результат тестирования.

С уважением,

Aleksandr Zaonegin
OpenWay Service
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
(select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type ) trans_type_name, d.trans_type,
(select ts.name from ows.trans_subtype ts  where ts.amnd_state='A' and ts.id=mt.trans_subtype) trans_subtype_name, mt.trans_subtype  trans_subtype_id,
mt.trans_code m_transaction_trans_code,
et.trans_code entry_trans_code,
et.service_id

from ows.doc d , ows.m_transaction mt , ows.entry et 
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and mt.id=et.m_transaction__id
and et.service_class='T'
and et.service_id is null
and upper(et.trans_code) like '%BACA'
and d.amnd_date>to_date('01052015','ddmmyyyy')
and d.id>247620334
and d.trans_type=35316


select count(*)
from  ows.m_transaction mt , ows.entry et 
where 
mt.service_class='T'
and mt.posting_status='P'
and mt.id=et.m_transaction__id
and et.service_class='T'
and et.service_id is null
and upper(et.trans_code) like '%BACA'
and exists (
            select *  from ows.trans_subtype ts , ows.trans_type tt
            where ts.amnd_state='A'
            and ts.id=mt.trans_subtype
            and ts.trans_type__oid=tt.id
            and tt.amnd_state='A'
            and tt.name =' Cash Deposit'
            )


select et.*
from  ows.m_transaction mt , ows.entry et 
where 
mt.service_class='T'
and mt.posting_status='P'
and mt.id=et.m_transaction__id
and et.service_class='T'
and et.service_id is null
and upper(et.trans_code) like '%BACA'
and exists (
            select *  from ows.trans_subtype ts , ows.trans_type tt
            where ts.amnd_state='A'
            and ts.id=mt.trans_subtype
            and ts.trans_type__oid=tt.id
            and tt.amnd_state='A'
            and tt.name =' Cash Deposit'
            )
and rownum<=5
and mt.local_date>to_date('01012016','ddmmyyyy')            


select * from ows.mess_dict
  where object_type = 'Transaction' and object_name = 'Transaction'
    and amnd_state = 'A'
    and message_label in ('IDT:T4BACA','IDT:T1BACA','T4BACA','T1BACA');

Select * from ows.dict where code in ('T4BACA','T1BACA');

select * from entry where item__id in (select id from item where account__oid in (select id from account where acnt_contract__oid = <id контракта>));

select * from SERVICE_APPROVED where id in (select service_id from entry where item__id in (select id from item where account__oid in (select id from account where acnt_contract__oid = <id контракта>)));

select * from trans_subtype where id in (select transaction from SERVICE_APPROVED where id in (select service_id from entry where item__id in (select id from item where account__oid in (select id from account where acnt_contract__oid = <id контракта>))));
ows.m_transaction

select * from ows.mess_dict
  where object_type = 'Transaction' and object_name = 'Transaction'
    and amnd_state = 'A'
    and message_label in ('IDT:T4BACA','IDT:T1BACA','T4BACA','T1BACA')
    and language is null;
    
    Александр, в продолжении телефонного разговора высылаю Вам данные по таблицам и сформированную выписку по клиенту. 
    Прошу Вас обратить внимание на документы по пеймантам(Transfer From Employer (Fee)) зачисленным в период с 17/06/2016 по 04/07/2016г.
     почему то при формировании значения tran_code(на уровне таблицы m_transaction) система прописывает только первые две позиции со значения tran_code таблицы trans_type.
     
     По запросу Select count(*) from doc where trans_type in (35316, 38563) and posting_date > to_date('<дата начала проблемного периода>', 'dd/mm/yyyy') 
Результат получился 1079276 записей .

По второму запросу , данные во вложении .



Александр , 

На счет 1 го варианта (1. Код типа транзакции Transfer From Employer - T12, код типа транзакции Cash Deposit - T4.), не могу сказать что корректный , 
так как по операции Transfer From Employer в выписке формируется   Payment To Client from Bank Account: Bank Account --> Client Account  .

Во вложении выписка по транзакции , данные по транзакции и настройки типов транзакции .


С уважением,
Алимкулов Алмас Елтанович


Здравствуйте Алмас,

В первом варианте все выглядит корректно. Правильно будет утверждать что это настройки, которые соответвуют первому варианту который был предложен для тестирования?
Я имею ввиду:
1. Код типа транзакции Transfer From Employer - T12, код типа транзакции Cash Deposit - T4. 
Проведите, пожалуйста, обе операции и сформируйте выписку. Пришлите нам выборки из таблицы doc, entry, m-trasnsaction для обеих операций, а также полученную выписку. 


С уважением,

Aleksandr Zaonegin
OpenWay Service

cards_reports.STMT_TRANS_DETAILS(:P_trans_contract_order, :P_PAN_MASK, :P_PRINT_MASK, :P_EXT_TRANS_DETAILS, doc_id, posting_date, contract_id, Contract_for, parent_service, trans_sub_type, /*tt.id, */request_cat,  Service_Class, trans_country, trans_city, trans_details, /*charge_event, */trans_code, m_transaction__id,entry_id)




select * from ows.doc d where d.target_number='KZ79914CC39865862980'  and d.amnd_state='A'

select * from ows.m_transaction mt where mt.doc__oid in (select d.id from ows.doc d where d.target_number='KZ79914CC39865862980' and d.amnd_state='A')

select * from ows.entry et where et.m_transaction__id in (select mt.id from ows.m_transaction mt where mt.doc__oid in
                                                   (select d.id from ows.doc d where d.target_number='KZ79914CC39865862980'   and d.amnd_state='A'))


select 
(select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type ) trans_type_name, d.trans_type,
(select ts.name from ows.trans_subtype ts  where ts.amnd_state='A' and ts.id=mt.trans_subtype) trans_subtype_name, mt.trans_subtype  trans_subtype_id,
mt.trans_code m_transaction_trans_code,
et.trans_code entry_trans_code,
et.service_id
from ows.doc d , ows.m_transaction mt , ows.entry et 
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and mt.id=et.m_transaction__id
and et.service_class='T'
and upper(et.trans_code) like '%BACA'
and d.amnd_date>to_date('01062015','ddmmyyyy')
and d.id>260805288
and rownum<200000
order by 1,3

select d.id, d.amnd_date from ows.doc d where d.amnd_date=to_date('25052016 12:00','ddmmyyyy hh24:mi')

 select * from ows.trans_type tt where tt.name in ('Payment To Client from Bank Account','Transfer From Employer (Fee)', ' Cash Deposit')
 order by 6
 
 select * from ows.dict dc 
 where dc.name like 'Payment To Client from Bank Account%' 
 or dc.name like 'Transfer From Employer (Fee)%' 
 or dc.name like ' Cash Deposit%' 
 order by 6
 
 select * from ows.mess_dict
  where object_type = 'Transaction' and object_name = 'Transaction'
    and amnd_state = 'A';

Select * from ows.dict where code like 'T%BACA';


Select * from ows.dict where GROUP_CODE in ('Trans274347', 'Trans264397');


++++++++++++++++++++++++++++++очистка usage action поле схемы++++++++++++++++++++++++++++++++++++++++++++++++++++
DECLARE         
CURSOR MIG_CUR_2 is (select DISTINCT ac.id, ac.contract_number, ua.id ua_id, ua.new_scheme from ows.acnt_contract ac, ows.usage_action ua
    where ua.event_type = (select id from ows.event_type et 
                          where et.amnd_state = 'A'
                          and et.code = 'STOP_ACNT')
    and ua.posting_status = 'P'
    and ua.acnt_contract__id = ac.id
    and ua.new_scheme is not null
    and ac.amnd_state = 'A'
    and ac.CCAT           = 'P'
    AND ac.CON_CAT        = 'A'
    AND ac.PCAT           ='C'
    AND ac.acc_scheme__id IN (select id from ows.acc_scheme acs where acs.amnd_state='A' 
and lower(acs.scheme_name) like 'cr%' 
and lower(acs.scheme_name) not like '%univer%') 
    );    

ErrMsg dtype. Name %Type;

BEGIN
 
 glob.BUTTON_PROC_START('Migrate Credit Contract OLD Scheme v.1_0 Part 1', 'Migr From StopScheme and Update Usage_action OLD Scheme');

for rec in MIG_CUR_2
 LOOP
  update usage_action set new_scheme = null where id = rec.ua_id;
  stnd.PROCESS_MESSAGE(stnd.Information , 'Update Usage_action_ID='|| rec.ua_id ||' for contract '||rec.contract_number);

 END LOOP;
 commit;
 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++поиск ордеров активных+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select so.*
from ows.standing_order so ,ows.acnt_contract ac 
where so.order_category='N' 
and so.is_ready='Y' 
and so.is_active='Y'
and so.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.is_ready<>'C'
and ac.contr_status not in (86,465)
and so.target_number  in ('038-SPO','038-INTERESTS')
and so.pcat='C'
and so.amnd_state='A'
and so.date_event='M'

select so.*
from ows.standing_order so ,ows.acnt_contract ac 
where so.order_category='N' 
and so.is_ready='Y' 
and so.is_active='Y'
and so.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.acc_scheme__id=24577
and ac.serv_pack__id=38219  
and ac.is_ready<>'C'
and ac.contr_status=51
and so.target_number not in ('038-SPO','038-INTERESTS')

++++++++++++++++++++++++++++миграция кредитной схемы++++++++++++++++++++++++++++++++++++
select 
distinct  ac.contract_number 
 from ows.usage_action ua , ows.acnt_contract ac 
where ua.posting_status<>'J'
and ua.event_type in (select et.id from ows.event_type et where et.name='GRC: OVD END' and et.amnd_state='A')
and ua.start_date>to_date('30062016','ddmmyyyy')
and ua.next_action is null
and ac.amnd_state='A'
and ua.acnt_contract__id=ac.id
and ua.record_date>to_date('30062016','ddmmyyyy') 
and ac.acc_scheme__id in 
   (select id from ows.acc_scheme acs
    where lower(acs.scheme_name) like 'cr%univer%' 
    and acs.amnd_state='A')
 and ac.con_cat='A'
 and ac.is_ready<>'C'  


select *
from ows.item it
where it.account__oid in 
    (select id 
     from ows.account ac
     where ac.acc_templ__id in 
          (select id 
           from ows.acc_templ acc
           where acc.acc_scheme__oid in (select acs.id from ows.acc_scheme acs 
                                        where acs.amnd_state='A'
                                        and acs.scheme_name in (
                                        'Cr KZT Universal Grace NRes', --26853
                                        'Cr KZT Universal Grace Res', --26858
                                        'Cr RUB Universal Grace Res', --27193
                                        'Cr USD Universal Grace Res', --26873
                                        'Cr KZT Universal Grace Res Stop60'-- 30197
                                        ))
           and acc.account_type__id in (select id from ows.account_type act where act.amnd_state = 'A' and act.name in ('Cl Overdue', 'Cl Overdue To Close', 'OVD Interest') 
           and acc.amnd_state = 'A')
          )
     )
and it.date_from > to_date('01.06.2016', 'DD.MM.YYYY') order by it.account__oid



 select ac.* from ows.acnt_contract ac, ows.account acc, ows.item i, ows.entry e
  where  ac.contract_number='KZ73914CP39875217121' and ac.amnd_state='A'
  and acc.acnt_contract__oid=ac.id
  and acc.code in ('P','P1','P2')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01072016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u','U')
 and e.posting_date>=to_date('12072016','ddmmyyyy')


select distinct ac.contract_number
from ows.acnt_contract ac , ows.account acc, ows.acc_scheme acs
where acc.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.con_cat='A'
and acc.code in ('<')
and acc.current_balance<>0
and acs.amnd_state='A' 
and acs.scheme_name='Cr KZ Priv Res 10-24 CrC TKB' 
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and exists (
 select ac2.* from ows.acnt_contract ac2, ows.account acc, ows.item i, ows.entry e
  where  ac2.contract_number=ac.contract_number  
  and ac2.amnd_state='A'
  and acc.acnt_contract__oid=ac2.id
  and acc.code in ('<')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01082016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u')
 and e.posting_date>=to_date('12082016','ddmmyyyy')
  and e.posting_date<to_date('15082016','ddmmyyyy')
 )
 order by 1

select distinct ac.contract_number
from ows.acnt_contract ac , ows.account acc, ows.acc_scheme acs
where acc.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.con_cat='A'
and acc.code in 
('-9','-8','-13','-12','-7','-6','-4','-2','-1','-11','-10','-17','-16','-15','-14','-5','-3','-','S4','S5','F1','F3','F2','S2','i')
and acc.current_balance<>0
and acs.amnd_state='A' 
and lower(acs.scheme_name) like 'cr%univer%' 
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and exists (
 select ac2.* from ows.acnt_contract ac2, ows.account acc, ows.item i, ows.entry e
  where  ac2.contract_number=ac.contract_number
  and ac2.amnd_state='A'
  and acc.acnt_contract__oid=ac2.id
  and acc.code in ('P','P1','P2')
  and acc.id=i.account__oid
 and I.DATE_from>=to_date('01062016','ddmmyyyy')
 and e.item__id=i.id
 and e.service_class in ('u','U')
 and e.posting_date>=to_date('12072016','ddmmyyyy')
  and e.posting_date<to_date('20072016','ddmmyyyy')
 )
 order by 1


 Запрос 2:

SELECT ac.id, ac.contract_number, ac.amount_available, ua.start_date, round(ows.glob.LDATE - ua.start_date, 0) due
FROM ows.acnt_contract ac,
  ows.usage_action ua
WHERE ac.amnd_state   = 'A'
AND ac.CCAT           = 'P'
AND ac.CON_CAT        = 'A'
AND ac.PCAT           ='C'
AND ac.acc_scheme__id IN ( 26853,26858,27193,26873) -- Add scheme_ID with new settings
AND ua.ACNT_CONTRACT__ID=ac.id 
AND ua.event_type         = (select et.id from ows.event_type et where et.amnd_state = 'A' and et.code = 'OVERDUE')
AND ua.POSTING_STATUS     ='P'
and not exists (
  select ua.id 
  from ows.usage_action ua, ows.event_type et
  where ua.ACNT_CONTRACT__ID=ac.id
  AND et.amnd_state = 'A'
  AND ua.event_type = et.id
  AND et.code in ('OVD_DUE_1_90', 'OVD_DUE_90', 'OVD_DUE_180')  
)

1753342

Запрос 1:

SELECT ac.*
FROM ows.acnt_contract ac
WHERE ac.amnd_state   = 'A'
AND ac.CCAT           = 'P'
AND ac.CON_CAT        = 'A'
AND ac.PCAT           ='C'
AND ac.acc_scheme__id = 30197 -- Add scheme_ID of old STOP_scheme


select  distinct ac.contract_number,
acc.account_name, acc.current_balance
from ows.account acc, ows.acnt_contract ac
where acc.account_type in (11,792,793,794,795,796,797) --ovd 
and acc.current_balance<>0
and ac.id=acc.acnt_contract__oid
and ac.amnd_state='A'

select  ac.contract_number,
acc.account_name, acc.current_balance
from ows.account acc, ows.acnt_contract ac
where acc.account_type in (798,848,857,866,875,884,893) --ovd int
and acc.current_balance<>0
and ac.id=acc.acnt_contract__oid
and ac.amnd_state='A'

select * from ows.account_type tc 
where tc.amnd_state='A'
and upper(tc.name) like '%OVD%' 


++++++++++++++++++++++++++++++количество операции по каналам++++++++++++++++++++++++++++++++++++++++++++++

select  t.trans_channel, count(*)/31 kolvo from 
(select 
case when d.source_channel in ('V','S') or d.target_channel in ('V','S')  then 'Visa'
     when d.source_channel ='E' or d.target_channel='E' then 'MasterCard'
     when d.source_channel='H' or d.target_channel='H' then 'Cup'
       else d.target_channel||d.source_channel end trans_channel      
from ows.doc d 
where d.amnd_state='A'
and ((d.is_authorization in ('Y','P','Z')
    and d.source_channel  in ('V','S','E','H')
    and d.target_channel in ('v','e','h') ) or 
      (d.is_authorization in ('N') 
      and d.source_channel  in ('A','W')
      and d.target_channel  in ('V','S','E','H') ))
and d.trans_type  in (700,33213)
and d.amnd_date>=to_date('01122016','ddmmyyyy')
and d.amnd_date<to_date('01012017','ddmmyyyy')
and d.id>349329895
and d.id<373423739
) t
group by  t.trans_channel

+++++++++++++++++++++++++++++++проблема выписка+++++++++++++++++++++++++++++++++++++++++++++++
select d.* from 
(select    
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='33122016STMT'  --for update --выгруженный 9 янв
and pg.surname='G342024O82PN' ) t, ows.doc d
where d.amnd_state='A'
--and (d.auth_code=t.auth_code or t.auth_code is null)
--and (d.source_reg_num=t.srn or t.srn is null)
and substr(d.target_number,1,4)||'****'||substr(d.target_number,13,16)=t.card_num
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date>to_date('11122016','ddmmyyyy')


select substr('5578123456785721',1,4)||'****'||substr('5578123456785721',13,16) from dual
where substr('5578123456785721',1,4)||'****'||substr('5578123456785721',13,16)='5578****5721'


select /*+ordered index(cl, client_zip_code)*/
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,DECODE(ac.report_type, 'A', 'Merchant Transactions Statement.rdf', 'H', 'Merchant Transactions Statement.rdf', 'R', 'Merchant Transactions Statement.rdf') "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8"
from client cl, acnt_contract ac, v_local_constants lc, officer o
where cl.amnd_state = 'A'
 and cl.branch is not null
 and ac.client__id = cl.id
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.amnd_state = 'A'
 and ac.report_type in ('A','H','R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name



select pg.rnn, pg.inform
from ows.pragmaclient pg 
where pg.inform='19012017REPORT' for update

select * from ows.acnt_contract ac where ac.id in (5296437,363739,6654814) and 
ac.contract_number in ('KZ29914CC39861016887','KZ59914CC39837082955','KZ93914CC39823444725')


select pr.rnn,pr.inform from ows.pragmaclient pr
where pr.inform='15022017ACC' --for update


select distinct ac2.contract_number from ows.pragmaclient pr, ows.acnt_contract ac, ows.client c,ows.acnt_contract ac2
where ac.amnd_state='A'
and c.amnd_state='A'
and pr.inform='15022017ACC'
and pr.rnn=ac.contract_number
and ac.acnt_contract__oid=ac2.id
and ac2.amnd_state='A'
and ac2.con_cat='A'
and ac.client__id=c.id
and lower(c.short_name) not like '%inst%'
and lower (ac.tr_first_nam) like '%instant%'
and lower (ac.tr_last_nam) like '%card%'


 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , mt.*
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='33122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
UNION 
 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , mt.*
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='33122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
/*and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null*/
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
order by 2,1

select d.* from 
(select    
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='23122016STMT'  --for update --выгруженный 9 янв
 ) t, ows.doc d , ows.pragmaclient pg
where d.amnd_state='A'
and (d.auth_code=t.auth_code or t.auth_code is null)
and (d.source_reg_num=t.srn or t.srn is null)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,13,16)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'



select * from ows.pragmaclient pg where pg.inform='23122016STMT'

'33122016STMT'  --данные по 2 загрузку
'23122016STMT' -- данные по 1 загрузке
'19012017REPORT' --данные по всем документам за 13 декабря


select 
(select acc.account_name from ows.account acc where acc.id=de.ACCOUNT__OID), de.*
 from ows.doc_entry de where de.SOURCE_REG_NUM='G342024O82PN'
 
 select * from ows.account acc where acc.id in (4580979,4627098)
 
 select * from ows.acnt_contract ac where ac.id in (7284225,7284254)

select d.* from 
(select    
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='33122016STMT'  --for update --выгруженный 9 янв
and pg.iin='4003***0109' ) t, ows.doc d
where d.amnd_state='A'
and (d.auth_code=t.auth_code or t.auth_code is null)
and (d.source_reg_num=t.srn or t.srn is null)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,13,16)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')



select d.* from 
(select    
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='33122016STMT'  --for update --выгруженный 9 янв
and pg.iin='4003***0109' ) t, ows.doc_entry de , ows.doc d
where d.amnd_state='A'
and (de.auth_code=t.auth_code or t.auth_code is null)
and (de.source_reg_num=t.srn or t.srn is null)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,13,16)
and t.trans_date=trunc(de.trans_date)
and de.trans_amount=t.trans_amount
and de.posting_date=to_date('13122016','ddmmyyyy')
and de.DOC__OID=d.id


select 
(select acc.account_name from ows.account acc where acc.id=de.ACCOUNT__OID), de.*
 from ows.doc_entry de where de.SOURCE_REG_NUM='G342024O82PN'
 
select * from ows.entry 
 

select * from ows.doc dd where dd.source_reg_num ='G3250245UTIQ'

 select * from ows.account acc where acc.id in (4580979,4627098)
 
 select * from ows.acnt_contract ac where ac.id=8576913 and ac.amnd_state='A'
 
 select * from ows.acnt_contract ac 
 where ac.amnd_state='A'
 and ac.pcat='M'
 and ac.con_cat='A'
 and ac.ccat='C'
 and ac.f_i='724'
 and ac.report_type='R'
 and 
 
 
 
 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , d.* from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='23122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn )
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and d.source_reg_num='G348024V4VD8'
order by 2,1









 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , mt.*
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
order by 2,1





select f.* 
from ows.pragmaclient pg , ows.doc f
where pg.inform='19012017REPORT'
and pg.rnn=f.id
and f.source_reg_num='G348024UMFOP'
and f.amnd_state='A'


select  pg.rnn,pg.iin,pg.regnumber, pg.surname ,pg.clientname, pg.fathersname,pg.clnumber,pg.inform
from ows.pragmaclient pg 
where pg.inform='43122016STMT'




select  pg.*  from ows.pragmaclient pg 
where pg.inform='23122016STMT' 

select substr('6762803889032189',1,4)||'***'||substr('6762803889032189',length('6762803889032189')-3,4)  from dual



++++++++++++++++++++++++++++++++выгрузка для ЦХД  сверка way4rest++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 'date_id;acc_id;acc_num;blac_id;blac_num;curr_code;clnt_name;atyp_id;bal_curr;bal_tenge' from dual
union all
select 
to_char(sysdate-1,'dd/mm/yyyy')||';'||ac.id||';'||ac.contract_number||';'||ga.id||';'||acc.gl_number||';'||(select c.name from ows.currency c where c.amnd_state='A' and c.code=ac.curr)||';'||nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)||';'||acc.account_type||';'||rtrim(to_char(ows.rpr.GET_ACC_BAL(acc.id,sysdate-1), 'fm999999999990D9999999999999'), '.,')||';'||rtrim(to_char(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',( ows.rpr.GET_ACC_BAL(acc.id,sysdate-1)),sysdate-1), 'fm999999999990D9999999999999'), '.,') a
from ows.acnt_contract ac, ows.account acc, ows.client cl,ows.gl_account ga
where 
ac.amnd_state='A'
and cl.amnd_state='A' 
and ac.pcat='C'
and ac.f_i=724
and ac.client__id=cl.id
and ac.id=acc.acnt_contract__oid
and ac.con_cat='A'
and ga.gl_number=acc.gl_number
and ga.curr=acc.curr
and (exists ( select * from  ows.account acc
             where acc.acnt_contract__oid =ac.id
             and   ows.rpr.GET_ACC_BAL(acc.id,sysdate-1)<>0) 
     or 
     exists (select * from ows.contr_status cs 
             where cs.amnd_state='A' and cs.is_valid in ('D','V') and cs.id=ac.contr_status))
             

++++++++++++++++++++++++++++++unknow++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


select ac.contract_number contract_dev,dev.contract_number device_id, ac.branch branch_code, br.name branch_name
 from ows.acnt_contract dev, ows.acnt_contract ac, ows.branch br
where dev.contract_number='00064013' and dev.amnd_state='A'
and dev.terminal_category='A' and dev.acnt_contract__oid=ac.id
and ac.amnd_state='A' and br.amnd_state='A' and br.code=ac.branch


select ac.contract_number contract,
      (select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id=ac.contr_status) status_contracta,
      ca.contract_number card,
      (select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id=ca.contr_status) status_carty,
      ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) avail_teg,
      ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'398',d.settl_amount,sysdate) trans_teg,
      sum(ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'398',d.settl_amount,sysdate)) over (partition by ac.contract_number) sum_oper,
      count(d.id)  over (partition by ac.contract_number) kolvo_oper,
      d.source_number device_id,
          (select ac.contract_number 
             from ows.acnt_contract dev, ows.acnt_contract ac
            where dev.contract_number=d.source_number 
            and dev.amnd_state='A'
            and dev.terminal_category='A' 
            and dev.acnt_contract__oid=ac.id
            and ac.amnd_state='A' ) contract_dev,
         (select  ac.branch 
          from ows.acnt_contract dev, ows.acnt_contract ac
          where dev.contract_number=d.source_number 
            and dev.amnd_state='A'
            and dev.terminal_category='A' 
            and dev.acnt_contract__oid=ac.id
            and ac.amnd_state='A' ) branch_code,
          (select  br.name
          from ows.acnt_contract dev, ows.acnt_contract ac, ows.branch br
          where dev.contract_number=d.source_number 
            and dev.amnd_state='A'
            and dev.terminal_category='A' 
            and dev.acnt_contract__oid=ac.id
            and ac.amnd_state='A' 
            and br.amnd_state='A' and br.code=ac.branch) branch_code
      from ows.doc d,ows.acnt_contract ca,ows.acnt_contract ac,ows.pragmaclient pg
      where d.amnd_state='A'
      and d.source_channel='A'
      AND d.is_authorization = 'N' 
      and ca.amnd_state='A'
      and ca.contract_number=d.target_number
      and ac.amnd_state='A'
      and ac.id=ca.acnt_contract__oid
      and pg.inform='270916ATM' 
      and d.id=pg.rnn




      select 
      distinct d.source_number
      from ows.doc d,ows.acnt_contract ca,ows.acnt_contract ac,ows.pragmaclient pg
      where d.amnd_state='A'
      and d.source_channel='A'
      AND d.is_authorization = 'N' 
      and ca.amnd_state='A'
      and ca.contract_number=d.target_number
      and ac.amnd_state='A'
      and ac.id=ca.acnt_contract__oid
      and pg.inform='270916ATM' 
      and d.id=pg.rnn


select pg.*
 from ows.pragmaclient pg where pg.inform='270916ATM' 
 
 select 
 (select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch ) 
  from ows.acnt_contract ac ,ows.client cl
  where ac.amnd_state='A' and ac.contract_number in (
'00064013',
'00050026',
'00011021',
'00025182',
'00011022',
'00025152',
'00011037',
'00050010'
) and ac.terminal_category='A'
and ac.client__id=cl.id
and cl.amnd_state='A'
 

+++++++++++++++++++++++++++++++++++++gl_account+++++++++++++++++++++++++++++++++++++++++++++++++++++++
  select s.* from
 ( select
  ga.gl_number,
  count(ga.gl_number) over(partition by ga.gl_number) cf ,
  ga.total_credit,ga.total_debit,ga.total_turnover
  from ows.gl_account  ga where ga.amnd_state='A') s
 where s.cf>1

 +++++++++++++++++++++++++++++++++ком и опер доход++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 select  
case when d.service_class='T'  then 'Opercionny dohod tenge'
     else 'Kommisionny dohod tenge' end tip ,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG        
from ows.gl_trace_srvc gt, ows.doc d
where d.amnd_state='A'
and gt.doc__oid=d.id
and gt.entry_role in ('F','A') -- fee . add fee
and gt.cr_contract<>3838660 -- not credit cnp fee
and gt.dr_contract<>3838660 -- not debit cnp fee
and (  ( d.trans_type in (5,50) and gt.cr_contract<>357580    --not 038-MERCHANT_FEE  for retail
                             and gt.dr_contract<>357580) or  d.trans_type not in (5,50))         -- or all                    
and d.is_authorization='N'
and d.posting_status='P'
      AND D.AMND_DATE>=TO_DATE('25122015','DDMMYYYY')
      AND D.ID>198053460
      AND D.ID<213678989
      and d.target_channel='h'
      AND D.TRANS_DATE>=TO_DATE('01012016','DDMMYYYY')
      AND D.TRANS_DATE<TO_DATE('01022016','DDMMYYYY')
group by d.service_class

select  d.trans_type,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG        
from ows.gl_trace_srvc gt, ows.doc d
where d.amnd_state='A'
and gt.doc__oid=d.id
and gt.entry_role in ('F','A')
and gt.cr_contract<>3838660
and gt.dr_contract<>3838660
and d.trans_type in (41238,41258)                       
and d.amnd_date>=to_date('12122016','ddmmyyyy')
and d.id>357053480
and d.is_authorization='N'
and d.service_class='M'
and d.posting_status='P'
group by d.trans_type

select CL.CLIENT_NUMBER from ows.client cl where cl.amnd_state='A' and cl.reg_number='600820302208'

SELECT PG.REGNUMBER,PG.INFORM
 FROM OWS.PRAGMACLIENT PG WHERE PG.INFORM='05102016DOHOD' 
 
 SELECT AC.CONTRACT_NUMBER,sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG    
 FROM OWS.CLIENT CL , OWS.ACNT_CONTRACT AC , OWS.PRAGMACLIENT PG, OWS.ACCOUNT ACC, OWS.ITEM IT, OWS.ENTRY ET, OWS.DOC D,ows.gl_trace_srvc gt
 WHERE AC.AMND_STATE='A' AND AC.CON_CAT='A'  
 AND CL.AMND_STATE='A'
 AND CL.ID=AC.CLIENT__ID
 AND CL.REG_NUMBER=PG.REGNUMBER
 AND PG.INFORM='05102016DOHOD' 
 AND ACC.ACNT_CONTRACT__OID=AC.ID
 AND ACC.CODE='X' 
 AND IT.ACCOUNT__OID=ACC.ID
 AND IT.SERVICE_CLASS='T'
 AND ET.ITEM__ID=IT.ID
 AND ET.DOC_ID=D.ID
 AND ET.SERVICE_CLASS='T'
 AND D.SERVICE_CLASS='T'
 AND GT.doc__oid=D.ID
 and gt.cr_contract<>3838660 -- not credit cnp fee
 and gt.dr_contract<>3838660 -- not debit cnp fee
 AND d.amnd_state='A'
 and gt.entry_role in ('F','A')
 and d.is_authorization='N'
 and d.posting_status='P'
 AND (gt.cr_contract=357580    --not 038-MERCHANT_FEE  for retail
        OR gt.dr_contract=357580)
 and ac.contract_number='KZ22914CC39894455823'
 and d.trans_date>=to_date('29102012','ddmmyyyy')       and d.trans_date<to_date('31102012','ddmmyyyy') 
 group by AC.CONTRACT_NUMBER
 
 
select  
case when d.service_class='T'  then 'Opercionny dohod tenge'
     else 'Kommisionny dohod tenge' end tip ,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG        
from ows.gl_trace_srvc gt, ows.doc d
where d.amnd_state='A'
and gt.doc__oid=d.id
and gt.entry_role in ('F','A') -- fee . add fee
and gt.cr_contract<>3838660 -- not credit cnp fee
and gt.dr_contract<>3838660 -- not debit cnp fee
and (  ( d.trans_type in (5,50) and gt.cr_contract<>357580    --not 038-MERCHANT_FEE  for retail
                             and gt.dr_contract<>357580) or  d.trans_type not in (5,50))         -- or all                    
and d.is_authorization='N'
and d.posting_status='P'
   and d.target_channel='h'
      AND D.AMND_DATE>=TO_DATE('25082016','DDMMYYYY')
      AND D.ID>302798030  
      AND D.TRANS_DATE>=TO_DATE('01092016','DDMMYYYY')--SEP
group by d.service_class
      

                          select cl.short_name, cl.reg_number,cl.client_number,
                          CL.Company_Nam,
                          cl.add_info_01 ,
                          sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG  
                               from ows.device_rec dr,
                                    ows.acq_dev_cycle acc,
                                    ows.acq_cst_cycle acs,
                                    ows.trans_dispense td,
                                    ows.acnt_contract ac, 
                                    ows.acnt_contract dev,
                                    ows.client cl,
                                    ows.doc d,
                                    ows.gl_trace_srvc gt,
                                    OWS.PRAGMACLIENT PG
                                where 
                                    td.acq_cst_cycle__oid=acs.id
                                and acs.acq_dev_cycle__oid=acc.id
                                and acc.device_rec__oid=dr.id 
                                and dev.id=dr.acnt_contract__oid
                                and dev.acnt_contract__oid=ac.id
                                and ac.client__id=cl.id  
                                and cl.amnd_state='A'
                                and td.trans_date>=to_date('01042016','ddmmyyyy') 
                                and td.trans_date<to_date('01072016','ddmmyyyy') 
                                AND CL.REG_NUMBER=PG.REGNUMBER
                                AND PG.INFORM='05102016DOHOD' 
                                --and cl.reg_number='600400631592'
                                and d.amnd_state='A'
                                and td.doc__id=d.id
                                and d.amnd_state='A'
                                and gt.doc__oid=d.id
                                and gt.entry_role in ('F','A') -- fee . add fee
                                and gt.cr_contract<>3838660 -- not credit cnp fee
                                and gt.dr_contract<>3838660 -- not debit cnp fee
                                and ( gt.cr_contract=357580    --not 038-MERCHANT_FEE  for retail
                                       or gt.dr_contract=357580)          -- or all                    
                                and d.is_authorization='N'
                                and d.posting_status='P'  
                                group by cl.short_name, cl.reg_number,cl.client_number,
                                 CL.Company_Nam,
                                  cl.add_info_01 


++++++++++++++++++++++++++++++++++++++июньский беспредел++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
deb.target_number card_debit, deb.ret_ref_number rrn_deb, deb.trans_amount summa_deb, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=deb.trans_curr) valuta_deb,
pay.target_number card_payment, pay.ret_ref_number rrn_pay, pay.trans_amount summa_pay, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=pay.trans_curr) valuta_pay, 
substr(pay.target_number,1,6) bin_pay,
decode(pay.target_channel ,'S','VISA','MASTER') Channel, 'Успешные' status
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
--and pay.return_code='96'
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and pay.target_channel in ('S','E')
and cl.int_key=pay.source_reg_num
and cl.mtid in('0210','0110')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and deb.posting_status in ('P','J')
union all 
select 
deb.target_number card_debit, deb.ret_ref_number rrn_deb, deb.trans_amount summa_deb, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=deb.trans_curr) valuta_deb,
pay.target_number card_payment, pay.ret_ref_number rrn_pay, pay.trans_amount summa_pay, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=pay.trans_curr) valuta_pay, 
substr(pay.target_number,1,6) bin_pay,
decode(pay.target_channel ,'S','VISA','MASTER') Channel,'Неуспешные' status
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
--and pay.return_code='96'
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and pay.target_channel in ('S','E')
and cl.int_key=pay.source_reg_num
and cl.mtid in('0210','0110')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
--and rc.resp_code='00'
and pay.ret_ref_number in 
('616884988587',
'616984990117',
'616984990102',
'616884987912',
'616884988537',
'616884988662',
'616984992127',
'616884989142',
'616884988502',
'616884988467',
'616884988442',
'616884989122',
'616984992402',
'616884989027',
'616884988347',
'616884987837',
'616884987817',
'616984989317',
'616884987627')

++++++++++++++++++++++++++++++автовыпуск критерии отбора+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


select 
ac.contract_number,
cl.short_name ,
cl.branch,
cl.tr_first_nam,
cl.tr_last_nam,
CL.Client_Number,
ca.contract_number CARD_NUMBER,
(select apl.name from ows.appl_product apl where apl.amnd_state='A' and apl.internal_code=ac.product) product_nam,
(select apl.name from ows.appl_product apl where apl.amnd_state='A' and apl.internal_code=ca.product) Sub_product_nam,
(select sp.name from ows.serv_pack sp where sp.amnd_state='A' and sp.id=ca.serv_pack__id) sp_name,
cl.add_info_01 iin,
(select name from ows.branch br where br.amnd_state='A' and br.code=cl.branch) filial,
(select name from ows.contr_subtype cs where cs.amnd_state='A' and cs.id=ca.contr_subtype__id) plastik
from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.contr_status = '51'
and ac.pcat='C'
and ac.ccat='P'
and ac.client__id=cl.id
and cl.amnd_state='A' 
and ca.acnt_contract__oid=ac.id
and ca.amnd_state='A'
and ca.con_cat='C'
and ca.card_expire='1607'
and ca.contr_type<>44
and ca.contr_subtype__id not in (
select cs.id from ows.contr_subtype cs 
             where (upper(cs.name) like '%VIRT%' or upper(cs.name) like '%INFIN%')
              and cs.amnd_state='A' 
             /* and id not in  (33413,33414,33415,36127,36128,36136,33454,36287,35704,35787,
                     35927,36507,36512,36516,32892,35103,35844,36447,36471,36703,36787,36827,36890,37110,37111,34302,36487)*/
               and cs.con_cat='C' and cs.ccat='P' and cs.f_i='724' )
               and ca.contr_status in (98,14)
and ac.acc_scheme__id in (select acs.id from ows.acc_scheme acs where upper(acs.scheme_name) not like 'CR%'
and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724')
and ac.service_group not in (select sg.code from ows.service_group sg where 
                             sg.amnd_state='A' and sg.ccat='P' and sg.pcat='C' 
                             and (upper(sg.name) like '%STUD%' or upper(sg.name) like '%ГЦВП%'))
and ac.service_group is not null
and lower(ac.service_group) not like '%error%' 
and ac.product IS NOT NULL
and exists (select id from ows.doc d 
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.amnd_date>to_date('10052016','ddmmyyyy')
and d.id>253586000
and d.trans_date>=to_date('25052016','ddmmyyyy')
and d.trans_type in (35448,35678,5,50,447,38987,33213,39734,39476,39489,35265,35590,13,11,34084)
and d.target_number=ca.contract_number)
and not exists ( select * from ows.acnt_contract ca2
                 where ca2.amnd_state='A'
                 and ca2.date_open>=to_date('25052016','ddmmyyyy')
                  and ca2.acnt_contract__oid=ac.id )


++++++++++++++++++++++++++++операции по бину отклоненные ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select (select rc.resp_text from ows.resp_code rc where rc.resp_code=d.return_code ) rc,
d.target_number,d.source_member_id,d.target_member_id,d.trans_date, d.posting_date,d.amnd_date,d.ret_ref_number,d.acq_ref_number,d.source_reg_num, d.id,d.* 
from ows.doc d
where d.amnd_state='A'
and d.is_authorization='N'
and d.source_channel='E'
and d.posting_status='D'
and d.id>275713993
and d.amnd_date>to_date('30062016','ddmmyyyy')
and not exists (select * from ows.bin_table bt 
            where bt.amnd_state='A'
             and  bt.start_bin_4=substr(d.target_number,1,6)
             and bt.member_id like '017741%')
 and d.target_member_id<>'99999999'  
 and d.trans_type<>137  

 +++++++++++++++++++++++++++++++данные о клиентах по пакету ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 select
(select apl.name from ows.appl_product apl where apl.internal_code=ac.product and apl.amnd_state='A') product,
sp.name service_packet,
(select mc.contract_number from ows.acnt_contract mc where mc.amnd_state='A' and mc.id=ac.acnt_contract__oid) Kontrakt,
nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio,
cl.add_info_01 iin,
ac.contract_number card_num
from ows.client cl , ows.acnt_contract ac, ows.serv_pack sp, ows.acnt_contract mc
where cl.amnd_state='A'
and cl.add_info_02='11864'
and ac.amnd_state='A'
and ac.con_cat='C'
and ac.client__id=cl.id
and ac.is_ready<>'C'
and ac.contr_status<>109
and sp.amnd_state='A'
and sp.id=ac.serv_pack__id
and upper(sp.name) not like '%0%FOR%ATM%RK%'
and ac.card_expire>='1701'
and mc.id=ac.acnt_contract__oid
and mc.amnd_state='A'

++++++++++++++++++++++++++++++++выпуск+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ows.fx.MIDDLE_RATE(null,'724',null,'840','398',1000,sysdate) from dual


select dr.terminal_id, dr.device_name , sp.name tarif, ac.date_open ,(select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id= ac.contr_status)
from ows.device_rec dr , ows.acnt_contract ac ,ows.serv_pack sp
where dr.amnd_state='A' 
and dr.f_i='724'
and dr.term_cat='P'
and dr.transaction_class='R'
and ac.id=dr.acnt_contract__oid
and ac.amnd_state='A'
and ac.terminal_category='P'
and ac.base_relation is null
and sp.amnd_state='A'
and sp.id=ac.serv_pack__id
and ac.date_open>=to_date('01012016','ddmmyyyy')
order by 1,4


select * from ows.device_rec dr where dr.terminal_id='00025097' and dr.amnd_state='A'

select * from ows.acnt_contract ac where ac.id='2232273'


select 
ac.contract_number,ca.contract_number
from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca,
(select cn.acnt_contract__oid
                  from ows.pragmaclient pg , ows.acnt_contract cn
                  where pg.inform='16012017SMS' 
                  and cn.contract_number=pg.rnn
                  and cn.amnd_state='A') p
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.contr_status = '51'
and ac.pcat='C'
and ac.ccat='P'
and ac.client__id=cl.id
and cl.amnd_state='A' 
and ca.acnt_contract__oid=ac.id
and ca.amnd_state='A'
and ca.con_cat='C'
and ca.card_expire='1701'
and ca.contr_type<>44
and ac.product IS NOT NULL
and not exists (
             select * from ows.contr_subtype cs 
             where (upper(cs.name) like '%VIRT%' or upper(cs.name) like '%INFIN%' or upper(cs.name) like '%MAESTRO%' or upper(cs.name) like '%MOMENTUM%'
             or upper(cs.name) like '%DIAMOND%' or upper(cs.name) like '%WORLD%')
             and cs.amnd_state='A' 
             and cs.con_cat='C' and cs.ccat='P' and cs.f_i='724'  and cs.id=ca.contr_subtype__id )
and ca.contr_status in (98,14)
and exists  (select * from ows.acc_scheme acs 
                          where upper(acs.scheme_name) not like 'CR%'
                          and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724' and ac.acc_scheme__id=acs.id)
and ac.id=p.acnt_contract__oid




select  distinct  ac.contract_number 
from  ows.acnt_contract ac, ows.usage_action ua ,
    (select 
        ac.contract_number contract,ca.contract_number card
        from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca,
        (select cn.acnt_contract__oid
                          from ows.pragmaclient pg , ows.acnt_contract cn
                          where pg.inform='16012017SMS' 
                          and cn.contract_number=pg.rnn
                          and cn.amnd_state='A') p
        where ac.amnd_state='A'
        and ac.con_cat='A'
        and ac.contr_status = '51'
        and ac.pcat='C'
        and ac.ccat='P'
        and ac.client__id=cl.id
        and cl.amnd_state='A' 
        and ca.acnt_contract__oid=ac.id
        and ca.amnd_state='A'
        and ca.con_cat='C'
        and ca.card_expire='1701'
        and ca.contr_type<>44
        and ac.product IS NOT NULL
        and not exists (
                     select * from ows.contr_subtype cs 
                     where (upper(cs.name) like '%VIRT%' or upper(cs.name) like '%INFIN%' or upper(cs.name) like '%MAESTRO%' or upper(cs.name) like '%MOMENTUM%'
                     or upper(cs.name) like '%DIAMOND%' or upper(cs.name) like '%WORLD%')
                     and cs.amnd_state='A' 
                     and cs.con_cat='C' and cs.ccat='P' and cs.f_i='724'  and cs.id=ca.contr_subtype__id )
        and ca.contr_status in (98,14)
        and exists  (select * from ows.acc_scheme acs 
                                  where upper(acs.scheme_name) not like 'CR%'
                                  and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724' and ac.acc_scheme__id=acs.id)
        and ac.id=p.acnt_contract__oid
        )  pg
where ac.contract_number=pg.card
and ac.amnd_state='A'
and ac.id=ua.acnt_contract__id
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS1%'
                       and upper(et.name) not like '%_L3%')
and not exists (select * from ows.usage_action ua2   where ua2.acnt_contract__id=ac.id  and ua2.start_date>=to_date('19012017','ddmmyyyy')
                and ua2.event_type in (select id from ows.event_type et 
                                       where et.amnd_state='A' and et.name='Customers WB1' ) )                
and ua.posting_status='S'
and ac.acnt_contract__oid not in (2005966,1982606,4162364,4452950)





select  pg.rnn  from ows.pragmaclient pg 
where pg.inform='19012017SMS' 

select substr(con.contract_number, 1, 6) || '***' ||
       substr(con.contract_number, -4) card_number,
       nvl(trim(cl.last_nam || ' ' || cl.first_nam || ' ' ||
                cl.father_s_nam),
           cl.short_name) FIO,
       cl.add_info_01 IIN,
       decode(substr(con.contract_number, 1, 6),
              '426345',
              'VISA ELECTRON',
              '426343',
              'VISA CLASSIC',
              '426344',
              'VISA GOLD',
              '420363',
              'VISA PLATINUM',
              '426346',
              'VISA BUSINESS',
              '429017',
              'VISA VIRTUON',
              '446929',
              'VISA INFINITE',
              '419394',
              'VISA INSTANT',
              '457836',
              'VISA ELECTRON CREDIT',
              '457832',
              'VISA CLASSIC CREDIT',
              '457833',
              'VISA GOLD CREDIT',
              '457834',
              'VISA PLATINUM CREDIT',
              '457835',
              'VISA INFINITE CREDIT',
              '677650',
              'MAESTRO',
              '532424',
              'MASTERCARD STANDARD',
              '542762',
              'MASTERCARD GOLD',
              '515627',
              'MASTERCARD PLATINUM',
              '547844',
              'MASTERCARD BUSINESS',
              '530180',
              'MASTERCARD WORLD ELITE',
              '516979',
              'MASTERCARD MOMENTUM',
              substr(con.contract_number, 1, 6)) CARD_TYPE,
       (select cs.name
          from ows.contr_status cs
         where cs.id = con.contr_status
           and rownum = 1) card_status,
       (select sp.name
          from ows.serv_pack sp
         where sp.id = con.serv_pack__id
           and rownum = 1) card_serv_pack,
       (select b.name
          from ows.branch b
         where b.amnd_state = 'A'
           and b.code = cl.branch
           and rownum = 1) branch_name,
       (select h.name
          from ows.sy_handbook h
         where h.amnd_state = 'A'
           and h.group_code = 'CL_BRANCH'
           and h.code = cl.branch
           and rownum = 1) branch_city,
       upper(trim(con.add_info_03)) "Привлеченец",
       con.date_open date_open_card,
       cont.contract_number,
       cont.date_open date_open_contract,
       cc.Rank card#
  from ows.acnt_contract con
  left join ows.acnt_contract cont on cont.id = con.acnt_contract__oid
  left join (select conc.id card_id,
                    Rank() over(partition by conc.acnt_contract__oid order by conc.date_open, conc.id) Rank
               from ows.acnt_contract conc
               
  +++++++++++++++++++++++++++++невыгруженный номад+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  select rownum||s.d Nomad from
(select '~SBR~'||ac.tr_company||'~WBONUS~2000~'||to_char(ac.date_open,'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.acnt_contract ac ,ows.card_info ci,
              ( select max(ci.seqv_number) mid,ci.acnt_contract__oid aid 
              from ows.acnt_contract ac ,ows.card_info ci , ows.appl_product ap
              where ac.amnd_state='A'
              and ac.pcat='C'
              and ac.con_cat='C' 
              and ac.date_open>=to_date('26082016')
              and ac.contract_number in  ('5355410000270158',
                                          '5355410000107863',
                                          '5355410000259078',
                                          '5355410000244203',
                                          '5355410000379223',
                                          '5355410000242991',
                                          '5355410000364258',
                                          '5355410000372939'
                                          )
              and ac.id=ci.acnt_contract__oid
              and ac.product=ap.internal_code
              and ap.amnd_state='A'
              and upper(ap.name) like '%NOMAD%'
              group by ci.acnt_contract__oid ) f
where f.aid=ac.id
and ac.amnd_state='A'
and ci.seqv_number=f.mid
and ci.production_event in ('NCRD','NLOST','NCRDD','NCU','NCWOPIN')
and ci.acnt_contract__oid=ac.id
union all
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50) 
and (d.posting_date>=to_date('26082016','ddmmyyyy') and d.posting_date<to_date('10012017','ddmmyyyy')) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and ac.contract_number in        ('5355410000270158',
                                          '5355410000107863',
                                          '5355410000259078',
                                          '5355410000244203',
                                          '5355410000379223',
                                          '5355410000242991',
                                          '5355410000364258',
                                          '5355410000372939'
                                          )
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name
union all
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap, ows.pragmaclient pg
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50) 
and (d.posting_date>=to_date('13072016','ddmmyyyy') and d.posting_date<to_date('10012017','ddmmyyyy')) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and pg.inform='10012017NWB'
and ac.contract_number=pg.regnumber
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name
) s





select rownum||s.d Nomad from
(
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50) 
and (d.posting_date>=to_date('26122016','ddmmyyyy') and d.posting_date<to_date('16022017','ddmmyyyy')) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and ac.contract_number in  ('5355410000186206')
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name
) s





select 
a.main_contract,
(select contract_number from ows.acnt_contract where id= a.acnt_contract__id),
a.posting_status
from ows.appl_acnt a where a.appl_reg_number in (select ows.rpr.GET_TAG_VALUE(r.parms,'REG_NUM') from ows.file_record r where r.file_info__oid=30882487)


select * from ows.appl_acnt aa where aa.main_contract='KZ61914CP39854446630'

select * from ows.acnt_contract ac where ac.id=1755711

select * from ows.pragmaclient pr
where pr.inform='15122016SMS' 

select distinct pg.inform from ows.pragmaclient pg
where pg.inform like '%122016SMS'


select cn.contract_number
from ows.pragmaclient pg , ows.acnt_contract cn
where pg.inform='16012017SMS' 
and cn.contract_number=pg.rnn
and cn.amnd_state='A'
and exists ( select * from ows.acnt_contract co
             where  cn.acnt_contract__oid=co.acnt_contract__oid
                    and co.amnd_state='A'
                    and co.card_expire='1701')

select cn.acnt_contract__oid
from ows.pragmaclient pg , ows.acnt_contract cn,ows.acnt_contract co
where pg.inform='16012017SMS' 
and cn.contract_number=pg.rnn
and cn.amnd_state='A'
and cn.acnt_contract__oid=co.acnt_contract__oid
and co.amnd_state='A'
and co.card_expire='1701'
group by cn.acnt_contract__oid
having count(*)=1

select distinct ac.contract_number
from ows.pragmaclient pg, ows.acnt_contract ac, ows.usage_action ua
where pg.inform='16012017SMS' 
and pg.rnn=ac.contract_number
and ac.amnd_state='A'
and ac.id=ua.acnt_contract__id
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS1%'
                       and upper(et.name) not like '%_L3%')
and ua.posting_status='S'



select 
ac.contract_number,ca.contract_number
from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.contr_status = '51'
and ac.pcat='C'
and ac.ccat='P'
and ac.client__id=cl.id
and cl.amnd_state='A' 
and ca.acnt_contract__oid=ac.id
and ca.amnd_state='A'
and ca.con_cat='C'
and ca.card_expire='1701'
and ca.contr_type<>44
and ca.contr_subtype__id not in (
             select cs.id from ows.contr_subtype cs 
             where (upper(cs.name) like '%VIRT%' or upper(cs.name) like '%INFIN%' or upper(cs.name) like '%MAESTRO%' or upper(cs.name) like '%MOMENTUM%'
             or upper(cs.name) like '%DIAMOND%' or upper(cs.name) like '%WORLD%')
             and cs.amnd_state='A' 
             and cs.con_cat='C' and cs.ccat='P' and cs.f_i='724' )
and ca.contr_status in (98,14)
and ac.acc_scheme__id in (select acs.id from ows.acc_scheme acs 
                          where upper(acs.scheme_name) not like 'CR%'
                          and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724')
and ac.product IS NOT NULL
and ac.id in (select cn.acnt_contract__oid
                  from ows.pragmaclient pg , ows.acnt_contract cn
                  where pg.inform='16012017SMS' 
                  and cn.contract_number=pg.rnn
                  and cn.amnd_state='A')



select distinct ac.acnt_contract__oid, ac.contract_number
from  ows.acnt_contract ac, ows.usage_action ua ,
    (select 
      ac.contract_number contract,ca.contract_number card
      from ows.acnt_contract ac, ows.client cl, ows.acnt_contract ca
      where ac.amnd_state='A'
      and ac.con_cat='A'
      and ac.contr_status = '51'
      and ac.pcat='C'
      and ac.ccat='P'
      and ac.client__id=cl.id
      and cl.amnd_state='A' 
      and ca.acnt_contract__oid=ac.id
      and ca.amnd_state='A'
      and ca.con_cat='C'
      and ca.card_expire='1701'
      and ca.contr_type<>44
      and ca.contr_subtype__id not in (
                   select cs.id from ows.contr_subtype cs 
                   where (upper(cs.name) like '%VIRT%' or upper(cs.name) like '%INFIN%' or upper(cs.name) like '%MAESTRO%' or upper(cs.name) like '%MOMENTUM%'
                   or upper(cs.name) like '%DIAMOND%' or upper(cs.name) like '%WORLD%')
                   and cs.amnd_state='A' 
                   and cs.con_cat='C' and cs.ccat='P' and cs.f_i='724' )
      and ca.contr_status in (98,14)
      and ac.acc_scheme__id in (select acs.id from ows.acc_scheme acs 
                                where upper(acs.scheme_name) not like 'CR%'
                                and acs.amnd_state='A' and acs.pcat='C' and acs.ccat='P' and acs.f_i='724')
      and ac.product IS NOT NULL
      and ac.id in (select cn.acnt_contract__oid
                        from ows.pragmaclient pg , ows.acnt_contract cn
                        where pg.inform='16012017SMS' 
                        and cn.contract_number=pg.rnn
                        and cn.amnd_state='A'))  pg
where ac.contract_number=pg.card
and ac.amnd_state='A'
and ac.id=ua.acnt_contract__id
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS1%'
                       and upper(et.name) not like '%_L3%')
and ua.posting_status='S'
order by 1



select rownum||s.d Nomad from
(select '~SBR~'||ac.tr_company||'~WBONUS~2000~'||to_char(ac.date_open,'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.acnt_contract ac ,ows.card_info ci,
              ( select max(ci.seqv_number) mid,ci.acnt_contract__oid aid 
              from ows.acnt_contract ac ,ows.card_info ci , ows.appl_product ap,(select 
                                                                                 to_date('18082016','ddmmyyyy') d
                                                                                 from dual) a
              where ac.amnd_state='A'
              and ac.pcat='C'
              and ac.con_cat='C' 
              and ac.date_open=a.d
              and ac.id=ci.acnt_contract__oid
              and ac.product=ap.internal_code
              and ac.contract_number='5355410000286881'
              and ap.amnd_state='A'
              and upper(ap.name) like '%NOMAD%'
              group by ci.acnt_contract__oid ) f
where f.aid=ac.id
and ac.amnd_state='A'
and ci.seqv_number=f.mid
and ci.production_event in ('NCRD','NLOST','NCRDD','NCU','NCWOPIN')
and ci.acnt_contract__oid=ac.id
union all
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/200)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap,(select 
                                                                                                       to_date('18082016','ddmmyyyy') d
                                                                                                       from dual) a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50)
and nvl(d.sic_code,'N')<>'6538' 
and (d.posting_date>=a.d and d.posting_date<to_date('31012017','ddmmyyyy')) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and ac.contract_number='5355410000286881'
and acs.f_i=724 
and acs.pcat='C'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name) s
             
               
               
++++++++++++++++++++++++++операции расписанные по контракту +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number "номер Контр",
de.TRANS_DATE "дата опера",
de.RET_REF_NUMBER "номер докум",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr<>1)  then
      (de.AMOUNT+de.FEE_AMOUNT)  else null end "Дебит",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr=1)  then
      (de.AMOUNT+de.FEE_AMOUNT)  else null end "Кредит",
 case when de.trans_type=5
        then 'Безналичная Оплата услуг ПОС\Интернет'
      when de.trans_type=50
        then 'Безналичная Оплата услуг Казино'
      when de.trans_type=13
        then 'Снятие наличных через Банкомат'
      when de.trans_type=11
        then 'Снятие наличных через Кассу'
      when de.trans_type=15
        then 'Безналичное зачисление'
      when de.trans_type in (182,700)
        then 'Безналичное зачисление'
      when de.trans_type in (33213)
        then 'Безналичное списание'
      when de.trans_type in (35314,40274)
        then 'Зачисление Зарплаты'
      when de.trans_type in (35316)
        then 'Зачисление через Кассу'
      when de.trans_type in (35468,35549,35590,35670,35678,37328,37759)
        then 'Списание Комиссиии Банка'
      when de.trans_type in (35630,35636)
        then 'Зачсиление средств с чужого банка через АБИС'
      when de.trans_type in (37980)
        then 'Пополнение через ИПТ'
      when de.trans_type in (39473)
        then 'Зачисление через СБОЛ'
       when de.trans_type in (39476)
         then 'Списание через СБОЛ'
       when de.trans_type in (39489)
         then 'оплата услуг в СБОЛ' end   "назнач платежа",
de.TRANS_DETAILS "информ о контраг",
ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,ac.curr,(ows.rpr.GET_ACC_BAL(acc.id,de.POSTING_DATE)),(de.POSTING_DATE)) "Сальдо",
(select cu.name from ows.currency cu where cu.amnd_state = 'A' and cu.code = ac.curr) "валюта счета"
from ows.doc_entry de, ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.code='P'
and acc.id=de.ACCOUNT__OID
and acc.acnt_contract__oid=ac.id
and de.TRANS_DATE>=to_date('01012014','ddmmyyyy')
and ac.id in (
                select
                ac.id
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.contract_number in   ('KZ76914038PN00077867', 
                'KZ44914CP39825818356', 
                'KZ51914CP39813942132', 
                'KZ17914CP39854404548', 
                'KZ19914038PN00071521', 
                'KZ39914CP39863200209', 
                'KZ70914038P000921809', 
                'KZ98914CP39863722365' ))
order by 1,2

+++++++++++++++++++++++++++++++++++списание комиссии по не актиным контрактам sabakasha++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio,
ac.contract_number,
case when exists (select * from ows.acnt_contract ca where ca.amnd_state='A' and ca.acnt_contract__oid=ac.id and ca.contr_status=14) then 'Y' else 'N' end  status
from ows.doc d , ows.acnt_contract ac, ows.client cl,ows.pragmaclient p 
where 
d.amnd_state='A' --and d.id=365558397
and d.trans_type=41338
and d.amnd_date>to_date('20122016','ddmmyyyy')
and d.id>363681472
and d.posting_status='P' 
and d.target_number=ac.contract_number
and ac.amnd_state='A'
and cl.amnd_state='A'
and ac.client__id=cl.id
and p.inform='SABAKASHA'  
and ac.contract_number=p.clnumber
and exists (
            select * from ows.usage_action ua , ows.evnt_msg em 
            where em.status='P'
            and em.delivery_channel='M'
            and em.usage_action__oid=ua.id
            and ua.doc=d.id)


select ac.contract_number
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A' 
         and not exists (
         
         
              select
              a "Contract Number"
              from
              (select 
              ac.contract_number a,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
              (select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
              from ows.acnt_contract ac,ows.pragmaclient p 
              where ac.amnd_state='A'
                       and p.inform='SABAKASHA'               
                       and ac.contract_number=p.clnumber
              and ac.con_cat='A'
              and ac.contr_status=51
              and ac.pcat='C'
              and ac.ccat='P'
              and ac.date_open<=to_date('01012016','ddmmyyyy'))
              where nvl(e,0)=0 and nvl(d,0)<>0 

   select
              a "Contract Number"
              from
              (select 
              ac.contract_number a,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
              (select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
              from ows.acnt_contract ac,ows.pragmaclient p 
              where ac.amnd_state='A'
                       and p.inform='SABAKASHA'               
                       and ac.contract_number=p.clnumber
              and ac.con_cat='A'
              and ac.contr_status=51
              and ac.pcat='C'
              and ac.ccat='P'
              and ac.contract_number='KZ02914038P000398651'
              and ac.date_open<=to_date('01012016','ddmmyyyy'))
              where nvl(e,0)=0 and nvl(d,0)<>0 
              
              
              
               select p.clnumber
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A' 
         
            
       
         select count(*)
          from ows.acnt_contract ac
              where ac.amnd_state='A'
              and ac.con_cat='A'
              and ac.contr_status=51
              and ac.pcat='C'
              and ac.ccat='P'
              and ac.date_open<=to_date('01012016','ddmmyyyy')
              
          
          
     with t as ( select p.clnumber card
                 from ows.pragmaclient p 
                 where p.inform='SABAKASHA' )         
     select
              a "Contract Number"
              from
              (select 
              ac.contract_number a,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
              (select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
              from ows.acnt_contract ac, t
              where ac.amnd_state='A'
              and ac.contract_number=t.card
              and ac.con_cat='A'
              and ac.contr_status=51
              and ac.pcat='C'
              and ac.ccat='P'
              and ac.date_open<=to_date('01012016','ddmmyyyy'))
              where nvl(e,0)=0 and nvl(d,0)<>0             

select ac.contract_number
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'  
minus              
  select
a "Contract Number"
from
(select 
ac.contract_number a,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
(select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
from ows.acnt_contract ac,ows.pragmaclient p 
where ac.amnd_state='A'
         and p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
and ac.con_cat='A'
and ac.contr_status=51
and ac.pcat='C'
and ac.ccat='P'
and ac.date_open<=to_date('01012016','ddmmyyyy'))
where nvl(e,0)=0 and nvl(d,0)<>0



select ac.contract_number
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A' 
         and not exists (
              select
              a "Contract Number"
              from
              (select 
              ac.contract_number a,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
              ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
              (select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
              from ows.acnt_contract ac,ows.pragmaclient p 
              where ac.amnd_state='A'
                       and p.inform='SABAKASHA'               
                       and ac.contract_number=p.clnumber
              and ac.con_cat='A'
              and ac.contr_status=51
              and ac.pcat='C'
              and ac.ccat='P'
              and ac.date_open<=to_date('01012016','ddmmyyyy'))
              where nvl(e,0)=0 and nvl(d,0)<>0 and a=ac.contract_number)

 select ac.contract_number,ac.curr,ac.total_balance,ac.id target_contract
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='1SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.total_balance<=500
         and ac.curr='398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         and ac.contract_number='KZ08914038PN00025256'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483) and u.start_date>to_date('20012017','ddmmyyyy') )
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0)
              
              
              
select ac.contract_number--sum(ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate)) 
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='1SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.total_balance>(
                                  select 500/f.fx_buy
                                  from ows.fx_rate f 
                                  where f.f_i=724 and f.code=ac.curr
                                  and f.date_from>=to_date('02022017','ddmmyyyy')
                                  and f.is_active='Y')
         and ac.curr<>'398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483) and u.start_date>to_date('20012017','ddmmyyyy'))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0)
          
              select * from ows.client cl where cl.id=1425227
   
select * from table(select d. from ows.contr_status cs where cs.amnd_state='A') d
           
select * from ows.appl_acnt aa where AA.APPL_REG_NUMBER   

select * from ows.V_CS_ALL_ACNT_STATUS
           
  select *
  from ows.fx_rate f 
  where f.f_i=724 and f.code='978'
  and f.date_from>=to_date('02022017','ddmmyyyy')
  and f.is_active='Y'
  
  
  
  select  sum(ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.Amount_Available,sysdate)) 
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='1SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.contr_status=51
         AND AC.AMOUNT_AVAILABLE>0
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0)
    
  
++++++++++++++++++++++++++++++++связка главное книги со схемами счетов++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


select distinct act.gl_number ,act.account_name
from ows.acc_scheme acs , ows.acc_templ act
where acs.amnd_state='A'
and lower(acs.scheme_name) like 'cr%'
and act.acc_scheme__oid=acs.id
and act.amnd_state='A'
and exists (select * from ows.gl_account ga
            where ga.amnd_state='A'
            and ga.gl_number=act.gl_number)     
order by 1

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Created on 20.12.2016 by U05772 
declare 
  -- Local variables here
  sum1 number(32);
  sum2 number(32);
  sum3 number(32);
  i integer:=1;
begin
  -- Test statements here
  for rec in (select 
ac.contract_number,
(select 'Y' from ows.acc_scheme s where s.id=ac.acc_scheme__id and substr(upper(s.scheme_name),1,2)='CR' and s.amnd_state='A') scm,
(select a.id from ows.account a where a.acnt_contract__oid=ac.id and a.account_type=6 and a.code<>'?') idm
from ows.acnt_contract ac
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.is_ready<>'C'
and ac.pcat='C'
and ac.f_i=724
and ac.contr_status=51
and ac.date_open<to_date('20122015','ddmmyyyy') )
loop 
 if nvl(rec.scm,'N')<>'Y' then 
   
  select sum(nvl(abs(cc.ITEM_TOTAL),0)),sum(nvl(cc.number_of_docs,0)) into sum1,sum2 from ows.item cc where cc.DATE_from>=to_date('01122015','ddmmyyyy') and cc.ACCOUNT__OID=rec.idm;
  if nvl(sum1,0)=0 then 
      if nvl(sum2,0)=0 
         then --dbms_output.put_line(rec.contract_number ||'   '||to_char(sum2)); 
         i:=i+1;
               
      else 
           select sum(nvl(abs(e.amount),0)) into sum3 
              from ows.entry e 
                where e.item__id in (select cc.id from ows.item cc where cc.DATE_from>=to_date('01122015','ddmmyyyy') and cc.ACCOUNT__OID=rec.idm) and e.service_class='T';
           if nvl(sum3,0)=0 then 
                      i:=i+1;
        
          --dbms_output.put_line(rec.contract_number||'   '||'22222222'); 
         -- else dbms_output.put_line('kunya');
          end if;     
      end if;   
   end if;
  end if; 
  if i=100 then  begin dbms_output.put_line(rec.contract_number ||'   '||to_char(sum2)); i:=1; end; end if;
  end loop;
end;


-- Created on 20.12.2016 by U05772 
declare 
  -- Local variables here
  sum1 number(32);
  sum2 number(32);
  sum3 number(32);
  i integer:=1;
begin
  -- Test statements here
    for rec in (select 
                ac.contract_number,
                (select 'Y' from ows.acc_scheme s where s.id=ac.acc_scheme__id and substr(upper(s.scheme_name),1,2)='CR' and s.amnd_state='A') scm,
                (select a.id from ows.account a where a.acnt_contract__oid=ac.id and a.account_type=6 and a.code<>'?') idm
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.con_cat='A'
                and ac.is_ready<>'C'
                and ac.pcat='C'
                and ac.f_i=724
                and ac.contr_status in  (713,51,205,569,505,266,273,425,166)
                and ac.total_balance>0
                and ac.date_open<to_date('20122015','ddmmyyyy'))
   loop 
      if nvl(rec.scm,'N')<>'Y' then 
           select sum(nvl(abs(cc.ITEM_TOTAL),0)),sum(nvl(cc.number_of_docs,0)) into sum1,sum2 from ows.item cc where cc.DATE_from>=to_date('01122015','ddmmyyyy') and cc.ACCOUNT__OID=rec.idm;
         if nvl(sum1,0)=0 then 
            if nvl(sum2,0)=0  then 
              --dbms_output.put_line(rec.contract_number ||'   '||to_char(sum2)); 
              i:=i+1;
              insert into ows.pragmaclient p values(null,null,null,null,null,null,null,rec.contract_number,'SABAKASHA')  ;         
            else 
               select sum(nvl(abs(e.amount),0)) into sum3 
               from ows.entry e 
               where e.item__id in (select cc.id from ows.item cc where cc.DATE_from>=to_date('01122015','ddmmyyyy') and cc.ACCOUNT__OID=rec.idm) and e.service_class='T';
              if nvl(sum3,0)=0 then 
                 i:=i+1;
                 insert into ows.pragmaclient p values(null,null,null,null,null,null,null,rec.contract_number,'SABAKASHA')      ;     
               --dbms_output.put_line(rec.contract_number||'   '||'22222222'); 
               -- else dbms_output.put_line('kunya');
              end if;     
            end if;   
         end if;
      end if; 
      
     if i=100 then commit; i:=1; 
     end if;
   end loop;
   commit;
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number,
sum(ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,'398',de.SETTL_AMOUNT,de.POSTING_DATE)) summa_tg,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,De.POSTING_DATE)) SUMMA_kom_TG_CP,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt2.curr,'398',gt2.amount,de.POSTING_DATE)) SUMMA_kom_TG_BANK
from ows.acnt_contract ac , ows.account acc, ows.doc_entry de,ows.gl_trace_srvc gt,ows.gl_trace_srvc gt2
where 
ac.amnd_state='A'
and ac.contract_number in ('KZ21914CC39869344093','KZ58914CC39880325185')
and ac.id=acc.acnt_contract__oid
and acc.code='X'
and acc.id=de.ACCOUNT__OID
and de.SERVICE_CLASS='T'
and de.POSTING_DATE>=to_date('01122016','ddmmyyyy')
and de.POSTING_DATE<to_date('24122016','ddmmyyyy')
and gt.doc__oid=de.DOC__OID
and gt.entry_role in ('F','A')
and gt.cr_contract=8686489
and gt2.doc__oid=de.DOC__OID
and gt2.entry_role in ('F','A')
and gt2.cr_contract=357580
and de.AUTH_CODE not in ('11B2NN','22A579','517129')
group by ac.contract_number


minus

select 
sum(ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,'398',de.SETTL_AMOUNT,de.POSTING_DATE)) summa_tg,
sum( ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,De.POSTING_DATE)) SUMMA_kom_TG_CP,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt2.curr,'398',gt2.amount,de.POSTING_DATE)) SUMMA_kom_TG_BANK
from ows.acnt_contract ac , ows.account acc, ows.doc_entry de,ows.gl_trace_srvc gt,ows.gl_trace_srvc gt2
where 
ac.amnd_state='A'
and ac.contract_number='KZ21914CC39869344093'
and ac.id=acc.acnt_contract__oid
and acc.code='X'
and acc.id=de.ACCOUNT__OID
and de.SERVICE_CLASS='T'
and de.POSTING_DATE>=to_date('01112016','ddmmyyyy')
and de.RET_REF_NUMBER='630181169034'
and gt.doc__oid=de.DOC__OID
and gt.entry_role in ('F','A')
and gt.cr_contract=8686489
and gt2.doc__oid=de.DOC__OID
and gt2.entry_role in ('F','A')
and gt2.cr_contract=357580
and de.REQUEST_CAT<>'P'






select gt2.*
from ows.acnt_contract ac , ows.account acc, ows.doc_entry de,ows.gl_trace_srvc gt,ows.gl_trace_srvc gt2
where 
ac.amnd_state='A'
and ac.contract_number='KZ21914CC39869344093'
and ac.id=acc.acnt_contract__oid
and acc.code='X'
and acc.id=de.ACCOUNT__OID
and de.SERVICE_CLASS='T'
and de.POSTING_DATE>=to_date('01112016','ddmmyyyy')
and de.RET_REF_NUMBER='630181169034'
and gt.doc__oid=de.DOC__OID
and gt.entry_role in ('F','A')
and gt.cr_contract=8686489
and gt2.doc__oid=de.DOC__OID
and gt2.entry_role in ('F','A')
and gt2.cr_contract= 357580


select * from ows.gl_trace_srvc gt where gt.id in (127722181 ,127722184,127199261  )



select * from ows.standing_order so where so.acnt_contract__oid=6338605


select ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,'398',de.SETTL_AMOUNT,de.POSTING_DATE) from dual


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , mt.*
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='23122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
UNION 
 select d.source_reg_num , count(d.source_reg_num) over (partition by d.source_reg_num) ov , mt.*
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='23122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
/*and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null*/
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
order by 2,1


select pg.rnn from ows.pragmaclient pg
where pg.inform='19012017REPORT'
minus 
select to_char(did) from 
(
 select  d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
UNION 
 select d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
/*and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null*/
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
)
++++++++++++++++++++++++++++++++++не выгруженная выписка++++++++++++++++++++++++++++++++++++++++++++++++
(
 select d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
UNION 
 select  d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
/*and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null*/
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
)   
---
minus
( (
     select  d.id did
     from 
    (select    distinct
    to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
    pg.iin card_num,   
    pg.regnumber auth_code, 
    pg.surname SRN,
    abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
    --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
    --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
    pg.inform 
    --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
    from ows.pragmaclient  pg 
    where pg.inform='23122016STMT'  
     ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
    where d.amnd_state='A'
    and (t.auth_code is null)
    and (t.srn is null) and d.source_reg_num is null
    /*and (d.auth_code=t.auth_code )
    and (d.source_reg_num=t.srn)*/
    and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
    and t.trans_date=trunc(d.trans_date)
    and d.trans_amount=t.trans_amount
    and d.posting_date=to_date('13122016','ddmmyyyy')
    and pg.rnn=d.id
    and pg.inform='19012017REPORT'
    and mt.posting_status<>'J'
    and mt.service_class='T'
    and mt.doc__oid=d.id
    and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
    UNION 
     select  d.id did
     from 
    (select    distinct
    to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
    pg.iin card_num,   
    pg.regnumber auth_code, 
    pg.surname SRN,
    abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
    --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
    --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
    pg.inform 
    --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
    from ows.pragmaclient  pg 
    where pg.inform='23122016STMT'  
     ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
    where d.amnd_state='A'
    /*and (t.auth_code is null)
    and (t.srn is null) and d.source_reg_num is null*/
    and (d.auth_code=t.auth_code )
    and (d.source_reg_num=t.srn)
    and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
    and t.trans_date=trunc(d.trans_date)
    and d.trans_amount=t.trans_amount
    and d.posting_date=to_date('13122016','ddmmyyyy')
    and pg.rnn=d.id
    and pg.inform='19012017REPORT'
    and mt.posting_status<>'J'
    and mt.service_class='T'
    and mt.doc__oid=d.id
    and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
    )
    union all
            (
             select  d.id did 
             from 
            (select    distinct
            to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
            pg.iin card_num,   
            pg.regnumber auth_code, 
            pg.surname SRN,
            abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
            --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
            --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
            pg.inform 
            --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
            from ows.pragmaclient  pg 
            where pg.inform='33122016STMT'  
             ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
            where d.amnd_state='A'
            and (t.auth_code is null)
            and (t.srn is null) and d.source_reg_num is null
            /*and (d.auth_code=t.auth_code )
            and (d.source_reg_num=t.srn)*/
            and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
            and t.trans_date=trunc(d.trans_date)
            and d.trans_amount=t.trans_amount
            and d.posting_date=to_date('13122016','ddmmyyyy')
            and pg.rnn=d.id
            and pg.inform='19012017REPORT'
            and mt.posting_status<>'J'
            and mt.service_class='T'
            and mt.doc__oid=d.id
            and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
            UNION 
             select  d.id did
             from 
            (select    distinct
            to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
            pg.iin card_num,   
            pg.regnumber auth_code, 
            pg.surname SRN,
            abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
            --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
            --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
            pg.inform 
            --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
            from ows.pragmaclient  pg 
            where pg.inform='33122016STMT'  
             ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
            where d.amnd_state='A'
            /*and (t.auth_code is null)
            and (t.srn is null) and d.source_reg_num is null*/
            and (d.auth_code=t.auth_code )
            and (d.source_reg_num=t.srn)
            and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
            and t.trans_date=trunc(d.trans_date)
            and d.trans_amount=t.trans_amount
            and d.posting_date=to_date('13122016','ddmmyyyy')
            and pg.rnn=d.id
            and pg.inform='19012017REPORT'
            and mt.posting_status<>'J'
            and mt.service_class='T'
            and mt.doc__oid=d.id
            and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
            ) )

        
    
select 
(select ac.contract_number from ows.acnt_contract ac, ows.acnt_contract dev where ac.amnd_state='A' 
 and dev.amnd_state='A' and ac.id=dev.acnt_contract__oid and dev.terminal_category='P' and dev.contract_number=d.source_number  ) kontrakt,
d.id,d.trans_date, d.source_number device_num,substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4) card_num, 
d.source_reg_num SRN, d.auth_code ,d.trans_amount
from ows.doc d
where d.id in (
'360061917',
'360062872',
'360063096',
'360063905',
'360063914',
'360064013',
'360064267',
'360065238',
'360065263',
'360065637',
'360066440',
'360066535',
'360066684',
'360067815',
'360068802',
'360068840',
'360069056',
'360069494',
'360070145',
'360070635',
'360070641',
'360070705',
'360070741',
'360071655',
'360072114',
'360072396',
'360072544',
'360072703',
'360073249',
'360073444',
'360073965',
'360075083',
'360075588',
'360075798',
'360075876',
'360076237',
'360077011',
'360077402',
'360079211',
'360080276',
'360080566',
'360080943',
'360081062',
'360081224',
'360081238',
'360081567',
'360081875',
'360081934',
'360082224',
'360082646',
'360082906',
'360083071',
'360083747',
'360084250',
'360084347',
'360084823',
'360085031',
'360085509',
'360086641',
'360088802',
'360090705',
'360093725',
'360094375',
'360095003',
'360096367',
'360096583',
'360097674',
'360097960',
'360098094',
'360099807',
'360099890',
'360100015',
'360100045')    
            

++++++++++++++++++++++++++++++++дублированная выписка+++++++++++++++++++++++++++++++++++++++++++++++++++++++
   
Select distinct did ,kolvo , q.request_category, q.target_number, q.trans_amount  from (
select f.did ,count(f.did) over(partition by f.did) kolvo from
 (
 (
     select  d.id did
     from 
    (select    distinct
    to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
    pg.iin card_num,   
    pg.regnumber auth_code, 
    pg.surname SRN,
    abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
    --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
    --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
    pg.inform 
    --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
    from ows.pragmaclient  pg 
    where pg.inform='23122016STMT'  
     ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
    where d.amnd_state='A'
    and (t.auth_code is null)
    and (t.srn is null) and d.source_reg_num is null
    /*and (d.auth_code=t.auth_code )
    and (d.source_reg_num=t.srn)*/
    and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
    and t.trans_date=trunc(d.trans_date)
    and d.trans_amount=t.trans_amount
    and d.posting_date=to_date('13122016','ddmmyyyy')
    and pg.rnn=d.id
    and pg.inform='19012017REPORT'
    and mt.posting_status<>'J'
    and mt.service_class='T'
    and mt.doc__oid=d.id
    and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
    UNION 
     select  d.id did
     from 
    (select    distinct
    to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
    pg.iin card_num,   
    pg.regnumber auth_code, 
    pg.surname SRN,
    abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
    --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
    --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
    pg.inform 
    --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
    from ows.pragmaclient  pg 
    where pg.inform='23122016STMT'  
     ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
    where d.amnd_state='A'
    /*and (t.auth_code is null)
    and (t.srn is null) and d.source_reg_num is null*/
    and (d.auth_code=t.auth_code )
    and (d.source_reg_num=t.srn)
    and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
    and t.trans_date=trunc(d.trans_date)
    and d.trans_amount=t.trans_amount
    and d.posting_date=to_date('13122016','ddmmyyyy')
    and pg.rnn=d.id
    and pg.inform='19012017REPORT'
    and mt.posting_status<>'J'
    and mt.service_class='T'
    and mt.doc__oid=d.id
    and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
    )
    union all
            (
             select  d.id did 
             from 
            (select    distinct
            to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
            pg.iin card_num,   
            pg.regnumber auth_code, 
            pg.surname SRN,
            abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
            --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
            --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
            pg.inform 
            --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
            from ows.pragmaclient  pg 
            where pg.inform='33122016STMT'  
             ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
            where d.amnd_state='A'
            and (t.auth_code is null)
            and (t.srn is null) and d.source_reg_num is null
            /*and (d.auth_code=t.auth_code )
            and (d.source_reg_num=t.srn)*/
            and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
            and t.trans_date=trunc(d.trans_date)
            and d.trans_amount=t.trans_amount
            and d.posting_date=to_date('13122016','ddmmyyyy')
            and pg.rnn=d.id
            and pg.inform='19012017REPORT'
            and mt.posting_status<>'J'
            and mt.service_class='T'
            and mt.doc__oid=d.id
            and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
            UNION 
             select  d.id did
             from 
            (select    distinct
            to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
            pg.iin card_num,   
            pg.regnumber auth_code, 
            pg.surname SRN,
            abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
            --replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
            --replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
            pg.inform 
            --, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
            from ows.pragmaclient  pg 
            where pg.inform='33122016STMT'  
             ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
            where d.amnd_state='A'
            /*and (t.auth_code is null)
            and (t.srn is null) and d.source_reg_num is null*/
            and (d.auth_code=t.auth_code )
            and (d.source_reg_num=t.srn)
            and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
            and t.trans_date=trunc(d.trans_date)
            and d.trans_amount=t.trans_amount
            and d.posting_date=to_date('13122016','ddmmyyyy')
            and pg.rnn=d.id
            and pg.inform='19012017REPORT'
            and mt.posting_status<>'J'
            and mt.service_class='T'
            and mt.doc__oid=d.id
            and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
            ) 
            ) f 
            ), ows.doc q where kolvo >1 and q.amnd_state='A' and q.id=did
            order by 4,5,3
            
+++++++++++++++полная выписка за 13 декабря 2016++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++            

 select  mt.id mid,d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null
/*and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)*/
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
UNION 
 select  mt.id mid,d.id did
 from 
(select    distinct
to_date(pg.rnn , 'dd/mm/yyyy') trans_date ,     
pg.iin card_num,   
pg.regnumber auth_code, 
pg.surname SRN,
abs(replace(replace (pg.clientname,',','' ),'.',',')) trans_amount  ,  
--replace(replace (pg.fathersname,',','' ),'.',',') fee_amount,  
--replace(replace ( pg.clnumber,',','' ),'.',',') vozmeshenie , 
pg.inform 
--, replace(replace ( pg.clnumber,',','' ),'.',',')-replace(replace (pg.fathersname,',','' ),'.',',') amount
from ows.pragmaclient  pg 
where pg.inform='43122016STMT'  
 ) t, ows.doc d , ows.pragmaclient pg , ows.m_transaction mt
where d.amnd_state='A'
/*and (t.auth_code is null)
and (t.srn is null) and d.source_reg_num is null*/
and (d.auth_code=t.auth_code )
and (d.source_reg_num=t.srn)
and t.card_num =substr(d.target_number,1,4)||'***'||substr(d.target_number,length(d.target_number)-3,4)
and t.trans_date=trunc(d.trans_date)
and d.trans_amount=t.trans_amount
and d.posting_date=to_date('13122016','ddmmyyyy')
and pg.rnn=d.id
and pg.inform='19012017REPORT'
and mt.posting_status<>'J'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)

+++++++++++++++++++++++++++доработка выписик в report ddeveloper+++++++++++++++++++++++++++++++++++++++++

select /*+rule*/
  xwclient('BRANCH', client.branch, client.ID) zip_code
  ,acnt_contract.f_i f_i
  ,acnt_contract.id acnt_contract_id
  ,ltrim(rtrim(client.first_nam)) || ' ' || 
      ltrim(rtrim(client.father_s_nam)) || ' ' || 
      ltrim(rtrim(client.last_nam)) client_name
  ,client.company_nam company
  ,client.address_line_1 address_line_1
  ,client.address_line_2 address_line_2
  ,client.address_line_3 address_line_3
  ,client.reg_number reg_number
  ,client.reg_details reg_details
  ,xwACNT_CONTRACT('CURR',
    acnt_contract.curr) acnt_contract_curr
  ,rtrim(acnt_contract.contract_number) contr_num
  ,rtrim(acnt_contract.contract_name) contr_name
  ,-acnt_contract.auth_limit_amount credit_limit
  ,acnt_contract.total_blocked total_blocked
  ,acnt_contract.amount_available amount_available
  ,acnt_contract.check_available check_available
  ,xwACNT_CONTRACT('CONTR_SUBTYPE__ID',
    acnt_contract.contr_subtype__id) contr_type
  ,xwACNT_CONTRACT('ACC_SCHEME__ID',
    acnt_contract.acc_scheme__id) scheme_name
  ,xwACNT_CONTRACT('SERV_PACK__ID',
    acnt_contract.serv_pack__id) serv_pack_name
from
  client
  ,acnt_contract
where
  acnt_contract.id in 
     (SELECT to_number(:P_ID) from dual where :P_ID is not null
      union all
      select acnt_contract.id
      from acnt_contract
          ,client
      where :P_ID is null
        and client.f_i = :P_F_I
        --and (client.branch = :P_ZIP_CODE or :P_ZIP_CODE is null)
        --and (nvl(client.language, :P_LANGUAGE) = :P_LANGUAGE or :P_LANGUAGE is null)
        --and (acnt_contract.report_type = :P_REPTYPE or :P_REPTYPE is null)
        and acnt_contract.pcat = 'M'
        and acnt_contract.ccat = 'C'
        and acnt_contract.amnd_state = 'A'
        and acnt_contract.acnt_contract__oid is null
        and acnt_contract.client__id = client.id)
  and client.id = acnt_contract.client__id
  and client.amnd_state = 'A'
&P_CONTRACT_ORDER


with 
a as
 (select e.amount,
         e.fee_amount,
         e.service_id,
         e.item__id,
         e.m_transaction__id,
         e.posting_date,
         i.id as item_id,
         c.id as contract_id,
         c.contract_number,
         c.contract_name,
         i.date_from as item_date_from,
         i.cycle_date_to as item_cycle_date_to,
         e.contract_for,
         e.id as entry_id
    from account a
    join item i  on i.account__oid = a.id and i.cycle_date_to between nvl(:P_DATE_FROM, :P_DATE_TO) and :P_DATE_TO and i.service_class = 'T'
    join entry e on i.id = e.item__id
    join acnt_contract c   on c.id = e.contract_for
    where a.acnt_contract__oid = :acnt_contract_id  and a.curr = :acc_curr_code),
b as(
select a.item_id as entry_item__id, 
       a.posting_date as entry_posting_date, 
       a.amount as entry_amount, 
       a.fee_amount, 
       sa.parent_service, 
       sa.id as service_id,
       nvl(di.due_date, m.posting_date) value_date, 
       mtr.GET_TRANS_CODE(m.trans_subtype,  decode(d.request_category, 'J', 'P', m.request_cat)) || decode(d.request_category, 'P', '', 'Q', '', 'R', '', '. ' || xwdoc('REQUEST_CATEGORY', d.request_category, d.id)) dict_name,
       a.contract_id dev_contract_id,
       rtrim(a.contract_number) device_number,
       rtrim(a.contract_name) device_name,
       xwDOC('SIC_CODE', d.sic_code) sic_name,
       CASE WHEN tt.TRANS_TYPE_IDT = 'CP' AND cards_reports.get_cycle_n(m.doc__oid) IS NULL
                             THEN (SELECT cards_reports.get_cycle_n(max(d2.id))
                                            FROM doc d2 
                                         WHERE d2.ret_ref_number = d.ret_ref_number AND 
                                                        d2.id <> d.id  AND 
                                                        d2.amnd_state = 'A' AND
                                                        d2.amnd_date <= d.amnd_date
                                        )
                              ELSE cards_reports.get_cycle_n(m.doc__oid) END cycle_n,
       cur.name trans_curr,
       nvl(decode(:P_SHOW_SEC_TRANS_DATE, 'Y', nvl(d.sec_trans_date, d.trans_date), d.trans_date), m.posting_date) trans_date,
       m.id m_transaction_id,
       a.item_date_from date_from,
       a.item_cycle_date_to date_to,
       cards_msg.MESS_CONVERT_ENTRY(:P_TRANS_DETAILS||cards_reports.subtype_stmt_details(sa.transaction,'. '), a.entry_id) trans_details,
       cur.exponent curr_exp,
       a.entry_id,
       d.id as doc_id, 
       d.request_category as doc_request_category,
       d.trans_amount as doc_trans_amount
  from a
  join m_transaction m   on m.id = a.m_transaction__id and m.service_class = 'T'
  left join doc d        on d.id = m.doc__oid
  left join item_due di  on di.id = a.item__id
  join trans_type tt     on d.TRANS_TYPE = tt.ID
  join currency cur      on nvl(d.trans_curr, m.trans_curr) = cur.code and cur.amnd_state = 'A'
  join service_approved sa  on sa.id = a.service_id
where (&P_DOC_FILTER))
select 
  trans_curr,
  device_number,
  sic_name,
  cycle_n,
  entry_posting_date,   
  value_date,
  dict_name,
  trans_date,
 decode(:P_SHOW_CUSTOM_FEE,'Y',nvl(parent_service,0), 0) as parent_service,
  sum(entry_amount) as entry_amount,
  sum(case when nvl(:P_Include_Custom_Fee, 'Y') =  'Y' then b.fee_amount 
           when nvl(:P_Include_Custom_Fee, 'Y') =  'N' and :P_show_custom_fee = 'Y' then b.fee_amount
           when nvl(:P_Include_Custom_Fee, 'Y') =  'N' and parent_service is null then b.fee_amount
           else 0 end) as entry_fee,
  dev_contract_id,
  device_name,
  sum(entry_amount) +  sum(case when nvl(:P_Include_Custom_Fee, 'Y') =  'Y' then b.fee_amount 
                                when nvl(:P_Include_Custom_Fee, 'Y') =  'N' and :P_show_custom_fee = 'Y' then b.fee_amount
                                when nvl(:P_Include_Custom_Fee, 'Y') =  'N' and parent_service is null then b.fee_amount
                                else 0 end) as acc_amount,
  nvl(sign(sum(b.entry_amount)) * decode(b.doc_request_category, 'J', -1, 1)*b.doc_trans_amount, sum(b.entry_amount)) amount,
  trans_curr,
  trans_date,
  date_from,
  date_to,
  trans_details,
  curr_exp,
  doc_id
from b
group by entry_posting_date,
         value_date,
         dict_name,
         dev_contract_id,
         device_name,
         device_number,
         sic_name,
         cycle_n,
         trans_curr,
         trans_date,
         doc_id,
         doc_request_category,
         doc_trans_amount,
         date_from,
         date_to,
         trans_details,
         curr_exp,
         decode(:P_SHOW_CUSTOM_FEE,'Y',nvl(parent_service,0), 0),
         decode(:P_SHOW_CUSTOM_FEE,'Y',service_id, 0)
order by 1 asc, 2 asc, 3 asc, 4 asc, 5 asc, 6 asc, 7 asc, 8 asc, 9 asc, 10 asc




pr.Kulager
select 
  xwaccount('CURR',account.curr, null) acc_curr
  ,account.curr acc_curr_code
from account
where acnt_contract__oid = :acnt_contract_id
group by account.curr

++++++++++++++++++++++++++++списание 500 тенге по не актиным контрактам+++++++++++++++++++++++++++++++++++++++++++++
-- Created on 20.12.2016 by U04913 
declare 
  -- Local variables here
   i varchar2(12000);
   b ows.ACNT_CONTRACT%ROWTYPE;
   c ows.DOC%ROWTYPE;
   v_count number := 0;
   Evnt_ID_Migr ows.dtype.RecordID %Type :=5483;
   Usage_Action_ID ows.dtype. RecordID %Type;
   ErrMsg ows.dtype. Name %Type;
begin
  -- Test statements here
  for rec in (
     select ac.contract_number,ac.curr,ac.total_balance,ac.id target_contract
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='1SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.total_balance<=500
         and ac.curr='398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         and ac.contract_number='KZ08914038PN00025256'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483) and u.start_date>to_date('20012017','ddmmyyyy'))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0))
  loop
        i:='I';      
        begin 
          select * into b 
            from ows.ACNT_CONTRACT where id=rec.target_contract;
         exception when others then i:='E';dbms_output.put_line(to_char(rec.target_contract));
        end; 
        if i<>'E' then
              ows.incd.CRE_FIN_DOC_R(41338,b,'',0,'Regular Charge',c); 
              ows.GLOB.SAVE_DOC(c);
              commit;
              update ows.doc set REASON_DETAILS='согласно Протоколу КУАП от 15.12.2016 г. № 52 ',target_fee_amount=rec.total_balance,target_fee_curr=rec.curr where id=c.id;
              commit;
              Usage_Action_ID := ows.evnt.LOAD_EVENT(  Evnt_ID_Migr,  rec.target_contract,  NULL,  trunc(sysdate),  null,  'В связи с отсутствием движений за последний год.');
              if Usage_Action_ID > 0 then 
                 ows.evnt.POST_EVENT(Usage_Action_ID,  NULL);
              commit;                 
              end if; 
        end if;      
   --     dbms_output.put_line(b.contract_number);
   
  end loop; 
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select distinct
(select ac.contract_number from ows.acnt_contract ac, ows.acnt_contract dev where ac.amnd_state='A'
 and dev.amnd_state='A' and ac.id=dev.acnt_contract__oid and dev.terminal_category='P' and dev.id=d.source_contract ) kontrakt
from ows.doc d
where d.id in ('360055266',
'360056134',
'360056914',
'360057171',
'360057718',
'360059382',
'360059453',
'360060346',
'360060402',
'360060653',
'360062466',
'360063114',
'360063699',
'360066488',
'360066509',
'360070212',
'360072892',
'360073250',
'360073308',
'360075502',
'360076736',
'360077452',
'360077488',
'360078534',
'360079618',
'360079988',
'360080980',
'360081145',
'360082748',
'360083834',
'360091049',
'360091180',
'360097894',
'360054167',
'360054875',
'360055182',
'360055728',
'360056421',
'360059272',
'360059318',
'360059332',
'360059978',
'360060141',
'360060952',
'360061342',
'360063441',
'360064471',
'360064606',
'360064787',
'360065334',
'360065463',
'360065563',
'360068146',
'360068498',
'360069220',
'360069727',
'360071415',
'360072615',
'360072646',
'360072893',
'360072897',
'360073252',
'360073733',
'360074570',
'360075126',
'360076606',
'360077772',
'360079082',
'360079155',
'360080274',
'360080469',
'360080737',
'360080829',
'360082353',
'360083940',
'360090137',
'360091076',
'360092127',
'360092518',
'360092742',
'360096387',
'360097510',
'360100704',
'360100940',
'360053987',
'360056333',
'360060169',
'360060247',
'360060322',
'360060336',
'360060399',
'360060749',
'360061642',
'360061891',
'360062024',
'360063865',
'360063897',
'360065578',
'360065903',
'360066504',
'360068748',
'360068873',
'360068967',
'360069807',
'360070644',
'360070652',
'360071857',
'360072900',
'360073257',
'360073290',
'360075717',
'360076069',
'360077484',
'360078899',
'360081173',
'360081570',
'360081713',
'360081911',
'360082345',
'360085560',
'360086449',
'360087749',
'360087921',
'360089045',
'360091774',
'360099809',
'359962591',
'360054582',
'360054583',
'360055710',
'360056214',
'360056409',
'360056837',
'360057284',
'360058518',
'360058780',
'360059304',
'360060321',
'360060347',
'360060395',
'360060654',
'360061465',
'360061576',
'360062723',
'360063278',
'360064015',
'360064723',
'360064928',
'360065569',
'360067567',
'360067757',
'360069537',
'360070161',
'360070242',
'360070655',
'360070692',
'360072899',
'360072903',
'360077914',
'360078458',
'360079190',
'360079426',
'360080142',
'360082342',
'360082348',
'360084006',
'360084666',
'360085629',
'360086868',
'360087242',
'360090991',
'360092776',
'360094583',
'360096783',
'360100773',
'360054256',
'360055588',
'360056100',
'360056206',
'360056388',
'360057028',
'360057721',
'360058259',
'360058414',
'360058600',
'360059267',
'360059315',
'360059609',
'360059676',
'360060009',
'360060182',
'360060416',
'360061356',
'360061426',
'360061534',
'360061701',
'360061893',
'360062777',
'360063403',
'360063967',
'360065195',
'360066358',
'360066751',
'360067043',
'360067491',
'360069349',
'360071176',
'360071719',
'360072112',
'360072261',
'360072898',
'360072904',
'360072906',
'360072981',
'360073794',
'360074260',
'360076103',
'360082292',
'360083491',
'360087031',
'360088431',
'360089022',
'360091350',
'360091469',
'360099896',
'360100422',
'360053895',
'360054190',
'360054926',
'360055326',
'360055689',
'360055703',
'360055707',
'360055733',
'360055980',
'360056239',
'360056601',
'360056894',
'360057024',
'360057216',
'360057732',
'360057884',
'360058000',
'360058255',
'360058413',
'360058553',
'360058991',
'360059309',
'360059809',
'360060010',
'360060326',
'360060335',
'360060779',
'360061602',
'360061678',
'360062702',
'360062722',
'360062874',
'360063341',
'360063807',
'360064555',
'360065026',
'360066297',
'360067405',
'360067684',
'360067880',
'360067969',
'360068330',
'360069916',
'360070013',
'360071926',
'360072902',
'360075504',
'360075738',
'360076218',
'360078303',
'360078846',
'360081007',
'360081476',
'360081587',
'360082352',
'360084061',
'360085802',
'360085956',
'360086491',
'360088785',
'360090726',
'360092556',
'360092745',
'360055006',
'360055208',
'360055734',
'360056171',
'360056299',
'360056319',
'360057196',
'360058419',
'360058890',
'360060013',
'360060318',
'360061656',
'360062607',
'360062663',
'360065217',
'360066352',
'360066503',
'360066506',
'360066651',
'360066694',
'360066817',
'360067011',
'360067474',
'360068109',
'360070160',
'360070420',
'360071720',
'360071987',
'360072139',
'360072637',
'360072895',
'360074310',
'360074704',
'360075915',
'360076764',
'360078901',
'360078902',
'360079745',
'360080052',
'360080630',
'360083036',
'360084207',
'360086234',
'360086921',
'360087510',
'360088432',
'360089542',
'360090151',
'360093883',
'360096472',
'360096998',
'360100345',
'360100370',
'360053839',
'360055638',
'360057485',
'360058122',
'360058181',
'360058278',
'360058404',
'360059152',
'360059253',
'360059384',
'360059675',
'360060006',
'360060012',
'360060027',
'360060398',
'360060647',
'360061555',
'360062131',
'360063800',
'360064118',
'360064833',
'360065078',
'360065189',
'360065948',
'360066101',
'360066707',
'360069996',
'360072007',
'360072524',
'360072894',
'360077483',
'360078898',
'360081511',
'360082338',
'360095951',
'360096601')


ac.contract_number in (
select pg.rnn
 from ows.pragmaclient pg 
 where pg.inform='26012017DEV')
 
 
 select 
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,DECODE(ac.report_type, 'A', 'Merchant Transactions Statement.rdf', 'H', 'Merchant Transactions Statement.rdf', 'R', 'Merchant Transactions Statement.rdf') "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8",TO_CHAR(lc.DATE_FROM, 'YYYY-MM-DD') "9",ac.id "10"
from client cl, acnt_contract ac, v_local_constants lc, officer o
where cl.amnd_state = 'A' 
 and ac.client__id = cl.id
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.id in (select ac.acnt_contract__oid
from ows.acnt_contract ac 
where ac.amnd_state='A'
and ac.contract_number in
(select
d.source_number
from ows.doc d
where d.id in
(select
p.doc__id
from ows.process_mess p
where p.process_log__oid = 20742904
and p.object_type='DOC')
and d.posting_status='P'
and d.source_channel='P'))
 and ac.amnd_state = 'A'
 and ac.report_type in ('R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name
 ,lc.DATE_FROM
,ac.id



select pg.rnn , pg.inform from ows.pragmaclient pg where pg.inform ='378DUBL' -- дубль документов


select cl.branch, count(*)
from ows.doc d ,ows.pragmaclient pg ,ows.acnt_contract ac, ows.client cl , ows.m_transaction mt
where pg.inform ='378DUBL' 
and pg.rnn=d.id
and d.amnd_state='A'
and d.source_contract=ac.id
and ac.amnd_state='A'
and cl.id=ac.client__id
and cl.amnd_state='A'
and mt.service_class='T'
and mt.doc__oid=d.id
and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)
group by cl.branch


select pg.* from ows.doc d ,ows.pragmaclient pg --, ows.m_transaction mt
where pg.inform ='378DUBL' 
and pg.rnn=d.id
and d.amnd_state='A'
--and d.id=mt.doc__oid
--and mt.id not in (134643421,134643431,134643434,134605156,134616029,134633988)

select 
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,DECODE(ac.report_type, 'A', 'Merchant Transactions Statement.rdf', 'H', 'Merchant Transactions Statement.rdf', 'R', 'Merchant Transactions Statement.rdf') "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8",TO_CHAR(lc.DATE_FROM, 'YYYY-MM-DD') "9",ac.id "10"
from client cl, acnt_contract ac, v_local_constants lc, officer o , ows.pragmaclient pg
where cl.amnd_state = 'A'
 and ac.contract_number=pg.rnn
 and ac.client__id = cl.id
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.amnd_state = 'A'
 and ac.report_type in ('R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
 and pg.inform='26012017DEV' 
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name
 ,lc.DATE_FROM
,ac.id



select * from ows.acnt_contract ac
where ac.contract_number in (
select pg.rnn
 from ows.pragmaclient pg 
 where pg.inform='26012017DEV')
 and ac.amnd_state='A'
 
 
select 
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,DECODE(ac.report_type, 'A', 'Merchant Transactions Statement.rdf', 'H', 'Merchant Transactions Statement.rdf', 'R', 'Merchant Transactions Statement.rdf') "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8",TO_CHAR(lc.DATE_FROM, 'YYYY-MM-DD') "9" ,
 ac.id  "10" 
from client cl, acnt_contract ac, v_local_constants lc, officer o , ows.pragmaclient pg
where cl.amnd_state = 'A'
 and ac.contract_number=pg.rnn
 and ac.client__id = cl.id
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.amnd_state = 'A'
 and ac.report_type in ('R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
 and pg.inform='26012017DEV' 
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name
 ,lc.DATE_FROM
 ,ac.id 
 order by 1


"ac.id in (select ac.id from ows.pragmaclient pg, ows.acnt_contract ac where pg.inform='26012017DEV' and ac.amnd_state='A' and ac.contract_number=pg.rnn)"

"d.id in (select pg.rnn  from ows.pragmaclient pg where pg.inform ='378DUBL' )"


select -1*(15) a, -1*(nvl(null,12)) b from dual


 select 
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,'Merchant Transactions Statement2.rdf' "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8",TO_CHAR(lc.DATE_FROM, 'YYYY-MM-DD') "9"
from client cl, acnt_contract ac, v_local_constants lc, officer o , ows.pragmaclient pg
where cl.amnd_state = 'A'
 and ac.contract_number=pg.rnn
 and ac.client__id = cl.id
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.amnd_state = 'A'
 and ac.report_type in ('R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
 and pg.inform='26012017DEV' 
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name
 ,lc.DATE_FROM
 order by 1
 
 
 
 
select 'date_id;acc_id;acc_num;blac_id;blac_num;curr_code;clnt_name;atyp_id;bal_curr;bal_tenge' from dual
union all
select 
to_char(trunc(sysdate)-1,'dd/mm/yyyy')||';'||ac.id||';'||ac.contract_number||';'||ga.id||';'||acc.gl_number||';'||(select c.name from ows.currency c where c.amnd_state='A' and c.code=ac.curr)||';'||nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)||';'||acc.account_type||';'||rtrim(to_char(ows.rpr.GET_ACC_BAL(acc.id,trunc(sysdate)-1), 'fm999999999990D9999999999999'), '.,')||';'||rtrim(to_char(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',( ows.rpr.GET_ACC_BAL(acc.id,trunc(sysdate)-1)),trunc(sysdate)-1), 'fm999999999990D9999999999999'), '.,') a
from ows.acnt_contract ac, ows.account acc, ows.client cl,ows.gl_account ga
where 
ac.amnd_state='A'
and cl.amnd_state='A' 
and ac.pcat='C'
and ac.f_i=724
and ac.client__id=cl.id
and ac.id=acc.acnt_contract__oid
and ac.con_cat='A'
and ga.gl_number=acc.gl_number
and ga.curr=acc.curr
and exists ( select * from  ows.account acc
             where acc.acnt_contract__oid =ac.id
             and   ows.rpr.GET_ACC_BAL(acc.id,trunc(sysdate)-1)<>0)
             
             
select pg.rnn,pg.inform
 from ows.pragmaclient pg
where  pg.inform='030217DEV' -- for update




select d.posting_status,d.target_number,d.auth_code,d.source_reg_num,d.trans_amount
from ows.pragmaclient pg ,ows.doc d, ows.acnt_contract dc, ows.acnt_contract ac, ows.client cl
where pg.inform ='73NOEXP' 
and d.id=pg.rnn
and d.amnd_state='A'
and dc.amnd_state='A'
and dc.acnt_contract__oid=ac.id
and dc.id=d.source_contract
and ac.amnd_state='A'
and ac.client__id=cl.id
and cl.amnd_state='A'



"d.id in (select pg.rnn  from ows.pragmaclient pg where pg.inform ='73NOEXP' )"

"d.id in (select pg.rnn  from ows.pragmaclient pg where pg.inform ='378DUBL' )"

"d.id in (select pg.rnn  from ows.pragmaclient pg where pg.inform ='378DUBL' )"


 
   select 
 rtrim(cl.branch) "1"
 ,ac.report_type "2"
 ,TO_CHAR(lc.date_to, 'DDD') "3"
 ,'Merchant Transactions Statement2.rdf' "4"
 ,TO_CHAR(lc.date_to, 'YYYY-MM-DD') "5"
 ,DECODE(ac.report_type,  UPPER(ac.report_type), ac.report_type, '_'||ac.report_type) "6"
 ,o.name "7",cl.f_i "8",TO_CHAR(lc.DATE_FROM, 'YYYY-MM-DD') "9"
from client cl, acnt_contract ac, v_local_constants lc, officer o , ows.pragmaclient pg
where cl.amnd_state = 'A'
 and ac.contract_number=pg.rnn
 and ac.client__id = cl.id
 and cl.branch='TXB06'
 and ac.pcat = 'M'
 and ac.ccat = 'C'
 and ac.amnd_state = 'A'
 and ac.report_type in ('R') and ac.report_type is not null
 and ac.acnt_contract__oid is null
 and o.id = lc.amnd_officer
 and pg.inform='030217DEV' 
group by
 cl.f_i
 ,cl.branch
 ,ac.report_type
 ,lc.date_to
 ,o.name
 ,lc.DATE_FROM
 order by 1

 ++++++++++++++++++поиск ордеров не закрытые по актиным контрактам++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 select so.*
from ows.standing_order so ,ows.acnt_contract ac 
where so.order_category='N' 
and so.is_ready='Y' 
and so.is_active='Y'
and so.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and ac.is_ready<>'C'
and ac.contr_status=51
and so.target_number not in ('038-SPO','038-INTERESTS')
and so.date_event='M'


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select   a.*
          from ows.doc d,ows.m_transaction mt,( 
          
                                            select  de.DOC__OID did,
                                                dev.contract_name dev_nam,
                                                ac.contract_number con_num,
                                                trunc(de.FEE_AMOUNT) fee_amount,
                                                trunc(de.AMOUNT)
                                                from ows.device_rec dr,
                                                 ows.doc_entry de,
                                                 ows.account act,
                                                 ows.acnt_contract ac, 
                                                 ows.acnt_contract dev,
                                                 ows.client cl, 
                                               -- (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf, COMMAND_TEXT contract from ows.v_local_constants l) lc
                                               (select to_date('18102016','ddmmyyyy') Date_from, to_date('18112016','ddmmyyyy') date_to  from dual ) lc
                                          where 
                                          dr.term_cat='P' and dr.amnd_state='A'
                                          and dev.id=dr.acnt_contract__oid
                                          and dev.acnt_contract__oid=ac.id
                                          and ac.client__id=cl.id  
                                          and cl.amnd_state='A'
                                          and ac.client_type in (1900,1901) 
                                        and ac.product in (select apl.internal_code from ows.appl_product apl where apl.code='MPI' and apl.amnd_state='A' and apl.parent_code is null and rownum=1)
                                          and cl.short_name is not null and ac.contract_number is not null
                                          and de.POSTING_DATE >=lc.Date_from
                                          and de.POSTING_DATE < lc.date_to+1
                                          and ac.id=act.acnt_contract__oid  
                                          and de.RET_REF_NUMBER='630081169032'
                                          and act.code='X'
                                          and de.ACCOUNT__OID=act.id
                                          and de.SERVICE_CLASS<>'d' 
                                          
                                          ) a
           --(select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
         -- (select to_date('18102016','ddmmyyyy') Date_from, to_date('18112016','ddmmyyyy') date_to  from dual ) lc
          where d.amnd_state='A'
          and d.is_authorization='N'
          and d.posting_status<>'J'
          and mt.doc__oid=d.id
          and mt.service_class='T'
          and mt.posting_status<>'J'
          and d.id=a.did
        --  group by d.id , d.posting_date, a.con_num, d.trans_date ,d.target_number,d.auth_code,d.target_channel,d.source_number,a.dev_nam,d.request_category, lc.Date_from, lc.date_to
          --order by 3,2


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
null,
rownum,
tab.did,
tab.pdate,
tab.tdate,
tab.cardn,
tab.auth,
tab.dtype,
tab.device,
tab.summa,
tab.fee,
tab.itogo,
tab.magazine,
tab.rez,
tab.contr_num,
sum(tab.summa) over(partition by tab.contr_num,trunc(tab.pdate) ) PSumma,
sum(tab.summa) over(partition by tab.contr_num) CSumma,
tab.Date_from,
tab.date_to,
sum(tab.fee) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_fee,
sum(tab.itogo) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_itogo,
sum(tab.fee) over(partition by tab.contr_num) CSumma_fee,
sum(tab.itogo) over(partition by tab.contr_num) CSumma_itogo
from
          (select   d.id did,
          ows.sy_calendar.NEXT_WRK_DAY(d.posting_date)  pdate,
          a.con_num contr_num,
          d.trans_date tdate,
          substr(d.target_number,1,6)||'******'||substr(d.target_number,13,4) cardn,
          d.auth_code auth,
          (select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=d.target_channel  ) dtype,
          d.source_number device,
           sum(a.amount)  summa,
          sum(-a.fee_amount) fee,
          sum(a.amount+a.fee_amount) itogo,
          a.dev_nam magazine,
          case when d.request_category in ('Q','P') then 'Успешно'
               when d.request_category='R' then 'Возврат'
               when d.request_category='J' then 'Частичный возврат'
               when d.request_category='A' then 'Частичное опротестование/повторное уведомление'  end rez ,
           lc.Date_from, 
           lc.date_to
          from ows.doc d , 
          ( 
          
                                            select de.DOC__OID did,
                                                dev.contract_name dev_nam,
                                                ac.contract_number con_num,
                                                de.FEE_AMOUNT fee_amount,
                                                de.AMOUNT
                                                from ows.device_rec dr,
                                                 ows.doc_entry de,
                                                 ows.account act,
                                                 ows.acnt_contract ac, 
                                                 ows.acnt_contract dev,
                                                 ows.client cl, 
                                           (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf, COMMAND_TEXT contract from ows.v_local_constants l) lc
                                              
                                          where 
                                          dr.term_cat='P' and dr.amnd_state='A'
                                          and dev.id=dr.acnt_contract__oid
                                          and dev.acnt_contract__oid=ac.id
                                          and ac.client__id=cl.id  
                                          and cl.amnd_state='A'
                                          and ac.client_type in (1900,1901) 
                                        and ac.product in (select apl.internal_code from ows.appl_product apl where apl.code='MPI' and apl.amnd_state='A' and apl.parent_code is null and rownum=1)
                                          and cl.short_name is not null and ac.contract_number is not null
                                          and de.POSTING_DATE >=lc.Date_from
                                          and de.POSTING_DATE < lc.date_to+1
                                          and ac.id=act.acnt_contract__oid  
                                          and act.code='X'
                                          and de.ACCOUNT__OID=act.id
                                          and de.SERVICE_CLASS<>'d'                                       
                                          ) a,
           (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
          where d.amnd_state='A'
          and d.is_authorization='N'
          and d.posting_status<>'J'
          and exists (select * from   ows.m_transaction mt
                     where mt.doc__oid=d.id
                     and mt.service_class='T'
                     and mt.posting_status<>'J')
           and d.id=a.did
         group by d.id , d.posting_date, a.con_num, d.trans_date ,d.target_number,d.auth_code,d.target_channel,d.source_number,a.dev_nam,d.request_category, lc.Date_from, lc.date_to
          order by 3,2) tab
++++++++++++++++++++++++++++овердрафт по черной пятнице++++++++++++++++++++++++++++++++++++++++++++

select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select source_code, trans_type, SS_code, source_channel from
(
select source_channel, source_code, trans_type, substr(ret_ref_number,5,2) as SS_code, ret_ref_number
  from ows.doc where amnd_date >= TO_DATE('01.12.2016','DD.MM.YYYY')
and to_number(substr(ret_ref_number,5,2)) in (81,82,83,84,85,86,87,88,89)
and REGEXP_INSTR(substr(ret_ref_number,5,2), '/D') = 0
and length(trim(ret_ref_number)) = 12
)
group by source_code, trans_type, SS_code, source_channel

+++++++++++++++++++++++++++++++++SABAKASHA++++++++++++++++++++++++++++++++++++++++++++
select
a "Contract Number",
b "Amount Available",
c "Total Blocked",
d "Total Balance",
e
from
(select 
ac.contract_number a,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
(select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
from ows.acnt_contract ac
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.contr_status=51
and ac.pcat='C'
and ac.ccat='P'
and ac.date_open<=to_date('01012016','ddmmyyyy'))
where nvl(e,0)=0 and nvl(d,0)<>0




 select ac.contract_number,ac.curr,ac.total_balance,ac.id target_contract
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.total_balance<=1
         and ac.curr<>'398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         --and ac.contract_number='KZ84914CP84071764296'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0)
              
              
 select count(*)
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'              
         
         
      
select ac.contract_number
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'  
minus              
  select
a "Contract Number"
from
(select 
ac.contract_number a,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.amount_available,sysdate) b ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_blocked,sysdate) c ,
ows.fx.MIDDLE_RATE(null,'724',null,ac.curr,'398',ac.total_balance,sysdate) d ,
(select sum(aa.ITEM_TOTAL) from ows.ACC_CYCLE aa where aa.ACNT_CONTRACT__OID=ac.id and aa.DATE_FROM>=to_date('01012016','ddmmyyyy')) e
from ows.acnt_contract ac,ows.pragmaclient p 
where ac.amnd_state='A'
         and p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
and ac.con_cat='A'
and ac.contr_status=51

and ac.pcat='C'
and ac.ccat='P'
and ac.date_open<=to_date('01012016','ddmmyyyy'))
where nvl(e,0)=0 and nvl(d,0)<>0

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Created on 20.12.2016 by U04913 
declare 
  -- Local variables here
   i varchar2(12000);
   b ows.ACNT_CONTRACT%ROWTYPE;
   c ows.DOC%ROWTYPE;
   v_count number := 0;
   Evnt_ID_Migr ows.dtype.RecordID %Type :=5483;
   Usage_Action_ID ows.dtype. RecordID %Type;
   ErrMsg ows.dtype. Name %Type;
begin
  -- Test statements here
  for rec in (
     select ac.contract_number,ac.curr,ac.total_balance,ac.id target_contract
       from ows.pragmaclient p , ows.acnt_contract ac
       where p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and ac.amnd_state='A'
         and ac.total_balance<=1
         and ac.curr<>'398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         --and ac.contract_number='KZ84914CP84071764296'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0))
  loop
        i:='I';      
        begin 
          select * into b 
            from ows.ACNT_CONTRACT where id=rec.target_contract;
         exception when others then i:='E';dbms_output.put_line(to_char(rec.target_contract));
        end; 
        if i<>'E' then
              ows.incd.CRE_FIN_DOC_R(41338,b,'',0,'Regular Charge',c); 
              ows.GLOB.SAVE_DOC(c);
              commit;
              update ows.doc set REASON_DETAILS='согласно Протоколу КУАП от 15.12.2016 г. № 52 ',target_fee_amount=rec.total_balance,target_fee_curr=rec.curr where id=c.id;
              commit;
              Usage_Action_ID := ows.evnt.LOAD_EVENT(  Evnt_ID_Migr,  rec.target_contract,  NULL,  trunc(sysdate),  null,  'В связи с отсутствием движений за последний год.');
              if Usage_Action_ID > 0 then 
                 ows.evnt.POST_EVENT(Usage_Action_ID,  NULL);
              commit;                 
              end if; 
        end if;      
   --     dbms_output.put_line(b.contract_number);
   
  end loop; 
end;

+++++++++++++++++++++++овердрафт черная пятница++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr


select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr




select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr


--когда наша карта отправляет деньги чужой карте  отвалился либо проводка по нащей карте либо по чужой 
select pay.*
from ows.doc  pay , ows.doc deb,ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('10112016','ddmmyyyy')
and pay.trans_date>=to_date('15112016','ddmmyyyy')
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213  
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('V','S','E') 
and pay.source_channel='W' 
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and ( (rc.resp_code<>'00' and 
                         ((exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) or pay.posting_status='W') or
                          (exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id) or deb.posting_status='W'))  ) 
     or 
      (rc.resp_code='00' and 
                         ((not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) and pay.posting_status<>'W') or
                          (not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id )and deb.posting_status<>'W')) )
     )



--когда наша карта отправляет деньги нашей карте 

select pay.*
from ows.doc  pay , ows.doc deb
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('10112016','ddmmyyyy')
and pay.trans_date>=to_date('15112016','ddmmyyyy')
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213  
and pay.target_channel in ('v','e','h') 
and pay.source_channel='W' 
and (
       ( 
         not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id) and   deb.posting_status<>'W' and
             exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) 
        ) 
      or 
       (
         not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) and   pay.posting_status<>'W' and
             exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id) 
        )
     )


select pay.*
from ows.doc  pay , ows.doc deb,ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.id>320718118
and pay.id<336521904
and pay.amnd_date>to_date('01102016','ddmmyyyy')
and pay.trans_date>=to_date('01102016','ddmmyyyy')
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213  
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('V','S','E') 
and pay.source_channel='W' 
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and ((rc.resp_code<>'00' and (exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) or pay.posting_status='W')) or 
      (rc.resp_code='00' and not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id and pay.posting_status<>'W') ) )
      
  select pay.*
from ows.doc  pay , ows.doc deb
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.id>336521904
and pay.amnd_date>to_date('01112016','ddmmyyyy')
and pay.trans_date>=to_date('01112016','ddmmyyyy')
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213  
and pay.target_channel in ('v','e','h') 
and pay.source_channel='W' 
and (( (not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id) and   deb.posting_status<>'W') and
      exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) ) 
      or 
    ( (not exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=pay.id) and   pay.posting_status<>'W') and
      exists (select * from ows.m_transaction mt where mt.service_class='T' and mt.doc__oid=deb.id) ))
      
select cl.short_name fio, ac.contract_number ,
 d.trans_amount  summa_spisanie, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=d.trans_curr) valuta_spisanie,d.ret_ref_number rrn_Spisanie , mt.t_amount,
  (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=ac.curr) valuta_contr,
  (select acc.account_name from ows.account acc where mt.source_account=acc.id) acc_name
from ows.doc d, ows.m_transaction mt, ows.acnt_contract ac , ows.client cl
where D.ret_ref_number in ((select rnn from ows.pragmaclient pg
where pg.inform='170616TRANS'))
and  D.ret_ref_number not in (
'616984992627',
'616984991142',
'616984991117',
'616884988502',
'616884988442',
'616884989027',
'616884989122',
'616884989142',
'616884988467',
'616984989992',
'616984990587')
and d.is_authorization='N'
and d.posting_status='P'
and mt.doc__oid=d.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=d.target_number
and cl.amnd_state='A'  and cl.id=ac.client__id

select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (

select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number



) d , ows.acnt_contract ac
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
group by ac.contract_number,ac.contract_name,ac.curr

select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr
select ac.contract_number,ac.contract_name,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) currency
from (
select distinct ac.contract_number
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.acnt_contract ca
where d.contract_number=ca.contract_number
and ca.amnd_state='A'
and ca.acnt_contract__oid=ac.id
and ac.amnd_state='A'

select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('14062016','ddmmyyyy')
and pay.trans_date>=to_date('16062016','ddmmyyyy')
and pay.id>270149054
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='180616PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr
+++++++++++++++++++++++++++cloudpayments++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
null,
rownum,
tab.did,
tab.pdate,
tab.tdate,
tab.cardn,
tab.auth,
tab.dtype,
tab.device,
tab.summa,
tab.fee,
tab.itogo,
tab.magazine,
tab.rez,
tab.contr_num,
sum(tab.summa) over(partition by tab.contr_num,trunc(tab.pdate) ) PSumma,
sum(tab.summa) over(partition by tab.contr_num) CSumma,
tab.Date_from,
tab.date_to,
sum(tab.fee) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_fee,
sum(tab.itogo) over(partition by tab.contr_num,trunc(tab.pdate)) psumma_itogo,
sum(tab.fee) over(partition by tab.contr_num) CSumma_fee,
sum(tab.itogo) over(partition by tab.contr_num) CSumma_itogo
from
(select d.id did,
ows.sy_calendar.NEXT_WRK_DAY(d.posting_date)  pdate,
a.con_num contr_num,
d.trans_date tdate,
substr(d.target_number,1,6)||'******'||substr(d.target_number,13,4) cardn,
d.auth_code auth,
(select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=d.target_channel  ) dtype,
d.source_number device,
sum(a.amount)  summa,
sum(-a.fee_amount) fee,
(sum(a.amount)-sum(-a.fee_amount)) itogo,
a.dev_nam magazine,
case when d.request_category in ('Q','P') then 'Успешно'
     when d.request_category='R' then 'Возврат'
     when d.request_category='J' then 'Частичный возврат'
     when d.request_category='A' then 'Частичное опротестование/повторное уведомление'  end rez ,
 lc.Date_from, lc.date_to
from ows.doc d,ows.m_transaction mt,( 
                                  select de.DOC__OID did,
                                      dev.contract_name dev_nam,
                                      ac.contract_number con_num,
                                      de.FEE_AMOUNT fee_amount,
                                      de.AMOUNT
                                      from ows.device_rec dr,
                                       ows.doc_entry de,
                                       ows.account act,
                                       ows.acnt_contract ac, 
                                       ows.acnt_contract dev,
                                       ows.client cl, 
                                     -- (select to_date(l.date_from) Date_from, to_date(l.date_to) date_to, to_char(l.BUF) buf, COMMAND_TEXT contract from ows.v_local_constants l) lc
                                     (select to_date('18102016','ddmmyyyy') Date_from, to_date('18112016','ddmmyyyy') date_to  from dual ) lc
                                where 
                                dr.term_cat='P' and dr.amnd_state='A'
                                and dev.id=dr.acnt_contract__oid
                                and dev.acnt_contract__oid=ac.id
                                and ac.client__id=cl.id  
                                and cl.amnd_state='A'
                                and ac.client_type in (1900,1901) 
                              and ac.product in (select apl.internal_code from ows.appl_product apl where apl.code='MPI' and apl.amnd_state='A' and apl.parent_code is null and rownum=1)
                                and cl.short_name is not null and ac.contract_number is not null
                                and de.POSTING_DATE >=lc.Date_from
                                and de.POSTING_DATE < lc.date_to+1
                                and ac.id=act.acnt_contract__oid  
                                and de.RET_REF_NUMBER='630081169032'
                                and act.code='X'
                                and de.ACCOUNT__OID=act.id
                                and de.SERVICE_CLASS<>'d'   
                                      ) a,
 --(select to_date(l.date_from) Date_from, to_date(l.date_to) date_to from ows.v_local_constants l) lc
     (select to_date('18102016','ddmmyyyy') Date_from, to_date('18112016','ddmmyyyy') date_to  from dual ) lc
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status<>'J'
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status<>'J'
and d.id=a.did
group by d.id , d.posting_date, a.con_num, d.trans_date ,d.target_number,d.auth_code,d.target_channel,d.source_number,a.dev_nam,d.request_category, lc.Date_from, lc.date_to
order by 3,2) tab

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number "номер Контр",
de.TRANS_DATE "дата опера",
de.RET_REF_NUMBER "номер докум",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr<>1)  then 
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end "Дебит",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr=1)  then 
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end "Кредит",
 case when de.trans_type=5 
        then 'Безналичная Оплата услуг ПОС\Интернет'
      when de.trans_type=50 
        then 'Безналичная Оплата услуг Казино'   
      when de.trans_type=13
        then 'Снятие наличных через Банкомат'
      when de.trans_type=11
        then 'Снятие наличных через Кассу'
      when de.trans_type=15
        then 'Безналичное зачисление' 
      when de.trans_type in (182,700)
        then 'Безналичное зачисление' 
      when de.trans_type in (33213)
        then 'Безналичное списание' 
      when de.trans_type in (35314,40274)
        then 'Зачисление Зарплаты'  
      when de.trans_type in (35316)
        then 'Зачисление через Кассу'   
      when de.trans_type in (35468,35549,35590,35670,35678,37328,37759)
        then 'Списание Комиссиии Банка'  
      when de.trans_type in (35630,35636)
        then 'Зачсиление средств с чужого банка через АБИС' 
      when de.trans_type in (37980)
        then 'Пополнение через ИПТ' 
      when de.trans_type in (39473)
        then 'Зачисление через СБОЛ' 
       when de.trans_type in (39476)
         then 'Списание через СБОЛ' 
       when de.trans_type in (39489)
         then 'оплата услуг в СБОЛ' end   "назнач платежа",
de.TRANS_DETAILS "информ о контраг",
ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,ac.curr,(ows.rpr.GET_ACC_BAL(acc.id,de.POSTING_DATE)),(de.POSTING_DATE)) "Сальдо",
(select cu.name from ows.currency cu where cu.amnd_state = 'A' and cu.code = ac.curr) "валюта счета"
from ows.doc_entry de, ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.code='P'
and acc.id=de.ACCOUNT__OID
and acc.acnt_contract__oid=ac.id
and de.TRANS_DATE>=to_date('01012014','ddmmyyyy')
and ac.id in (
                select 
                ac.id
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.contract_number in ('KZ45914CP39817241598',
                'KZ64914CP39810761171','KZ98914CP39842265189','KZ41914CP39833703055','KZ51914038PN00076280','KZ17914CP84015128851',
                'KZ47914CP39866751623','KZ58914CP39820696989','KZ57914CP39853964127','KZ64914CP84048475732','KZ54914CP39889122704',
                'KZ97914CC39876408593','KZ52914CC39829280304','KZ41914CP39833703055','KZ57914CP39853964127','KZ64914CP84048475732',
                'KZ51914038PN00076280','KZ02914CP39838179628','KZ09914CP39881974129','KZ54914CP84093292337','KZ58914CP39822027538',
                'KZ88914CP39828320067','KZ45914CP39817241598','KZ64914CP39810761171','KZ98914CP39842265189','KZ54914CP39889122704',
                'KZ17914CP84015128851','KZ47914CP39866751623'))
order by 1,2
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select distinct de.TRANS_TYPE,
(select tt.dr_cr||' '||tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE ) tip 
from ows.doc_entry de, ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.code='P'
and de.SERVICE_CLASS in ('B','S','M','T')
and acc.id=de.ACCOUNT__OID
and acc.acnt_contract__oid=ac.id
and de.TRANS_DATE>=to_date('01012014','ddmmyyyy')
and ac.id in (
                select 
                ac.id
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.contract_number in ('KZ45914CP39817241598',
                'KZ64914CP39810761171','KZ98914CP39842265189','KZ41914CP39833703055','KZ51914038PN00076280','KZ17914CP84015128851',
                'KZ47914CP39866751623','KZ58914CP39820696989','KZ57914CP39853964127','KZ64914CP84048475732','KZ54914CP39889122704',
                'KZ97914CC39876408593','KZ52914CC39829280304','KZ41914CP39833703055','KZ57914CP39853964127','KZ64914CP84048475732',
                'KZ51914038PN00076280','KZ02914CP39838179628','KZ09914CP39881974129','KZ54914CP84093292337','KZ58914CP39822027538',
                'KZ88914CP39828320067','KZ45914CP39817241598','KZ64914CP39810761171','KZ98914CP39842265189','KZ54914CP39889122704',
                'KZ17914CP84015128851','KZ47914CP39866751623'))


 case when d.trans_type=5 
       then 'Безналичная Оплата услуг ПОС\Интернет'
      when d.trans_type=50 
       then 'Безналичная Оплата услуг Казино'   
      when d.trans_type=13
       then 'Снятие наличных через Банкомат'
       when d.trans_type=11
       then 'Снятие наличных через Кассу'
       when d.trans_type=15
       then 'Безналичное зачисление' 
        when d.trans_type in (182,700)
       then 'Безналичное зачисление' 
          when d.trans_type in (33213)
       then 'Безналичное списание' 
          when d.trans_type in (35314,40274)
       then 'Зачисление Зарплаты'  
         when d.trans_type in (35316)
       then 'Зачисление через Кассу'   
           when d.trans_type in (35468,35549,35590,35670,35678,37328,37759)
       then 'Списание Комиссиии Банка'  
           when d.trans_type in (35630,35636)
       then 'Зачсиление средств с чужого банка через АБИС' 
            when d.trans_type in (37980)
       then 'Пополнение через ИПТ' 
             when d.trans_type in (39473)
       then 'Зачисление через СБОЛ' 
           when d.trans_type in (39476)
       then 'Списание через СБОЛ' 
            when d.trans_type in (39489)
       then 'оплата услуг в СБОЛ' 
            


+++++++++++++++++++++++номад остаток++++++++++++++++++++++++++++++++++++++++++++
select 
a1||a2||a3 from
(
with v as
(select 
(select acc.tr_company from ows.acnt_contract acc 
    where acc.amnd_state='A' 
      and acc.acnt_contract__oid=ac.id
      and acc.client__id=ac.client__id
      and acc.tr_company is not null
      and rownum=1) tr_company,     
to_date('01092016','ddmmyyyy') date_from,
ac.contract_number,
a.id
from ows.acnt_contract ac,ows.appl_product ap,ows.account a
where ac.amnd_state='A'
and ac.con_cat='A'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and instr(upper(ap.name),'NOMAD')<>0
and a.acnt_contract__oid=ac.id
and a.account_type=6
and ac.curr='398')
     select
     '~SBR~'||v.tr_company||'~SBANK~' a1, to_char(round(
                  (
                    (
                      (
                        (
                         (select
                           sum(ows.rpr.GET_ACC_BAL(v.id,trunc(add_months(last_day(v.date_from),-1))+ROWNUM))
                          from ows.client
                             where rownum <= abs(to_number(trunc(add_months(last_day(v.date_from),-1))-last_day(v.date_from)))/*непрерывнй диапазон дат*/)
                         )/abs(to_number(trunc(add_months(last_day(v.date_from),-1))-last_day(v.date_from))))*0.04)/12)/3.7
                 )) a2,'~'||to_char(last_day(v.date_from),'DDMONYY','NLS_DATE_LANGUAGE=American') a3
      
           from v
           where v.tr_company is not null)
where a2<>0           

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select count(d.id) 
from ows.doc d 
where d.amnd_state = 'A'
and d.is_authorization = 'N'
and d.service_class='T'
and d.trans_type=5
and d.amnd_date>to_date('10082016','ddmmyyyy')
and d.id>295838747
and d.trans_date >= to_date('15082016','ddmmyyyy')
and d.target_channel in ('v','e','h')
and d.posting_status = 'P'
and d.trans_condition in
('NEV2',
'PES',
'NEU2',
'PET',
'NEV',
'NEU')
and  ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'840',d.settl_amount,d.posting_date)>100


select count(*) from 
(
select distinct  
nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)  fio,
(select apl.name from  ows.appl_product apl where apl.amnd_state='A' and apl.internal_code=ac.product and rownum=1) prodct_nam
,mp.name service_pack_nam,ac.contract_number nomer_scheta,
(select br.name from ows.branch br where br.amnd_state='A' and br.code=cl.branch and rownum=1) filial 
from ows.service s ,ows.serv_pack cp, ows.serv_pack mp, ows.add_pack ap, ows.acnt_contract ac, ows.client cl
where s.amnd_state='A'
and (  s.trans_type_t=264660 )
and cp.amnd_state='A'
and cp.id=s.serv_pack__oid
and ap.amnd_state='A' 
--and ap.default_is_active='Y'
and ap.serv_pack__id=cp.id
and mp.amnd_state='A'
and mp.id=ap.serv_pack__oid
and mp.id=ac.serv_pack__id
and ac.amnd_state='A'
and ac.client__id=cl.id
and ac.is_ready<>'C'
and ac.contr_status<>86
and ac.pcat='C' and ac.f_i='724'
and cl.amnd_state='A'
and ac.con_cat='A'
)
order by 4

++++++++++++++++++++++++++++++++++реест cloudpayments+++++++++++++++++++++++++++++++++++++++++++++

select to_char(sysdate,'dd.mm.yyyy hh24:mi:ss')||chr(13) cloundPayments from dual
union all     
select rownum||';'||d.f from               
(with s as (select  dev.contract_number term_id,
                                      sum(ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,'398',de.SETTL_AMOUNT,de.POSTING_DATE)) summa_tg
                                      from ows.device_rec dr,
                                       ows.doc_entry de,
                                       ows.account act,
                                       ows.acnt_contract ac, 
                                       ows.acnt_contract dev, 
                                                               (select 
                                                                 case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
                                                                       then to_date('01012100','ddmmyyyy')
                                                                      when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
                                                                            (trunc(trunc(sysdate))-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
                                                                        then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
                                                                      else trunc(sysdate)-1 end d
                                                                 from dual) a
                                where 
                                    dr.term_cat='P' 
                                and dr.amnd_state='A'
                                and dev.id=dr.acnt_contract__oid
                                and dev.acnt_contract__oid=ac.id
                                and ac.client_type in (1900,1901) 
                              and ac.product in (select apl.internal_code from ows.appl_product apl where apl.code='MPI' and apl.amnd_state='A' and apl.parent_code is null and rownum=1)
                                and de.POSTING_DATE >=a.d
                                and de.POSTING_DATE < a.d+1
                                and ac.id=act.acnt_contract__oid  
                                and act.code='X'
                                and de.ACCOUNT__OID=act.id
                                and de.SERVICE_CLASS<>'d'  
                                group by dev.contract_number ) 
select s.term_id||';'||s.summa_tg||';'||chr(13) f from s
union all 
select 'Итого'||';'||sum(s.summa_tg)||';'||chr(13) f   from s ) d                      
                                
                  
select 'skdfhkj'||chr(13)||'sdlkjsdlkf'  from dual 
              
                                
                                select 
                                case when  ows.sy_calendar.IS_WRK_DAY(trunc(to_date('04102016','ddmmyyyy')))=0 
                                      then to_date('01012100','ddmmyyyy')
                                     when ows.sy_calendar.IS_WRK_DAY(trunc(to_date('04102016','ddmmyyyy')))=1 and 
                                          (trunc(trunc(to_date('04102016','ddmmyyyy')))-ows.sy_calendar.PREV_WRK_DAY(trunc(to_date('04102016','ddmmyyyy'))))>1 
                                      then ows.sy_calendar.PREV_WRK_DAY(trunc(to_date('04102016','ddmmyyyy'))) 
                                     else trunc(to_date('04102016','ddmmyyyy'))-1 end d
                                from dual
                                
++++++++++++++++++поиск номеров телефон+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select * 
from ows.client_address ca 
where 
--ca.amnd_state='A' 
--and ca.address_type in (65,66,67,94)
--and 
ca.address_zip like '%77026250062%'

select * from ows.client cld where cld.phone_m like '%7026250062%' or cld.phone like '%7026250062%' or cld.phone_h like '%7026250062%' 

select * from ows.evnt_msg em where 
 em.delivery_channel='M' and em.address_data like '%7017772633%'
and em.date_from >=to_date('01112016','ddmmyyyy')


++++++++++++++++++++++++++++++++++++исправление transfer from Employer в выписке+++++++++++++++++++++++++++++++++++++++++++++
select count(*) ,
mt.posting_status,
mt.service_class
from  ows.m_transaction mt
where lower(mt.trans_code) like 't1%'
and exists (
            select *  from ows.trans_subtype ts , ows.trans_type tt
            where ts.amnd_state='A'
            and ts.id=mt.trans_subtype
            and ts.trans_type__oid=tt.id
            and tt.amnd_state='A'  and tt.name ='Transfer From Employer (Fee)')
and mt.posting_date>to_date('01052016','ddmmyyyy')
group by mt.posting_status,
mt.service_class

select * from ows.trans_type tt where tt.name='Transfer From Employer (Fee)'


select *  from ows.trans_subtype ts , ows.trans_type tt
where ts.amnd_state='A'
--and ts.id=mt.trans_subtype
and ts.trans_type__oid=38563

select count(d.id) 
from  ows.m_transaction mt,ows.doc d
where lower(mt.trans_code) like 't1%'
and exists (
            select *  from ows.trans_subtype ts , ows.trans_type tt
            where ts.amnd_state='A'
            and ts.id=mt.trans_subtype
            and ts.trans_type__oid=tt.id
            and tt.amnd_state='A' 
            and tt.name ='Transfer From Employer (Fee)')
and mt.posting_date>to_date('01052016','ddmmyyyy')
and mt.doc__oid=d.id
and d.trans_type<>38563

group by mt.posting_status,
mt.service_class


select *  from ows.doc d where 
d.amnd_state='A' and d.trans_type in (40776,40759,40758,40757,40756,40736)
and d.amnd_date>to_date('01042016','ddmmyyyy')

select 
d.amnd_date,
d.trans_date,d.trans_amount,d.trans_curr,d.target_number,
(select tt.name from ows.trans_type tt where tt.amnd_state='A'and tt.id=d.trans_type) tip,
d.ret_ref_number,
d.acq_ref_number,
d.source_reg_num,
d.posting_status
from  ows.m_transaction mt,ows.doc d
where lower(mt.trans_code) like 't1%'
and exists (
            select *  from ows.trans_subtype ts , ows.trans_type tt
            where ts.amnd_state='A'
            and ts.id=mt.trans_subtype
            and ts.trans_type__oid=tt.id
            and tt.amnd_state='A'
            and tt.name ='Transfer From Employer (Fee)'
            )
and mt.posting_date>=to_date('01052016','ddmmyyyy')
and mt.doc__oid=d.id
and d.amnd_state='A'
and d.amnd_date>=to_date('01052016','ddmmyyyy')
order by 5,9

select cl.f_i,
ows.xwclient('CCAT',cl.ccat)client_cat ,
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) client_type,
cl.add_info_01 iin ,count(*) kolvo 
from ows.client cl 
where 
cl.amnd_state='A' 
and cl.ccat is not  null 
and cl.ccat<>'A'  
and cl.add_info_01 is null
group by cl.ccat,cl.add_info_01,cl.clt, cl.f_i
having count(*)>1


select * from ows.client cl 
where cl.amnd_state='A'

select * from ows.client cl where cl.amnd_state='A'
and cl.ccat is not  null 
and cl.ccat<>'A'  
and cl.add_info_01 is null
and cl.f_i<>'724'
+++++++++++++++++++++++++++++++++++++++++++аппликации++++++++++++++++++++++++++++++++
select count(*),substr(a.appl_reg_number,5,2) 
from ows.APPL_ACNT a
where approval_stage = 'ACCEPT' 
and   posting_status='W' 
and amnd_state='A'  
 and pcat='C' 
 and appl_acnt__oid is null  
 and substr(appl_reg_number,1,1)<>'6'
and amnd_date>=to_date('06022017','ddmmyyyy')
group by substr(a.appl_reg_number,5,2)


select a.*--count(*),substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)
 from ows.APPL_ACNT a
where approval_stage = 'ACCEPT' 
and   posting_status='W' 
and amnd_state='A'  
 and pcat='C' 
 and appl_acnt__oid is null  
 and substr(appl_reg_number,1,1)<>'6'
and amnd_date>=to_date('06022017','ddmmyyyy')

group by substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)


approval_stage = '@WF_STAGE@' and 
posting_status='W' and amnd_state='A' 
and pcat='C' and appl_acnt__oid is null
and substr(appl_reg_number,1,1)<>'6' 
and amnd_date>=to_date('20012017','ddmmyyyy')
and substr(appl_reg_number,5,2)<>'NC'

ows.acnt_contract

approval_stage = '@WF_STAGE@' and 
posting_status='W' and amnd_state='A' 
and pcat='C' and appl_acnt__oid is null
and substr(appl_reg_number,1,1)<>'6' 
and amnd_date>=to_date('20012017','ddmmyyyy')
and substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)<>'NC'

select count(*),substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)
 from ows.APPL_ACNT a
where approval_stage = 'ACCEPT' 
and   posting_status='W' 
and amnd_state='A'  
 and pcat='C' 
 and appl_acnt__oid is null  
 and substr(appl_reg_number,1,1)<>'6'
and amnd_date>=to_date('06022017','ddmmyyyy')
and substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)='NC'
group by substr(nvl(a.appl_reg_number,'ddddddddddd'),5,2)

++++++++++++++++++++++++++++++номер телефонов+++++++++++++++++++++++++++++++++++++
select ca.address_zip
from ows.usage_action ua , ows.acnt_contract ac , ows.client_address ca
where  ua.posting_status in ('S','W','P')
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS%') 
and ua.acnt_contract__id=ac.id
and ac.amnd_state='A'
and ac.client__id=ca.client__oid
and ca.amnd_state='A'
and ca.address_type in (select at.id from ows.address_type at where at.amnd_state='A'and lower(at.name) like '%addr_sms%')

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select cl.f_i,
ows.xwclient('CCAT',cl.ccat)client_cat ,
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) client_type,
cl.clt,
cl.add_info_01 iin ,count(*)  kolvo 
from ows.client cl 
where 
cl.amnd_state='A' 
--and cl.ccat is not  null 
and cl.ccat<>'A'   -- no accountant no null
and cl.f_i not in('801','1') -- no ptp client  ,no principal
and (cl.clt not in (1896,1901) or cl.clt is null) --no merchant resident ,no bank atm
and cl.add_info_01 is null
and (cl.service_group<>'COMPANY_HANDBOOK' or cl.service_group is null) -- no organization
group by cl.f_i,cl.ccat,cl.clt,cl.add_info_01
having count(*)>1


select cl.f_i,
ows.xwclient('CCAT',cl.ccat)client_cat ,
(select ct.name from ows.client_type ct where ct.amnd_state='A' and ct.id=cl.clt) client_type,
cl.clt,
cl.add_info_01 iin ,count(*)  kolvo 
from ows.client cl 
where 
cl.amnd_state='A' 
--and cl.ccat is not  null 
and cl.ccat<>'A'   -- no accountant no null
and cl.f_i not in('801','1') -- no ptp client  ,no principal
and (cl.clt not in (1896,1901) or cl.clt is null) --no merchant resident ,no bank atm
and cl.add_info_01 is not null
and (cl.service_group<>'COMPANY_HANDBOOK' or cl.service_group is null) -- no organization
group by cl.f_i,cl.ccat,cl.clt,cl.add_info_01
having count(*)>1



select mp.name main_pack,cp.name child_pack
from ows.serv_pack mp , ows.add_pack ap, ows.serv_pack cp, ows.usage_templ ut
where mp.amnd_state='A'
and ap.amnd_state='A'
and ap.serv_pack__oid=mp.id
and ap.serv_pack__id=cp.id
and cp.amnd_state='A'
and upper(ut.usage_code) like '%500A%'
and ut.amnd_state='A'
and ut.serv_pack__oid=cp.id


select * from ows.client cl where 
cl.amnd_state='A' 
--and cl.ccat is not  null 
and cl.ccat<>'A'  
and cl.f_i not in('801','1') -- ptp client
and (cl.clt is not null) -- merchant resident bank atm
and cl.add_info_01 is null
 and cl.ccat='P'
and (cl.service_group<>'COMPANY_HANDBOOK' or cl.service_group is null)


select ca.address_zip
from ows.usage_action ua , ows.acnt_contract ac , ows.client_address ca
where  ua.posting_status in ('S','W','P')
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS%') 
and ua.acnt_contract__id=ac.id
and ac.amnd_state='A'
and ac.client__id=ca.client__oid
and ca.amnd_state='A'
and ca.address_type in (select at.id from ows.address_type at where at.amnd_state='A'and lower(at.name) like '%addr_sms%')


select * from ows.address_type at where at.amnd_state='A'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
create or replace function CUST_CLIENT_CHECK(CLID IN ows.DTYPE. RECORDID %TYPE)
   return   ows.dtype.ErrorMessage  %type is
     x varchar2(32);
begin
      select client_number into x from ows.CLIENT where id=CLID;
      if x is null then
         begin
           update ows.CLIENT set client_number='W'||to_char(SBERBANK_CUST.GENERATE_CLIENT_NUMBER.NEXTVAL) where id=CLID;
           commit;
         exception
          when others then
            rollback;
         end;
      end if;
  return(ows.spac.CHECK_CLIENT(CLID));
end CUST_CLIENT_CHECK;



++++++++++++++++++++++++ПРОВЕРКА ИИН НА ЧЕКСУММУ++++++++++++++++++++++++++++++++++++++++
SELECT CL.ADD_INFO_01 IIN ,CL.BIRTH_DATE,CL.SHORT_NAME, CL.CLIENT_NUMBER FROM OWS.CLIENT CL 
WHERE CL.AMND_STATE='A'
AND REGEXP_INSTR(CL.ADD_INFO_01, '\D')=0
AND LENGTH(CL.ADD_INFO_01)=12
AND CL.ADD_INFO_01 IS NOT NULL
AND CL.CCAT IN ('P','C')
AND SBERBANK_CUST.CUST_IIN_CHECK1(CL.ADD_INFO_01)=1


create or replace function CUST_IIN_CHECK1(IIN IN VARCHAR2)
   return    NUMBER  is
     CHECKSUM   NUMBER;
     FACTOR     NUMBER;
     NUMCYCLES  NUMBER;
     CHECKDIGIT NUMBER;
     I          NUMBER;
     J          NUMBER;
begin

 IF IIN is not null then
   IF LENGTH(IIN) != 12 THEN
        return 0;
        end IF;

        IF REGEXP_INSTR(IIN, '\D') > 0 THEN
        RETURN 0;
        END IF;

  CHECKSUM   := 0;
  CHECKDIGIT := -1;
  NUMCYCLES := 2;

    FOR I IN 0 .. NUMCYCLES - 1 LOOP
      FOR J IN 1 .. 11 LOOP
          FACTOR := J + I * 2;
        CHECKSUM := CHECKSUM + SUBSTR(IIN, J, 1) * FACTOR;
      END LOOP;
      CHECKSUM := MOD(CHECKSUM, 11);
      IF CHECKSUM < 10 THEN
        CHECKDIGIT := CHECKSUM;
        EXIT;
      END IF;
      CHECKSUM := 0;
    END LOOP;

    IF CHECKDIGIT = -1 THEN
      RETURN  1;
    END IF;

    IF CHECKDIGIT != SUBSTR(IIN, 12, 1) THEN
      RETURN  1;
    END IF;
    
    RETURN 0;
  END IF;

end CUST_IIN_CHECK1;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

cursor appl_curr is (    
               select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                ,extractValue(value(par_appl),'Application/ActionType')      act_type
                ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
      from  (SELECT XMLType(C_XML) XML FROM DUAL) s
              ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
              ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
              ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data);

cursor sub_appl_curr is ( 
           select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
          ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
          ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
          ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
          ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
          ,extractValue(value(sub_appl),'Application/ActionType')      act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
          ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
          ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
          ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
          ,extractValue(value(appl_data),'Data/Comment') BlockDetails
  from  (SELECT XMLType(C_XML) XML FROM DUAL) s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
        ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
        ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
        ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event);



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



/* тестовая функция*/
FUNCTION test_request(message    in varchar2) RETURN varchar2
IS
r varchar2(10);
BEGIN
 r:='';
 delete from test1;
 COMMIT;
 begin
 INSERT INTO sberbank_cust.test1(add_data) values(message) ;
 commit;
         EXCEPTION
         WHEN no_data_found THEN
         return 'no_data';
         WHEN too_many_rows THEN
         return 'too_many';
         when others then 
         return 'error';
 end;
  begin
  select ADD_DATA into r from SBERBANK_CUST.test1 ;
           EXCEPTION
         WHEN no_data_found THEN
         return 'no_data';
         WHEN too_many_rows THEN
         return 'too_many';
         when others then 
         return 'error';
  end;
   RETURN r;
END test_request;


++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio,
 cl.add_info_01 iin,
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4) card_num,
 trunc(d.trans_amount,2) summa_oper ,
 (select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=d.trans_curr and rownum=1) valuta,
 d.trans_date,
     (select substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)
      from ows.doc pay
      where pay.amnd_state='A'
      and pay.is_authorization='N'
      and pay.service_class='T'
      and pay.posting_status='P' and pay.trans_type=700
      and pay.doc__summ__id=d.doc__summ__id ) card_num_2,
  case when  d.trans_type not in (33213,700)
       then d.trans_details   --НЕ ПЕРЕВОД деталь транзакции для операции
       when  d.trans_type in (700)  --ПЕРЕВОД по CH Payment
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                            from ows.acnt_contract ac,ows.client cl,ows.doc dd
                            where ac.id=dd.target_contract
                            and cl.id=ac.client__id
                            and dd.amnd_state='A'
                            and dd.doc__summ__id=d.doc__summ__id
                            and dd.trans_type=33213)  --если  отправитель наш Вытаскиваем ФИО нашего клиента
                  else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'RPNA'),d.trans_details) end  --Иначе если отправитель не наш клиент то вытаскиваем CPNA
       when d.trans_type in (33213) -- ПЕРЕВОД CH DEBIT
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=700 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name)
                             from ows.acnt_contract ac,ows.client cl,ows.doc dd
                             where ac.id=dd.target_contract
                             and cl.id=ac.client__id
                             and dd.amnd_state='A'
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)-- если получатель наш Вытаскиваем  ФИО нашего клиента
                  else (select  nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'RPNA'),dd.trans_details)
                             from ows.doc dd
                             where  dd.amnd_state='A'
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)
                  end
        end FIO_or_Details,
case when d.trans_type in (5,39489) then 'Оплата услуг'
     when d.trans_type in (33213) then 'Перевод P2P списание средств'
     when d.trans_type in (700) then 'Перевод P2P зачисление средств'
     when d.trans_type in (40916) then 'Перевод средств Другому банку'
     when d.trans_type in (39476) then 'Перевод на текущий счет'
     when d.trans_type in (39473) then 'Перевод с текущего счета'
     else (select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) end tip_oper
from ows.doc d,  ows.client cl , ows.acnt_contract ac , ows.pragmaclient pg
where
d.amnd_state='A'
AND d.IS_AUTHORIZATION='N'
AND d.POSTING_STATUS='P'
AND d.SERVICE_CLASS='T'
AND CL.AMND_STATE='A'
AND AC.AMND_STATE='A'
AND AC.CLIENT__ID=CL.ID
and ac.contract_number=d.target_number
and d.source_channel='W'
and cl.add_info_01=pg.iin and pg.inform='040717AUDIT'
and d.amnd_date>to_date('25122015','ddmmyyyy')
and d.trans_date>=to_date('01012016','ddmmyyyy')
and d.id>198053459
order by  2
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio,
 cl.add_info_01 iin,
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4) card_num,
 trunc(d.trans_amount,2) summa_oper ,
 (select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=d.trans_curr and rownum=1) valuta,
 d.trans_date,
 case when d.source_number like '1%' or d.source_channel='B' then 'IPT'
      else 'ATM' end device_type,
 d.source_number device_num,
 (select dr.location from ows.device_rec dr where dr.terminal_id=d.source_number and dr.amnd_state='A' and dr.term_cat='A') device_address,        
     (select substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)
      from ows.doc pay 
      where pay.amnd_state='A' 
      and pay.is_authorization='N' 
      and pay.service_class='T' 
      and pay.posting_status='P' and pay.trans_type=700
      and pay.doc__summ__id=d.doc__summ__id ) card_num_2,
  case when  d.trans_type not in (33213,700)
       then d.trans_details   --НЕ ПЕРЕВОД деталь транзакции для операции 
       when  d.trans_type in (700)  --ПЕРЕВОД по CH Payment 
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                            from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                            where ac.id=dd.target_contract 
                            and cl.id=ac.client__id 
                            and dd.amnd_state='A' 
                            and dd.doc__summ__id=d.doc__summ__id 
                            and dd.trans_type=33213)  --если  отправитель наш Вытаскиваем ФИО нашего клиента
                  else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'RPNA'),d.trans_details) end  --Иначе если отправитель не наш клиент то вытаскиваем CPNA
       when d.trans_type in (33213) -- ПЕРЕВОД CH DEBIT
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=700 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                             from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                             where ac.id=dd.target_contract 
                             and cl.id=ac.client__id 
                             and dd.amnd_state='A' 
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)-- если получатель наш Вытаскиваем  ФИО нашего клиента
                  else (select  nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'RPNA'),dd.trans_details)
                             from ows.doc dd 
                             where  dd.amnd_state='A' 
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)  
                  end 
        end FIO_or_Details,
case when d.trans_type in (5) then 'Оплата услуг через банкомат'
     when d.trans_type in (33213) then 'Перевод P2P списание средств'
     when d.trans_type in (700) then 'Перевод P2P зачисление средств' 
     when d.trans_type in (13) then 'снятие наличных средств через Банкомат с ПК'  
       when d.trans_type in (60) then 'пополнение наличных средств через Банкомат' 
         when d.trans_type in (34084) then 'снятие наличных через банкомат без ПК'
     else (select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) end tip_oper    
from ows.doc d,  ows.client cl , ows.acnt_contract ac , ows.pragmaclient pg
where 
d.amnd_state='A'
AND d.IS_AUTHORIZATION='N'
AND d.POSTING_STATUS='P'
AND d.SERVICE_CLASS='T'
AND CL.AMND_STATE='A'
AND AC.AMND_STATE='A'
AND AC.CLIENT__ID=CL.ID
and ac.contract_number=d.target_number
and (d.source_channel='A' or (d.source_channel='B' and d.trans_type=37980) 
 or (d.trans_type=5 and d.source_channel='P' and d.trans_condition='PO1C'))
and cl.add_info_01=pg.iin and pg.inform='040717AUDIT'
and d.amnd_date>to_date('25122015','ddmmyyyy')
and d.trans_date>=to_date('01012016','ddmmyyyy')
and d.id>198053459
order by  2

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio,
 cl.add_info_01 iin,
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4) card_num,
 d.trans_amount ,
 (select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=d.trans_curr) valuta,
 d.trans_date,
     (select substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4)
      from ows.doc pay 
      where pay.amnd_state='A' 
      and pay.is_authorization='N' 
      and pay.service_class='T' 
      and pay.posting_status='P'
      and pay.doc__summ__id=d.doc__summ__id) card_num_2,
  case when  d.trans_type not in (33213,700)
       then d.trans_details   --НЕ ПЕРЕВОД деталь транзакции для операции 
       when  d.trans_type in (700)  --ПЕРЕВОД по CH Payment 
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=33213 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                            from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                            where ac.id=dd.target_contract 
                            and cl.id=ac.client__id 
                            and dd.amnd_state='A' 
                            and dd.doc__summ__id=d.doc__summ__id 
                            and dd.trans_type=33213)  --если  отправитель наш Вытаскиваем ФИО нашего клиента
                  else nvl(ows.rpr.GET_TAG_VALUE(d.add_info,'RPNA'),d.trans_details) end  --Иначе если отправитель не наш клиент то вытаскиваем CPNA
       when d.trans_type in (33213) -- ПЕРЕВОД CH DEBIT
       then  case when (select dd.target_channel from ows.doc dd where  dd.amnd_state='A' and dd.doc__summ__id=d.doc__summ__id and dd.trans_type=700 ) in ('e','v','h')
                  then (select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) 
                             from ows.acnt_contract ac,ows.client cl,ows.doc dd 
                             where ac.id=dd.target_contract 
                             and cl.id=ac.client__id 
                             and dd.amnd_state='A' 
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)-- если получатель наш Вытаскиваем  ФИО нашего клиента
                  else (select  nvl(ows.rpr.GET_TAG_VALUE(dd.add_info,'RPNA'),dd.trans_details)
                             from ows.doc dd 
                             where  dd.amnd_state='A' 
                             and dd.doc__summ__id=d.doc__summ__id
                              and dd.trans_type=700)  
                  end 
        end FIO_client2,
case when d.trans_type in (5,39489) then 'Оплата услуг'
     when d.trans_type in (33213) then 'Перевод P2P списание средств'
     when d.trans_type in (700) then 'Перевод P2P зачисление средств' 
     when d.trans_type in (40916) then 'Перевод средств Другому банку'  
     when d.trans_type in (39476) then 'Перевод на текущий счет'  
     when d.trans_type in (39473) then 'Перевод с текущего счета'   
     else (select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type) end tip_oper    
from ows.doc d,  ows.client cl , ows.acnt_contract ac --, ows.pragmaclient pg
where 
d.amnd_state='A'
AND d.IS_AUTHORIZATION='N'
AND d.POSTING_STATUS='P'
AND d.SERVICE_CLASS='T'
AND CL.AMND_STATE='A'
AND AC.AMND_STATE='A'
AND AC.CLIENT__ID=CL.ID
and ac.contract_number=d.target_number
and d.source_channel='W'
and d.id=489877481


and cl.add_info_01=pg.iin and pg.inform='AUDIT040717'
and d.amnd_date>to_date('25122015','ddmmyyyy')
and d.trans_date>=to_date('01012016','ddmmyyyy')
and d.id>198053459

select trunc(1202.5423,2) from dual)


select distinct ad.term_cat , dt.name
from ows.ACQ_DEV_HDW_STATE ad , ows.device_type dt 
where ad.device_type__id=dt.id  and dt.amnd_state='A'

select * from ows.trans_cond tc where tc.amnd_state='A' 
and (tc.condition_details like '%CAT1%' or tc.condition_details like '%CAT2%' or 
    tc.condition_details like '%CAT3%')

select * from ows.device_type dt where dt.amnd_state='A'

select pg.iin, pg.inform from ows.pragmaclient pg where pg.inform='040717AUDIT'

select * from ows.trans_type tt where tt.amnd_state='A' and tt.name='Note Acceptance'

select dr.location from ows.device_rec dr where dr.terminal_id='10106018' and dr.amnd_state='A'
select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) ,cl.country , ai.add_info_02
 from ows.appl_info ai, ows.client cl 
where ai.add_info_02='4402573545917694'
and ai.amnd_state='A'
and cl.id=ai.client__oid   
and cl.amnd_state='A'
and ai.add_info_type='P2P_CLIENT'


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) fio, 
cl.reg_number,cl.itn RNN,
cl.add_info_01 iin,
cl.client_number unkp,
(select ofc.user_id from ows.officer ofc where ofc.amnd_state='A' and cl.amnd_officer=ofc.id) U ,
(select ofc.name from ows.officer ofc where ofc.amnd_state='A' and cl.amnd_officer=ofc.id) Officer_name,
cl.amnd_date
 from ows.client cl 
where cl.amnd_state='A' 
and cl.is_ready='N'
and cl.f_i<>1
--and cl.client_number='W178608'
--AND CL.AMND_DATE<SYSDATE-1/96++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select d.target_number, d.trans_amount,d.source_reg_num 
from ows.doc d,(
select d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date) t_date ,count(*)
from ows.doc d 
where d.amnd_state='A'
and d.posting_status='P'
and d.trans_type=35316
and d.target_number is not null
and d.is_authorization='N'
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
group by d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date)
having count(*)>1) s
where d.target_number=s.target_number
and d.trans_amount=s.trans_amount
and d.trans_curr=s.trans_curr
and s.t_date=trunc(d.trans_date)
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
and d.is_authorization='N'
and d.amnd_state='A'
and d.posting_status='P'
and d.trans_type=35316


select count(d.id) from ows.doc d
where d.amnd_state='A'
and d.amnd_date>to_date('20052017','ddmmyyyy')
and d.id>458953594
and d.trans_type=35316
and d.is_authorization='Y'
and d.posting_status='P'

select id, amnd_date from ows.doc d 
where d.amnd_date=to_date('20052017 12:00','ddmmyyyy hh24:mi')

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select d.target_number, d.trans_amount,d.source_reg_num 
from ows.doc d,(
select d.target_number,d.trans_amount,d.trans_curr,count(*)
from ows.doc d 
where d.amnd_state='A'
and d.posting_status='P'
and d.trans_type=35316
and d.target_number='KZ65914CP84066557484'
and d.target_number is not null
and d.is_authorization='N'
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
group by d.target_number,d.trans_amount,d.trans_curr
having count(*)>1) s
where d.target_number=s.target_number
and d.trans_amount=s.trans_amount
and d.trans_curr=s.trans_curr
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
and d.is_authorization='N'
and d.amnd_state='A'
and d.posting_status='P'

select d.target_number, d.trans_amount,d.source_reg_num 
from ows.doc d,(
select d.target_number,d.trans_amount,d.trans_curr,trunc(sysdate) t_date ,count(*)
from ows.doc d 
where d.amnd_state='A'
and d.posting_status='P'
and d.trans_type=35316
and d.target_number is not null
and d.target_number='KZ65914CP84066557484'
and d.is_authorization='N'
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
group by d.target_number,d.trans_amount,d.trans_curr
having count(*)>1) s
where d.target_number=s.target_number
and d.trans_amount=s.trans_amount
and d.trans_curr=s.trans_curr
and s.t_date=trunc(d.trans_date)
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
and d.is_authorization='N'
and d.amnd_state='A'
and d.posting_status='P'

select d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date) t_date ,count(*)
from ows.doc d 
where d.amnd_state='A'
and d.posting_status='P'
and d.trans_type=35316
and d.target_number is not null
and d.is_authorization='N'
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
group by d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date)
having count(*)>1
++++++++++++++++++++++++++++++++++++++++++++

select d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date) t_date ,count(d.id)
from ows.doc d 
where d.amnd_state='A'
and d.posting_status<>'P'
and d.trans_type=35316
and d.target_number is not null
and d.is_authorization='N'
and d.id>457697621
and d.amnd_date>=to_date('19052017','ddmmyyyy')
and d.posting_date>=to_date('19052017','ddmmyyyy')
group by d.target_number,d.trans_amount,d.trans_curr,trunc(d.trans_date)
having count(*)>1
++++++++++++++++++++++++++++++++++++++++++


select  * from ows.file_info fi where fi.id=31716070

select * from ows.file_record fr where fr.file_info__oid=28789335

select * from ows.appl_acnt aa where aa.appl_reg_number='I_XML_072902'

select * from ows.file_record g where g.parms like '%APL_NC_090_17_51963_00001%'

select * from ows.appl_acnt aa where aa.acnt_contract__id=9886417

select * from ows.appl_acnt aa where aa.appl_reg_number ='I_XML_090374'

++++++++++++++++++++++++++++++++++++++++++

select distinct fi.creation_date,fi.file_name
from ows.file_record fr , ows.file_info fi
where fr.ref_record in (
          select --d.posting_status,count(*)
          d.id
           from ows.doc d 
          where d.amnd_state='A'
          and d.trans_type=35316
          and d.is_authorization='N'
          and d.auth_code is null
          and d.amnd_date>=to_date('19052017','ddmmyyyy')
          and d.posting_date>=to_date('19052017','ddmmyyyy')
          and d.posting_date<to_date('20052017','ddmmyyyy'))
and fr.record_type='D'
and fr.file_info__oid=fi.id 
and fi.file_status='R'

+++++++++++++++++++++++++++++++++++++++
select pm.process_log__oid,pm.id, pm.message_date,pm.message_name ,cl.short_name, cl.client_number
from ows.adv_appl ap , ows.client cl, ows.process_mess pm
where ap.amnd_state='A'  
and ap.appl_reg_number='PC_APL_RC_156_17_0000000896_01'
and ap.object_for='Client'
and ap.object_for_id=cl.id
and pm.object_type ='ADV_APPL'
and pm.doc__id=ap.id
and pm.message_name<>'Accept Adv Application'

++++++++++++++++++++++++++++++++++++++++++++++

select d.Source_Reg_Num, D.RET_REF_NUMBER,D.ACQ_REF_NUMBER,D.ID 
from ows.file_info  fi, ows.original_doc od, ows.file_record fr, ows.doc d
where fi.file_name='IIC_Documents_0038003820170413_0031.xml'
and fi.creation_date>to_date('12042017','ddmmyyyy')
and od.file_id=fi.file_id
and od.direction='I'
and fr.file_info__oid=od.file_info__id
and d.amnd_state='A'
and d.id=fr.ref_record
AND FR.RECORD_TYPE='D'


select fi.*
 from ows.file_info  fi,ows.original_doc  od 
where od.doc__id=683882168
and od.file_id=fi.file_id

+++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number, ac2.contract_number,
(select ua.start_date from   ows.usage_action ua 
where ua.posting_status in ('S','W', 'P')
and ua.event_type in (select id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD_SMS%') 
and ua.acnt_contract__id=ac.id and rownum=1
)
from ows.acnt_contract ac,ows.acnt_contract ac2 
where ac.amnd_state='A' 
and ac.con_cat = 'A'
and ac.contract_number in (select pm.rnn from ows.pragmaclient pm where pm.inform = '1306l' and pm.rnn = ac.contract_number ) 
and ac2.acnt_contract__oid=ac.id 
and ac2.amnd_state='A'
and ac2.con_cat = 'C'
and substr(ac2.contract_number,1,6)||'***'||substr(ac2.contract_number,-4) in  (select pm.iin from ows.pragmaclient pm where pm.inform = '1306l' and pm.rnn=ac.contract_number )

++++++++++++++++++++++++++++++++++++++++++++++++++
select *
from ows.APPL_HANDBOOK  ah 
where  ah.group_code='CLIENT_IIN'
and ah.code='900429302017'

select ah.code
from ows.APPL_HANDBOOK  ah 
where  ah.group_code='CLIENT_IIN' 
and ah.amnd_state='A'
minus

select cl.add_info_01 
from ows.client cl 
where cl.amnd_state='A'
minus
select ah.code
from ows.APPL_HANDBOOK  ah 
where  ah.group_code='CLIENT_IIN' 
and ah.amnd_state='A'

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare 
v_previd number; 
v_officer number;
pr_id  number;
v_count number := 0;
cursor cur is 
                    select
                    cl.id,
                    cl.first_nam,
                    cl.client_number
                    from ows.client cl
                    where cl.id in
                    (select
                    p.rnn
                    from ows.pragmaclient p
                    where p.inform='CLIENT_ID')
                    AND CL.ID NOT IN (select
                    P.RNN
                    from ows.pragmaclient p
                    where p.inform='2CLIENT_ID' 
                    ) ;
begin
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
   
         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
         
    pr_id := OWS.STND.PROCESS_START('Обновление клиентской таблицы',null,'N');
      
    for rec in cur loop
      ows.yclient(rec.id,'H',v_previd);
      update ows.client cl set cl.mother_s_nam=rec.first_nam , cl.amnd_officer=v_officer  where id = rec.id; 
      v_count:=v_count+1;
            
             if  mod(v_count,100) = 0 then 
        OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client Number = '||to_char(rec.client_number)||'  SecureNam = '||rec.first_nam);
               commit;
             end if;  
       OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client Number = '||to_char(rec.client_number)||'  SecureNam = '||rec.first_nam);
     end loop;
       commit; 
     OWS.STND.PROCESS_END;
       EXCEPTION
          WHEN others THEN
              OWS.STND.PROCESS_MESSAGE ('E',substr(SQLERRM,1,250));
              OWS.STND.PROCESS_END;
end;

++++++++++++++++++++++Outgoing CNP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*запускать отчет после принятии фаила от CNP и после отработки Posting сохранить в формате SB_Reg-213.xlsx 213 это календарь юлиан*/
select
  d.posting_date "Posting Date",
  d.posting_status "Posting Status",
  substr(d.target_number,1,6)||'*****'||substr(d.target_number,-4) "PAN",
  d.ret_ref_number "Ret Ref Number",
  d.acq_ref_number,
  d.amnd_date "Amendment Date",
  decode(d.outward_status,'W','Waiting','S','Suspended','N','To be Sent','Y','Sent','C','Closed','H','History','U','Settled','T','Processed','D','Decline','J','Rejected','I','Inactive','B','Accounted','X','Not for Export') "Outward Status",
  d.source_code "Source Code",
  d.trans_date "Trans Date",
  d.trans_amount "Trans Amount",
  (select c.name from ows.currency c where c.amnd_state = 'A' and c.code = d.trans_curr) "Trans Curr",
  (select b.name from ows.country b where b.amnd_state='A' and b.code=d.trans_country) "Trans Country",
  d.trans_city "Trans City",
  d.trans_details "Trans Details",
  (select m.name from ows.mess_channel m where m.amnd_state='A' and m.code=d.target_channel) "Target Channel",
  d.settl_amount "Settl Amount",
  case when round(d.trans_amount*0.0070,2)<=22 then 22 else round(d.trans_amount*0.0070,2) end,
  /*(select trunc(amount,2) from ows.entry
              where acnt_contract__id=3838660
                and doc_id=d.id
               \* and trans_date>=to_date('20022015','ddmmyyyy')
                and trans_date<=to_date('25022015','ddmmyyyy')*\) ,*/
  d.source_number/*,
  d.target_number*/
from  ows.doc d,ows.device_rec dr/*,ows.acnt_contract ac,ows.serv_pack sp*//*,ows.entry e */
   where d.amnd_state='A'
     and d.amnd_date>=to_date('02082017','ddmmyyyy')
    /* and d.amnd_date<=to_date('02032015','ddmmyyyy')*/
     and dr.amnd_state='A'
     /*and ac.amnd_state='A'
     and ac.id=dr.acnt_contract__oid*/
    /* and sp.amnd_state='A'
     and sp.id=ac.serv_pack__id*/
     and d.source_number=dr.terminal_id
   /*  and e.acnt_contract__id=ac.id
     and e.doc_id=d.id*/
     and d.amnd_state='A'
     and d.is_authorization='N'
     /*and e.entry_level_type='T'*/
     and dr.device_type__id =1516/*in (select id from ows.Device_Type
                                           where amnd_state='A'
                                             and instr(upper(name),'ELCOMM')<>0)*/
                                    /*         
                                             select count(d.id), d.source_number, d.trans_details, d.trans_city from ows.doc d where d.amnd_state = 'A'
                                             --and d.is_authorization
                                             and d.amnd_date >= to_date ('13042017','ddmmyyyy')
                                             and d.posting_status = 'S'
                                             and d.outward_status = 'W'
                                             group by d.source_number, d.trans_details, d.trans_city
*/



+++++++++++++++++++++++++++++когда Диспутники не могут найти признак отчет НБРК+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01072017','ddmmyyyy')
and d.amnd_date<to_date('01082017','ddmmyyyy')
and d.target_channel IN ('H', 'h') 
and d.source_channel in ('H')
and d.id>483307896
and d.id<509741508
and d.trans_type in (5, 50) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  


select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01082017','ddmmyyyy')
and d.amnd_date<to_date('01092017','ddmmyyyy')
and d.target_channel IN ('P') 
and d.source_channel in ('E')
and d.id>504116477
and d.id<534218996
and d.trans_type not in (15, 700, 33213, 35685,37019 ,35480, 35332,5, 50)
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  


+++++++++++++++++++++++++++++++отчет по exclusiv+++++++++++++++++++++++++++++++++++++++++

select  
 substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4) card_num,
 (select cs.name from ows.contr_status cs where cs.amnd_state='A' and cs.id=ac.contr_status) contr_sts,
 ac.date_open,
 ac.date_expire,
 ac.card_expire,
 cl.short_name,
 ap.name product,
 (select ofc.name from ows.officer ofc where ofc.amnd_state='A' and ofc.id=ca.amnd_officer) officer
from ows.acnt_contract ac, ows.client cl,ows.appl_product ap,
      (select 
      min(ac.amnd_date) mid, ac.contract_number
      from ows.acnt_contract ac,ows.appl_product ap
      where ac.con_cat='C'
      and ap.amnd_state='A' 
      and ap.name like '%Exc%' 
      and ap.internal_code=ac.product
      group by ac.contract_number) c , ows.acnt_contract ca
where ac.amnd_state='A'
and ac.con_cat='C'
and ac.client__id=cl.id
and cl.amnd_state='A'
and ap.amnd_state='A' 
and ap.name like '%Exc%' 
and ap.internal_code=ac.product
and ca.amnd_date=c.mid
and ca.contract_number=ac.contract_number

++++++++++++++++++++++++++++++++++аппрув контрактов++++++++++++++++++++++++++++++++++++++++++++++++++++++++
declare
errmess dtype. ErrorMessage %Type;
prID dtype.RecordID %Type;
begin
prID := stnd.process_start('Approve Contracts for CDU', null, null);
for contract in (select * from acnt_contract 
              where acnt_contract__oid is null
              and amnd_state = 'A'
              and is_ready='N'
              and contrac_number='KZ13914CP39830847200'
                 ) 
loop
  errmess := spac.renew_contr(contract.id);
end loop;
stnd.process_end();
end;
++++++++++++++++++++++++++++запрос от АЛЬФА сбер секюрити онлайн мониторинг++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


select 
a.trans_date,
ows.xwauth_record('CREDIT_TYPE',ar.CREDIT_TYPE) CREDIT_TYPE,
ows.xwauth_record('CREDIT_STATUS',ar.CREDIT_STATUS) CREDIT_STATUS,
ar.AUTH_CODE,
ar.RET_REF_NUMBER,
ar.TRANS_COUNTRY,
ar.TRANS_CITY,
ar.TRANS_DETAILS,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ar.TRANS_CURR )  trans_curr,
ar.TRANS_AMOUNT,
ar.SIC_CODE,
ar.CLOSED,
ar.RETURN_CODE,
(select rc.resp_text from ows.resp_code rc where rc.amnd_state='A' and rc.resp_code=ar.RETURN_CODE) resp_text,
ar.POSTING_DATE,
ows.xwauth_record('REQUEST_CATEGORY',ar.REQUEST_CATEGORY) REQUEST_CATEGORY,
ar.TRANS_CONDITION,
(select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=ar.TRANS_TYPE) as trans_type,
ar.TARGET_NUMBER,
ar.BLOCKED_AMOUNT,
ar.AVAILABLE_AMOUNT,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ar.CURR )  contract_curr
from ows.auth_record ar , ows.doc d, ows.doc f, ows.doc a
where ar.DOC__ID=a.id
and d.amnd_state='A'
and exists (select rc.code  from ows.dsp_reason  rc where rc.amnd_state='A' and 
( rc.name like '57 %' or rc.name like '62 %' or rc.name like '81 %' or rc.name like '83 %' 
or  rc.name like '4837 %' or rc.name like '4840 %' or rc.name like '4849 %' or rc.name like '4863 %' or rc.name like '4870 %' or rc.name like '4871 %' ) and rc.code=d.reason_code )
and f.amnd_state='A'
and a.amnd_state='A'
and d.doc__prev__id=f.id
and f.doc__prev__id=a.id 
and d.amnd_date>=to_date('01072017','ddmmyyyy')
and d.amnd_date<to_date('01082017','ddmmyyyy')
and d.id>483307896


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
mt.name menu,
ofc.name fio,
ofc.user_id U,
ows.xwofficer('IS_ACTIVE',ofc.is_active ) is_active
from ows.officer_group ofg  , ows.menu_tree mt , ows.officer ofc
where ofg.amnd_state='A'
and mt.amnd_state='A'
and ofg.menu_tree__id=mt.id
and upper(mt.name) like '%INST%'
and ofc.amnd_state='A'
and ofc.officer_group__oid=ofg.id


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
ac.contract_number , 
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) valuta,
 sum(ows.rpr.GET_ACC_BAL(acc.id,to_date('01012015','ddmmyyyy')))  Otatok_01015,
  sum(ows.rpr.GET_ACC_BAL(acc.id,to_date('01012016','ddmmyyyy'))) Otatok_010116,
   sum(ows.rpr.GET_ACC_BAL(acc.id,to_date('01012017','ddmmyyyy'))) Otatok_010117
from ows.acnt_contract ac ,ows.account acc
where ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('P','P1','P2')
and ac.contract_number in ('KZ58914CP84079388964','KZ90914038PN00027660')
group by ac.contract_number,ac.curr

+++++++++++++переподключение СМС по потухшим  без MB_LOY_PERIOD+++++продукт ERG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
DECLARE 
CURSOR MIG_CUR is (select 
                    ac.id, 
                    ac.contract_number card_num,
                    ( select et.code from ows.event_type et where et.amnd_state='A' and et.id=ua2.event_type) event_typ,
                    ua2.start_date start_dat
                    from ows.acnt_contract ac , ows.usage_action ua2
                    where ac.amnd_state='A'
                    and ac.con_cat='C' 
                    and ac.is_ready<>'C' 
                    and ac.contr_status in (14,98,776)
                    and ua2.posting_status in ('S','P')
                    and ua2.acnt_contract__id=ac.id
                    and ua2.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
                                 and ua.posting_status in ('S','P')
                                 and ua.acnt_contract__id=ac.id )
                    and exists (select spl.name 
                                 from ows.appl_product mpl , ows.appl_product spl
                                 where mpl.amnd_state='A' and mpl.code in ('KZ_ERGSAL','KZ_ERGSAL_NR')
                                 and spl.appl_product__oid=mpl.id
                                 and spl.amnd_state='A'
                                 and ac.prfx.oduct=spl.internal_code)      
                    and not exists ( select ap.id  from ows.add_pack ap
                                 where ap.amnd_state='A'
                                 and ap.serv_pack__oid=ac.serv_pack__id
                                 and upper(ap.name) like '%CARD MOBILE%'
                                 and upper(ap.name) not like '%ECON%'
                                 and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')                                     
                    );         
Evnt_ID1 dtype. RecordID %Type :=0;
Evnt_Code1 CONSTANT dtype. Name %Type :='DROP_SMS';

Evnt_ID2 dtype. RecordID %Type :=0;
Evnt_Code2 dtype. Name %Type;

Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID1 from ows.EVENT_TYPE where code=Evnt_Code1 and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 1', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
             Usage_Action_ID :=0;
             Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID1,
              rec.ID,
              NULL,
              NULL,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;


+++++++++++++++++++++++больше одного подключенного но нет сервиса++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


/*больше одного подключения*/
select 
ac.contract_number, count(*)
from ows.acnt_contract ac ,ows.usage_action ua 
where ac.amnd_state='A'
and ac.con_cat='C' 
and ac.is_ready<>'C' 
and ac.contr_status in (14,98,776)
and exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
and ua.posting_status in ('S','P')
and ua.acnt_contract__id=ac.id 
and exists (select spl.name 
             from ows.appl_product mpl , ows.appl_product spl
             where mpl.amnd_state='A' and mpl.code in ('KZ_ERGSAL','KZ_ERGSAL_NR')
             and spl.appl_product__oid=mpl.id
             and spl.amnd_state='A'
             and ac.product=spl.internal_code)      
and not exists ( select ap.*  from ows.add_pack ap
             where ap.amnd_state='A'
             and ap.serv_pack__oid=ac.serv_pack__id
             and upper(ap.name) like '%CARD MOBILE%'
             and upper(ap.name) not like '%ECON%'
             and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')  
 group by   ac.contract_number
 having count(*)>1  

+++++++++++++++++++++перекодключение MB_LOY_PERIOD по потухшим СМС+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
DECLARE 
CURSOR MIG_CUR is (             
                    select 
                     ac.id, 
                     ac.contract_number card_num,
                    ( select et.code from ows.event_type et where et.amnd_state='A' and et.id=ua.event_type) event_typ,
                    ua.start_date start_dat 
                    from ows.acnt_contract ac, ows.usage_action ua, ows.pragmaclient p
                    where ac.amnd_state='A'
                    and ac.id=ua.acnt_contract__id
                    and ua.posting_status in ('C')
                    and  p.inform='25082017ADDSMS' 
                    and p.regnumber=ac.contract_number
                    and ua.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%MB_LOY_PERIOD%' and et.id=ua.event_type )
                                 and ua.posting_status in ('C')
                                 and ua.acnt_contract__id=ac.id
                                 and ua.end_date>=to_date('28082017','ddmmyyyy')
                                  ) 
                                                                                                  
                    );         

Evnt_ID2 ows.dtype. RecordID %Type :=0;
Evnt_Code2 ows.dtype. Name %Type;

Usage_Action_ID ows.dtype. RecordID %Type;
ErrMsg ows.dtype. Name %Type;

BEGIN

 ows.glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 2', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
                      
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := ows.evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
    
             if Usage_Action_ID > 0 then 
                ows.evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
             
           ows.stnd.PROCESS_MESSAGE(ows.stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := ows.glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++++++++ошибка наших карт в сети СБРФ SECURITY VERIFICATION FAILED++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
d.source_member_id ,
(select cs.name from ows.contr_subtype cs where cs.amnd_state='A' and cs.id=ac.contr_subtype__id) plastik,
count(*) kolvo
from ows.doc d, ows.acnt_contract ac
where ac.amnd_state='A'
and d.amnd_state='A'
and d.is_authorization='Y'
and d.target_number=ac.contract_number
and d.return_code='5'
and exists (select pm.id from ows.process_mess pm 
            where pm.doc__id=d.id 
            and pm.object_type='DOC' 
            and pm.message_name like '005-SECURITY VERIFICATION FAILED%'
            and pm.message_type='E'
             )
and d.amnd_date>=to_date('01082017','ddmmyyyy')
and d.id>504116477
and d.target_channel in ('v','e')
group by d.source_member_id ,ac.contr_subtype__id

+++++++++++++++++++++++++++++++++++документы для ALFA Security с кодом причины отказа +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select (select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=ar.TRANS_TYPE) as trans_type,
ar.TARGET_NUMBER,
ar.CURRENT_CONDITIONS,
ar.BLOCKED_AMOUNT,
ar.AVAILABLE_AMOUNT,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ar.CURR)  currency 
from ows.auth_record ar , ows.doc d
where ar.DOC__ID=d.id
and d.amnd_state='A'
and exists (select rc.code  from ows.dsp_reason  rc where rc.amnd_state='A' and 
( rc.name like '57 %' or rc.name like '62 %' or rc.name like '81 %' or rc.name like '83 %' 
or  rc.name like '4837 %' or rc.name like '4840 %' or rc.name like '4849 %' or rc.name like '4863 %' or rc.name like '4870 %' or rc.name like '4871 %' ) and rc.code=d.reason_code )
and d.amnd_date>=to_date('01022017','ddmmyyyy')
and d.amnd_date<to_date('01032017','ddmmyyyy')



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
declare 
v_previd number; 
v_officer number;
v_count number := 0;
ErrMsg ows.dtype. Name %Type; 
cursor cur is 
              ( select id ,c.client_number from ows.client c
                where c.amnd_state='A'
                and c.f_i=801
                and c.clt in ('9','167','204','10','6','169',
                '168','11','3','1895','1896','1897','1898','1899','1900','1901','1902','1903')) ;
begin
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
         
     IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
   
   ows.glob.BUTTON_PROC_START('Обновление клиентской таблицы', 'Исправление по клиентам P2P в клиентской таблице');
      
    for rec in cur loop
      ows.yclient(rec.id,'H',v_previd);
      update ows.client cl set cl.clt='1924' , cl.amnd_officer=v_officer  where id = rec.id; 
      v_count:=v_count+1;    
       OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client id='||to_char(rec.id)||'  Client Number='||to_char(rec.client_number));
     end loop;
       commit; 
      ErrMsg := ows.glob.BUTTON_PROC_END('Script finished');
end;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select (select f.name from ows.f_i f where f.id = a.f_i) as FIN,
       a.pcat,
       (select b.scheme_name
          from ows.acc_scheme b
         where b.amnd_state = 'A'
           and b.id = a.acc_scheme__id) as SCHEME_NAME,
       c.branch,
       replace(c.short_name,'"','') short_name,
       a.contract_number,
       a.curr as CONTRACT_CURR,
       replace(to_char(a.total_balance),',','.') as CONTRACT_BALANCE,
       case
         when a.curr <> 398 then
          replace(to_char(round(a.total_balance * (select fx.fx_middle
                                     from ows.fx_rate fx
                                    where fx.is_active = 'Y'
                                      and fx.code = a.curr
                                      and fx.f_i = a.f_i),
                2)),',','.')
         else
          replace(to_char(a.total_balance),',','.')
       end as CB_equiv,
       acc.account_name,
       acc.curr as ACCOUNT_CURR,
       replace(to_char(acc.current_balance),',','.') as ACCOUNT_BALANCE,
       acc.gl_number,
       case
         when acc.curr <> 398 then
          replace(to_char(round(acc.current_balance *
                (select fx.fx_middle
                   from ows.fx_rate fx
                  where fx.is_active = 'Y'
                    and fx.code = acc.curr
                    and fx.f_i = a.f_i),
                2)),',','.')
         else
          replace(to_char(acc.current_balance),',','.')
       end as AB_EQUIV,
       replace(to_char((select fx.fx_middle
          from ows.fx_rate fx
         where fx.is_active = 'Y'
           and fx.code = a.curr
           and fx.f_i = a.f_i)),',','.') as fx_middle,
       /*c.itn as RNN,*/ replace(c.add_info_01,'"','') as IIN,
       (select name
          from ows.serv_pack s
         where s.amnd_state = 'A'
           and s.id = a.serv_pack__id) as serv_pack,           
       REGEXP_REPLACE(c.phone, '[/|",]', '') phone,
       REGEXP_REPLACE(c.phone_h, '[/|",]', '') phone_h,
       REGEXP_REPLACE(c.phone_m, '[/|",]', '') phone_m,
       REGEXP_REPLACE(c.add_info_02, '[/|",]', '') as ORG_NUMBER,
       REGEXP_REPLACE(to_char(abs(a.auth_limit_amount)),',','.') as CREDIT_LIMIT,
       replace(to_char((select m.current_balance from ows.account m where m.acnt_contract__oid=a.id and m.account_type=134 and m.code<>'?')),',','.') as SEC_DEPOSIT,
       a.amnd_date as CONTRACT_LAST_CHANGE_DATE,
       (select name from ows.contr_status cs where cs.id=a.contr_status and cs.amnd_state='A') as CONTRACT_STATUS,
       REGEXP_REPLACE(c.reg_number, '[/|",]', '') reg_number,
       REGEXP_REPLACE(c.reg_number_type, '[/|",]', '') reg_number_type,
       /*case when a.curr<>acc.curr then
         (select cur.name from ows.currency cur where cur.amnd_state='A' and cur.code=a.curr) 
       end*/ a.curr as  ACT_CURR
  from ows.acnt_contract a, ows.client c, ows.account acc
 where a.amnd_state = 'A'
   and c.amnd_state = 'A'
   and c.id = a.client__id
   and acc.acnt_contract__oid = a.id
   and a.acnt_contract__oid is null
   and a.pcat='C'
    and (c.branch  not in ('ORRB',
                    'TXB01',
                    'TXB12',
                    'TXB07',
                    'TXB05',
                    'TXB09',
                    'TXB08',
                    'TXB10',
                    'TXB04',
                    'TXB03',
                    'TXB11') or c.branch is null )
   --and a.is_ready='Y'



   ++++++++++++++++++++++++++++++++++++++SMS Reopen++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

   DECLARE 
CURSOR MIG_CUR is (select 
                    ac.id, 
                    ac.contract_number card_num,
                    ( select et.name from ows.event_type et where et.amnd_state='A' and et.id=ua2.event_type) event_typ,
                    ua2.start_date start_dat
                    from ows.acnt_contract ac , ows.usage_action ua2
                    where ac.amnd_state='A'
                    and ac.con_cat='C' 
                    and ac.is_ready<>'C' 
                    and ac.contr_status in (14,98,776)
                    and ua2.posting_status in ('S','P')
                    and ua2.acnt_contract__id=ac.id
                    and ua2.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
                                 and ua.posting_status in ('S','P')
                                 and ua.acnt_contract__id=ac.id )
                    and exists (select spl.name 
                                 from ows.appl_product mpl , ows.appl_product spl
                                 where mpl.amnd_state='A' and mpl.code in ('KZ_ERGSAL','KZ_ERGSAL_NR')
                                 and spl.appl_product__oid=mpl.id
                                 and spl.amnd_state='A'
                                 and ac.product=spl.internal_code)      
                    and not exists ( select ap.id  from ows.add_pack ap
                                 where ap.amnd_state='A'
                                 and ap.serv_pack__oid=ac.serv_pack__id
                                 and upper(ap.name) like '%CARD MOBILE%'
                                 and upper(ap.name) not like '%ECON%'
                                 and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')    
                    and ac.contract_number in ('4263433991090504','4263433993139499')                                  
                    order by 2
                    );         
Evnt_ID1 dtype. RecordID %Type :=0;
Evnt_Code1 CONSTANT dtype. Name %Type :='DROP_SMS';

Evnt_ID2 dtype. RecordID %Type :=0;
Evnt_Code2 dtype. Name %Type;

Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID1 from ows.EVENT_TYPE where code=Evnt_Code1 and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 1', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
             Usage_Action_ID :=0;
             Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID1,
              rec.ID,
              NULL,
              NULL,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select pm.process_log__oid,pm.id, pm.message_date,pm.message_name ,cl.short_name, cl.client_number
from ows.adv_appl ap , ows.client cl, ows.process_mess pm
where ap.amnd_state='A'  
and ap.appl_reg_number='PC_APL_CH_166_17_0000000016_01'
and ap.object_for='Client'
and ap.object_for_id=cl.id
and pm.object_type ='ADV_APPL'
and pm.doc__id=ap.id
and pm.message_name<>'Accept Adv Application'


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Select NVL(glob.GET_ADD_PARAMETER('UNIQUENESS_ALMAS'), 'N'),
       ACCOUNT.ACNT_CONTRACT__OID,
       ACNT_CONTRACT.ID,
       ACNT_CONTRACT.AMND_DATE
  From ACCOUNT, ACNT_CONTRACT
 Where ACNT_CONTRACT.ID = ACCOUNT.ACNT_CONTRACT__OID
   And (ACNT_CONTRACT.AMND_STATE = 'A')



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare 
res varchar2(4000);
begin
  res:= sberbank_cust.sb_appl.xml_import('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_803</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ96914CP39842623349</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>670521350433</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>1547.47</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_803</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>PTP_BLK</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>'
);
end;

++++++++++++++++++++++++++++++sbrf+++++++++++++++++++++++++

select 
d.source_number,
d.trans_details,
d.trans_city,
(select rc.resp_text from ows.resp_code rc where rc.amnd_state='A' and rc.resp_code=d.return_code) rc,
d.trans_date
from ows.doc d ,ows.pragmaclient p
where d.is_authorization='Y'
and d.amnd_state='A'
and d.trans_country='RUS'
and d.trans_type=13
and d.amnd_date>=to_date('17092017 00:00','ddmmyyyy hh24:mi')
and d.id>538343583
--and d.amnd_date<=to_date('05092017 19:00','ddmmyyyy hh24:mi')
and d.source_member_id='402333'
and p.clnumber=d.source_number
order by 3

+++++++++++++++++++++++++P2P_CLIENT migr++++++++++++++++++++++++++++++++++++++++
select count(*) from ows.appl_info
where appl_info.client__oid in( select c.id from ows.CLIENT c where c.amnd_state = 'A' and c.is_ready != 'C' )
and appl_info.add_info_type = 'P2P_CLIENT'
and appl_info.amnd_state = 'A'
and appl_info.add_info_02 is not null 
and nvl(appl_info.add_info_03,'*')!='TD_AUTH_SCH=Y;';

select ows.acq_p2p.GET_CUP_ID_TYPE_CODE('Удостоверение личности РК') from dual

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*
* Author: J. Yakovleva
* Purpose: I1704115011. Fix balance hierarchy 
* Version: 20170918-003
*
*
*
* 20170420-001: jyakovleva, Finding and correction acc_templ with problem balances.  
* 20170914-002: jyakovleva, Change the list of acc templ: exclude the templates with third-level balances 
* 20170918-003: jyakovleva, Add the process end for script. 
*/
/*
declare

ProcessId

dtype. RecordID

%Type;

ScriptVer

dtype. Name


%Type := '20170918-003';

ScriptPurpose
dtype. Name


%Type := 'Fix balance hierarchy';

TraceMode

dtype. Name


%Type := 'FIX'; /* 'TRACE' or 'FIX' */

TemplScheme

acc_scheme

%RowType;

TemplFI

f_i

%RowType;
  TemplBalance balance_type %RowType;
RetMsg dtype. Name %Type;
begin

if stnd.CONN_ID is null then


soft.START_SIMPLE(null, null, null);

end if;


glob.BUTTON_PROC_START (ScriptPurpose, TraceMode);

sy_process.SET_DEBUG_LEVEL (stnd.NoDebug);



trc.TRACE_MSG(ScriptPurpose, 'ScriptVer = ' || ScriptVer || ' TraceMode = ' || TraceMode);

if TraceMode = 'TRACE' then
    trc.TRACE_MSG('Incorrect configuration of balances is found in: ');


for problem_templ in (select * from acc_templ where balance_type in (105, 1067) and amnd_state = 'A')


loop



if instr(problem_templ.group_code, 'LOAN_FEE') > 0 then
        null;
      else




YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGF_I(TemplScheme.f_i, TemplFI);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);




trc.TRACE_MSG('FI: ' || TemplFI.name || ' (id = ' || TemplFI.id || '), Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id 
        || '), Problem Balance: ' || TemplBalance.name || ' (id = ' || TemplBalance.id || ')');



end if;


end loop;

end if;



if TraceMode = 'FIX' then
    trc.TRACE_MSG('Following Account Templates was updated: ');


for problem_templ in (select * from acc_templ where balance_type in (105, 1067) and amnd_state = 'A')


loop



if problem_templ.group_code is null then




YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        update acc_templ set group_code = 'LOAN_FEE,' where id = problem_templ.id;




trc.TRACE_MSG('Value "LOAN_FEE," is added to Extra Bal Type List (group_code) to Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id || ')');
        commit;



end if;


end loop;    

end if;


RetMsg := glob.BUTTON_PROC_END (' Process finished');

soft.FINISH_SIMPLE();
end;*/

++++++++++++++++++++++++++++++++++++++++++++++нурбекова отчет для нбрк++++++++++++++++++++++++++++++++++++++

select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('25082017','ddmmyyyy')
and d.amnd_date<to_date('03102017','ddmmyyyy')
and (d.source_channel = '0' or d.target_channel = '0')
and d.id>526351900
and d.id<555756447
and d.trans_type in (5, 50)  
and  exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)
and d.source_channel <> 'A'                           
and  d.source_number <> '03806767' 
and d.trans_condition not in ('NEU', 'NEU2', 'PET', 'PES', 'NEV', 'NEV2','NMN', 'NMN2', 'NNK')


--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                                TERM_CAT      CHANNEL   WC_CHANNEL  PROC
--51              1 051,56      оплата товаров и нематериальных ценностей POS-терминал            UPI         UPI

select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01102017','ddmmyyyy')
and d.amnd_date<to_date('01112017','ddmmyyyy')
and d.target_channel IN ('H', 'h') 
and d.source_channel in ('H')
and d.id>549374598
and d.id<584895384
and d.trans_type in (5, 50) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  


--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                            TERM_CAT      CHANNEL  WC_CHANNEL  PROC
--2               14,28         иные виды платежей и переводов денег  POS-терминал                        Visa
select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01102017','ddmmyyyy')
and d.amnd_date<to_date('01112017','ddmmyyyy')
and d.target_channel is null
and d.source_channel in ('V','S')
and d.id>549374598
and d.id<584895384
and d.trans_type not in (15, 700, 33213, 35685,37019 ,35480, 35332,5, 50)--иные виды платежей и переводов денег
--when channel is null
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  
and  d.trans_type not in 
(11, 13, 60, '7',
'14',
'17',
'21',
'22',
'43',
'137',
'440',
'442',
'467',
'468',
'471',
'472',
'473',
'474',
'475',
'476',
'478',
'479',
'480',
'482',
'483',
'484',
'33153',
'33154',
'33157',
'33158',
'33159',
'33160',
'33161',
'33162',
'33163',
'33164',
'33165',
'33166',
'33167',
'33169',
'33170',
'33171',
'33172',
'33177',
'33178',
'33179',
'33180',
'33181',
'33182',
'33183',
'33186',
'33187',
'33188',
'33189',
'33190',
'33191',
'33192',
'33193',
'33194'
)                                                 


--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                              TERM_CAT         CHANNEL  WC_CHANNEL  PROC
--1               9,76          иные виды платежей и переводов денег    интернет-ресурс           P           MC
--1               500,00        иные виды платежей и переводов денег    POS-терминал              P           MC
select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01102017','ddmmyyyy')
and d.amnd_date<to_date('01112017','ddmmyyyy')
and d.target_channel IN ('P') 
and d.source_channel in ('E')
and d.id>549374598
and d.id<584895384
and d.trans_type not in (15, 700, 33213, 35685,37019 ,35480, 35332,5, 50)
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  




--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                                                            TERM_CAT      CHANNEL   WC_CHANNEL  PROC
--51              1 051,56      переводы с одного банковского счета клиента на другой банковский счет POS-терминал            UPI         UPI

select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01022018','ddmmyyyy')
and d.amnd_date<to_date('01032018','ddmmyyyy')
and d.target_channel IN ('H', 'h') 
and d.source_channel in ('H')
and d.id>671823081
and d.id<704377060
and d.trans_type in (15, 700, 33213, 35685)
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select * from ows.doc d,ows.m_transaction mt 
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
/*and d.amnd_date>=to_date('25082017','ddmmyyyy')
and d.amnd_date<to_date('03102017','ddmmyyyy')*/
and (d.source_channel = '0' or d.target_channel = '0')
/*and d.id>526351900
and d.id<555756447*/
and d.trans_type in (5, 50)  
and  exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)
and mt.doc__oid = d.id
                                   and mt.service_class = 'T'
                                   and mt.posting_status = 'P'
                                   and mt.local_date<to_date('01102017','ddmmyyyy')
and mt.local_date>=to_date('01092017','ddmmyyyy')

++++++++++++++++++++++++++++++ALIEXPESS++++++++++++++++++++++++++++++++++++++++++++

select 
d.id, d.target_number,d.*
from ows.doc d
where d.amnd_state='A'
and d.amnd_date>=to_date('15112017 22:00','ddmmyyyy hh24:mi')
and  d.amnd_date<=to_date('16112017 03:00','ddmmyyyy hh24:mi')
and d.id>597432552
and d.trans_type=5
and d.is_authorization='Y'
and d.service_class='T'
and d.posting_status<>'J'
and d.target_channel in ('v','e','h')
and exists (select sh.code from ows.sy_handbook sh 
                where sh.group_code='ALIEXPESS'
                and sh.amnd_state='A'
                and sh.code=d.source_member_id)
and exists  (select uh.id
            from ows.usage_history uh, ows.usage_templ_appr uta 
            where uh.doc=d.id and uta.id=uh.usage_templ_appr 
            and upper(uta.usage_code) like '%ALIEXPESS%' and rownum=1 )
order by 1   

---------------------------Банки партнеры-------------------------------------------
select 
d.id, d.target_number,d.*
from ows.doc d
where d.amnd_state='A'
and d.amnd_date>=to_date('16112017 14:00','ddmmyyyy hh24:mi')
and d.id>597432552
and d.trans_type=13
/*and d.is_authorization='Y'
and d.service_class='T'
and d.posting_status<>'J'*/
--and d.target_channel in ('v','e','h')
and exists (select sh.code from ows.sy_handbook sh 
                where sh.group_code='PARTNER_LIM_ATM'
                and sh.amnd_state='A'
                and sh.code=d.target_member_id)
and exists  (select uh.id
            from ows.usage_history uh, ows.usage_templ_appr uta 
            where uh.doc=d.id and uta.id=uh.usage_templ_appr 
            and upper(uta.usage_code) like '%ATM_PARTNER%' and rownum=1 )
and d.trans_amount>200000            
order by 1            


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
trunc(em.sending_date) send_date,
em.address_data,
count(*)
 from ows.evnt_msg em ,ows.pragmaclient pg
where  em.sending_date>=to_date('01102017','ddmmyyyy')
and em.sending_date<to_date('01112017','ddmmyyyy')
and pg.inform='281117SMS' 
and pg.clnumber=em.address_data
group by 
trunc(em.sending_date),
em.address_data
order by 2,1

select *from ows.pragmaclient pg where pg.inform='281117SMS' 


++++++++++++++++++++++++++STATIC_PASSWORD  ошибка++++++++++++++++++++++++++++++++++++++++
select * from ows.doc d where d.amnd_state='A'
and d.source_code='STATIC_PASSWORD'
and d.is_authorization='Y'
and d.posting_status<>'J'
and d.amnd_date>to_date('31102017','ddmmyyyy')
and d.id>579374070
and rownum<3


++++++++++++++++++++++++++ошибка во время перевода через СБОЛ Октябрь 2017+++++++++++++++++++++++++++++++++++++++++++++++++++++++
select 
deb.source_channel,
deb.target_number card_debit, deb.ret_ref_number rrn_deb, deb.trans_amount summa_deb, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=deb.trans_curr) valuta_deb,
pay.target_number card_payment, pay.ret_ref_number rrn_pay, pay.trans_amount summa_pay, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=pay.trans_curr) valuta_pay, 
substr(pay.target_number,1,6) bin_pay,
decode(pay.target_channel ,'S','VISA','MASTER') Channel, 
deb.trans_date
from ows.doc  pay , ows.doc deb,/*ows.pragmaclient pg ,*/ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
--and pay.return_code='05'
and pay.posting_status='J'
and pay.amnd_date>to_date('17112017','ddmmyyyy')
and pay.trans_date>=to_date('17112017','ddmmyyyy')
and pay.id>597432552 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
--and pg.inform='180616PAY'
--and pg.rnn=pay.ret_ref_number
and pay.target_channel in ('S','E')
and cl.int_key=pay.source_reg_num
and cl.mtid in('0210','0110')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
--and deb.posting_status in ('P','J')
order by deb.trans_date


select pg.rnn, pg.inform from ows.pragmaclient pg where pg.inform='231117PAY' 

select pay.id from ows.doc pay,ows.pragmaclient pg
where pay.amnd_state='A'
and pg.inform='231117PAY'
and pay.ret_ref_number=pg.rnn
and pay.is_authorization='N'
and pay.ret_ref_number not in ('729384861048',
'729384861248',
'729384861933',
'729384865208',
'729384868488',
'729384868663')


select ac.contract_number,ac.contract_name,sum(acc.current_balance) OVL,
(select curr.name from ows.currency curr where curr.amnd_state='A' and curr.code=ac.curr) OVL_currency,
 sum(ows.fx.MIDDLE_RATE(null,'724',null,acc.curr,'398',acc.current_balance,sysdate)) summa_over_tg
from (
select distinct ac.acnt_contract__oid
from ows.doc  pay , ows.doc deb,ows.pragmaclient pg ,ows.coms_log cl ,ows.resp_code  rc, ows.m_transaction mt , ows.acnt_contract ac , ows.account acc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.amnd_date>to_date('01102017','ddmmyyyy')
and pay.trans_date>=to_date('01102017','ddmmyyyy')
and pay.id>551691231
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
and pg.inform='231117PAY'
and pg.rnn=pay.ret_ref_number
and cl.int_key=pay.source_reg_num
and cl.mtid in ('0210','0110')
and pay.target_channel in ('S','E')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and mt.doc__oid=deb.id
and mt.service_class in ('l','L')
and ac.amnd_state='A'
and ac.contract_number=deb.target_number
and ac.acnt_contract__oid=acc.acnt_contract__oid
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
and acc.current_balance<>0 ) d , ows.acnt_contract ac, ows.account acc
where d.acnt_contract__oid=ac.id
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code in ('<1','<2','Ъ','Я','Щ','Щ','т','/','i','<')
group by ac.contract_number,ac.contract_name,ac.curr
order by 3


select 
deb.source_channel,
deb.target_number card_debit, deb.ret_ref_number rrn_deb, deb.trans_amount summa_deb, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=deb.trans_curr) valuta_deb,
pay.target_number card_payment, pay.ret_ref_number rrn_pay, pay.trans_amount summa_pay, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=pay.trans_curr) valuta_pay, 
substr(pay.target_number,1,6) bin_pay,
decode(pay.target_channel ,'S','VISA','MASTER') Channel, 
deb.trans_date
from ows.doc  pay , ows.doc deb,/*ows.pragmaclient pg ,*/ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.return_code='96'
and pay.amnd_date>to_date('17112017','ddmmyyyy')
and pay.trans_date>=to_date('17112017','ddmmyyyy')
and pay.id>597432552 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
--and pg.inform='180616PAY'
--and pg.rnn=pay.ret_ref_number
and pay.target_channel in ('S','E')
and cl.int_key=pay.source_reg_num
and cl.mtid in('0210','0110')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and deb.posting_status in ('P','J')
order by deb.trans_date


select id ,amnd_date from ows.doc d where d.amnd_date=to_date('14112017 12:00','ddmmyyyy hh24:mi')

select pg.clnumber from ows.pragmaclient pg where pg.inform='211117P2P' 

select pg.clnumber, pg.inform from ows.pragmaclient pg where pg.inform='211117DEB' for update

select pg.clnumber, pg.inform  from ows.pragmaclient pg where pg.inform='211117PAY' for update

select * from ows.trans_cond tc where tc.amnd_state='A' and tc.name like 'IFC%'

select * from ows.trans_cond_attr tca where tca.amnd_state='A'


select mc.contract_number, 
substr(ac.contract_number, 1, 6) || '***' ||
       substr(ac.contract_number, -4) card_number,
 nvl(trim(ct.last_nam || ' ' || ct.first_nam || ' ' ||
                ct.father_s_nam),
           ct.short_name) fio   ,
   ct.add_info_01 iin            
from ows.pragmaclient pg, ows.acnt_contract ac, ows.acnt_contract mc , ows.client ct
where pg.inform='211117P2P'
and ac.contract_number=pg.clnumber
and ac.amnd_state='A'
and ac.acnt_contract__oid=mc.id
and mc.amnd_state='A'
and mc.client__id=ct.id
and ct.amnd_state='A'


select mc.contract_number        
from ows.pragmaclient pg, ows.acnt_contract ac, ows.acnt_contract mc , ows.client ct
where pg.inform='211117P2P'
and ac.contract_number=pg.clnumber
and ac.amnd_state='A'
and ac.acnt_contract__oid=mc.id
and mc.amnd_state='A'
and mc.client__id=ct.id
and ct.amnd_state='A'

select 
deb.source_channel,
deb.target_number card_debit, deb.ret_ref_number rrn_deb, deb.trans_amount summa_deb, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=deb.trans_curr) valuta_deb,
pay.target_number card_payment, pay.ret_ref_number rrn_pay, pay.trans_amount summa_pay, (select c.full_name from ows.currency c where c.amnd_state='A' and c.code=pay.trans_curr) valuta_pay, 
substr(pay.target_number,1,6) bin_pay,
decode(pay.target_channel ,'S','VISA','MASTER') Channel, 
deb.trans_date
from ows.doc  pay , ows.doc deb,/*ows.pragmaclient pg ,*/ows.coms_log cl ,ows.resp_code  rc
where pay.amnd_state='A'
and  pay.trans_type=700
and pay.return_code='96'
and pay.amnd_date>to_date('01102017','ddmmyyyy')
and pay.trans_date>=to_date('01102017','ddmmyyyy')
and pay.id>551691231 
and pay.doc__summ__id=deb.doc__summ__id
and deb.amnd_state='A'
and deb.trans_type=33213
--and pg.inform='180616PAY'
--and pg.rnn=pay.ret_ref_number
and pay.target_channel in ('S','E','H')
and cl.int_key=pay.source_reg_num
and cl.mtid in('0210','0110')
and rc.resp_code=cl.rc
and rc.amnd_state='A'
and rc.resp_code='00'
and deb.posting_status in ('P','J')
order by deb.trans_date


+++++++++++++++++++++++++++++информация кто подключал СМС устроство подключал смс+++++++++++++++++++++++++++++

select 
ac.id,
ac.contract_name,
substr(ac.contract_number,1,6)||'******'||substr(ac.contract_number,13,4) card_num,
( select et.code from ows.event_type et where et.amnd_state='A' and et.id=ua.event_type) event_typ,
case when ua.doc is not null and pl.process_name='DB Accessor' then (select d.trans_date from ows.doc d where d.amnd_state='A' and d.id=ua.doc ) 
     when pl.process_name='Load Event' then pl.started
     else ua.start_date end start_dat,
case when  pl.process_name='DB Accessor' and ua.doc is not null  then 'ATM='||(select d.source_number from ows.doc d where d.amnd_state='A' and d.id=ua.doc )  
     when pl.process_name='Load Event' then (select ofc.name from ows.officer ofc where ofc.amnd_state='A' and ofc.id=pl.started_by) 
     else pl.process_name end  started_by         
from ows.acnt_contract ac , ows.usage_action ua, ows.process_log pl
where ac.amnd_state='A'
and ac.con_cat='C' 
and ua.acnt_contract__id=ac.id
and exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
and ac.contract_number='4263433487813674'
and pl.id=ua.PROCESS_LOG__ID


select 
cl.short_name,
cl.add_info_01 iin ,
ca.address_zip nomer_tel,
ca.amnd_date,
(select at.name from ows.address_type at where at.amnd_state='A' and at.id=ca.address_type) type_address,
(select case when ofc.name='OWS_N' then 'ATM' else ofc.name end  from ows.officer ofc where ofc.amnd_state='A' and ofc.id=ca.amnd_officer) officer
from ows.client_address ca , ows.client cl
where cl.amnd_state='A'
and ca.client__oid=cl.id
and cl.add_info_01='641227400254'
and ca.address_type in (65,66,67)
order by 4


select 
em.address_data tel_nom,
em.sending_date,
em.sending_details,
em.message_string_1||em.message_string_2||em.message_string_3||em.message_string_4||em.message_string_5||em.message_string_6 mess_text
 from ows.evnt_msg em 
where em.address_data='77017952396'

+++++++++++++++++++++++++++++++++TDA++++++++++++++++++++++++++++++++

Declare 
CTDSCHEME ows.td_auth_sch%RowType;
RETCODE ows.dtype. Counter%Type;
ERRMSG ows.dtype. ErrorMessage%Type;
begin
ows.TDA.FIND_TD_SCHEME_R( NULL, NULL, 'P2P_CLIENT', NULL,'4276620018389324', NULL, SYSDATE,CTDSCHEME, RETCODE, ERRMSG );
dbms_output.put_line(RETCODE||' '||ERRMSG);
commit;
end;

+++++++++++++++++++++++++клиентизм купрагма онлайн ++++++++++++++++++++++++++++++++
select pm.process_log__oid,pm.id, pm.message_date,pm.message_name ,cl.short_name, cl.client_number
from ows.adv_appl ap , ows.client cl, ows.process_mess pm
where ap.amnd_state='A'  
and ap.appl_reg_number='PC_APL_RC_156_17_0000000896_01'
and ap.object_for='Client'
and ap.object_for_id=cl.id
and pm.object_type ='ADV_APPL'
and pm.doc__id=ap.id
and pm.message_name<>'Accept Adv Application'


select pm.process_log__oid,pm.id, pm.message_date,pm.message_name ,ap.object_for, pm.*
from ows.adv_appl ap , ows.process_mess pm
where ap.amnd_state='A'  
--and ap.appl_reg_number='PC_APL_RC_156_17_0000000896_01'
and pm.object_type ='ADV_APPL'
and pm.doc__id=ap.id
and pm.message_date >=to_date('06112017','ddmmyyyy')
--and pm.message_name<>'Accept Adv Application'



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select distinct aa.object_for,aa.object_type,aa.action_type from ows.adv_appl aa 
where aa.amnd_date>=to_date('01112017','ddmmyyyy')
and aa.amnd_state='A'
and aa.creation_type='ONLINELOAD'
and aa.posting_status='P'

select  d.source_member_id , count(*) , d.trans_country
from ows.doc d 
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.service_class='T'
and d.target_channel in ('v','e','h')
and d.trans_type=5
and upper(d.trans_details) like '%ALIEXPRESS%'
and d.amnd_date>=to_date('10102017','ddmmyyyy')
and d.id>561400136
group by  d.source_member_id, d.trans_country
order by 1

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                            TERM_CAT        CHANNEL WC_CHANNEL  PROC

1               3,04          иные виды платежей и переводов денег  интернет-ресурс II      P           MC

select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01012018','ddmmyyyy')
and d.amnd_date< to_date('01022018','ddmmyyyy')
and d.trans_type not in (15, 700, 33213, 35685,37019 ,35480, 35332,5, 50)
and d.target_channel='P'
and d.source_channel = 'E' 
and (d.source_number = '03806767' or
                      d.trans_condition in
                      ('NEU', 'NEU2', 'PET', 'PES', 'NEV', 'NEV2'))
and exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and d.id>639291314     
and d.id<683393214        


TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                                TERM_CAT        CHANNEL WC_CHANNEL  PROC
1               41,59         оплата товаров и нематериальных ценностей интернет-ресурс II      VISA        H2H


select * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01012018','ddmmyyyy')
and d.amnd_date< to_date('01022018','ddmmyyyy')
and d.trans_type in (5,50)
and d.target_channel IN ('V', 'S', 'v', '0')
and (d.source_channel = '0' or d.target_channel = '0' )
and (d.source_number = '03806767' or
                      d.trans_condition in
                      ('NEU', 'NEU2', 'PET', 'PES', 'NEV', 'NEV2'))
and exists (select 1
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and d.id>639291314     
and d.id<683393214        



--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                           TERM_CAT        CHANNEL   WC_CHANNEL  PROC
--                              иные виды платежей и переводов денег интернет-ресурс           W           MC

select  /*+ PARALLEL(auto) */  * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01022018','ddmmyyyy')
and d.amnd_date<to_date('01032018','ddmmyyyy')
and d.target_channel IN ('W') 
and d.source_channel in ('E')
and d.id>671823081
and d.id<704377060
and d.trans_type not in (5, 50,35480, 35332,37019,15, 700, 33213, 35685)
and (d.source_number = '03806767' or d.trans_condition in ('NEU', 'NEU2', 'PET', 'PES', 'NEV', 'NEV2') )  --интернет-ресурс
and not exists (select 1                           -- когда нет категории
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1                           -- когда нет категории
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  
and  d.trans_type not in 
(11, 13, 60, '7',
'14',
'17',
'21',
'22',
'43',
'137',
'440',
'442',
'467',
'468',
'471',
'472',
'473',
'474',
'475',
'476',
'478',
'479',
'480',
'482',
'483',
'484',
'33153',
'33154',
'33157',
'33158',
'33159',
'33160',
'33161',
'33162',
'33163',
'33164',
'33165',
'33166',
'33167',
'33169',
'33170',
'33171',
'33172',
'33177',
'33178',
'33179',
'33180',
'33181',
'33182',
'33183',
'33186',
'33187',
'33188',
'33189',
'33190',
'33191',
'33192',
'33193',
'33194'
)  


--TOTAL_QUANTITY  TOTAL_AMOUNT  TRANS_TYPE                           TERM_CAT        CHANNEL   WC_CHANNEL  PROC
--                              иные виды платежей и переводов денег импринтер                 W           Visa

select  /*+ PARALLEL(auto) */  * from ows.doc d
where d.amnd_state='A'
           and d.is_authorization = 'N'
           and d.posting_status = 'P'
           and d.request_category = 'P'
           and d.service_class = 'T'
and d.amnd_date>=to_date('01022018','ddmmyyyy')
and d.amnd_date<to_date('01032018','ddmmyyyy')
and d.target_channel IN ('W') 
and d.source_channel in ('V','S')
and d.id>671823081
and d.id<704377060
and d.trans_type not in (5, 50,35480, 35332,37019,15, 700, 33213, 35685)
and d.trans_condition in ('NMN', 'NMN2', 'NNK')  --импринтер
and not exists (select 1                           -- когда нет категории
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.source_member_id
                          and b.country = 'KAZ'
                          and rownum = 1) 
and not exists (select 1                           -- когда нет категории
                         from ows.bin_table b
                        where b.amnd_state = 'A'
                          and b.member_id = d.target_member_id
                          and b.country = 'KAZ'
                          and rownum = 1)  
and  d.trans_type not in 
(11, 13, 60, '7',
'14',
'17',
'21',
'22',
'43',
'137',
'440',
'442',
'467',
'468',
'471',
'472',
'473',
'474',
'475',
'476',
'478',
'479',
'480',
'482',
'483',
'484',
'33153',
'33154',
'33157',
'33158',
'33159',
'33160',
'33161',
'33162',
'33163',
'33164',
'33165',
'33166',
'33167',
'33169',
'33170',
'33171',
'33172',
'33177',
'33178',
'33179',
'33180',
'33181',
'33182',
'33183',
'33186',
'33187',
'33188',
'33189',
'33190',
'33191',
'33192',
'33193',
'33194'
)         
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select 
*
from ows.doc d
where d.amnd_state='A'
and d.amnd_date>=to_date('11112017','ddmmyyyy')
and d.amnd_date<to_date('16112017','ddmmyyyy')
and d.trans_type =5
and d.is_authorization='Y'
and d.service_class='T'
--and d.posting_status<>'J'
and d.target_channel in ('v','e','h')
and exists (select sh.code from ows.sy_handbook sh 
                where sh.group_code='ALIEXPESS'
                and sh.amnd_state='A'
                and sh.code=d.source_member_id)
and d.trans_condition='NEV'
and ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'840',d.settl_amount,d.trans_date)>550
and rownum<10


+++++++++++++++++++++++++++++++++++++Update client обновление клиентской записи++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
declare 
v_previd number; 
v_officer number;
pr_id  number;
v_count number := 0;
cursor cur is 
              ( select id ,c.client_number from ows.client c
                where c.amnd_state='A'
                and c.f_i=801
                and c.id=6323001
                and c.clt in ('9','167','204','10','6','169',
                '168','11','3','1895','1896','1897','1898','1899','1900','1901','1902','1903')) ;
begin
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
   
         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
         
    pr_id := OWS.STND.PROCESS_START('Обновление клиентской таблицы',null,'N');
      
    for rec in cur loop
      ows.yclient(rec.id,'H',v_previd);
      update ows.client cl set cl.clt='1924' , cl.amnd_officer=v_officer  where id = rec.id; 
      v_count:=v_count+1;    
       OWS.STND.PROCESS_MESSAGE('I', 'Counter = ' || to_char(v_count)||'  Client id='||to_char(rec.id)||'  Client Number='||to_char(rec.client_number));
     end loop;
       commit; 
     OWS.STND.PROCESS_END;
       EXCEPTION
          WHEN others THEN
              OWS.STND.PROCESS_MESSAGE ('E',substr(SQLERRM,1,250));
              OWS.STND.PROCESS_END;
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
 (select  acs.scheme_name from ows.acc_scheme acs where acs.amnd_state='A' and acs.id=ac.acc_scheme__id) sch_name,
 ac.contract_number,
ab.*
 from ows.acnt_contract ac ,ows.acnt_balance  ab
 where ac.amnd_state='A'
-- and ac.contr_status in (51,713,205,774)
 and ac.is_ready<>'C'
 and ac.pcat='C'
 and ac.con_cat='A'
 and ac.f_i=724
 and ab.acnt_contract__oid=ac.id
 and exists ( select  acs.id from ows.acc_scheme acs
             where acs.amnd_state='A'
             and upper(acs.scheme_name) like 'CR%'
             and acs.ccat='P'
             and acs.id=ac.acc_scheme__id)
 and exists (select *
             from ows.account acc
             where exists (
                      select act.id from ows.acc_templ act
                      where act.amnd_state='A'
                      and act.id=acc.acc_templ__id
                      and act.balance_type in (
                                select bt.id from ows.balance_type bt
                                where bt.amnd_state='A'
                                and (upper(bt.name) like 'OVERDUE%' or UPPER(bt.name) like 'SUB OVERDUE%' or UPPER(bt.name) like 'STATEMENT BALANCE%' )))
             and acc.current_balance<>0
             and acc.acnt_contract__oid=ac.id )
 order by 1
 

 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 select
 (select  acs.scheme_name from ows.acc_scheme acs where acs.amnd_state='A' and acs.id=ac.acc_scheme__id) sch_name,
 ac.contract_number,
acc.*
 from ows.acnt_contract ac ,ows.account acc
 where ac.amnd_state='A'
-- and ac.contr_status in (51,713,205,774)
 and ac.is_ready<>'C'
 and ac.pcat='C'
 and ac.con_cat='A'
 and ac.f_i=724
 and acc.acnt_contract__oid=ac.id
 and exists ( select  acs.id from ows.acc_scheme acs
             where acs.amnd_state='A'
             and upper(acs.scheme_name) like 'CR%'
             and acs.ccat='P'
             and acs.id=ac.acc_scheme__id)
 and exists (select *
             from ows.account acc
             where exists (
                      select act.id from ows.acc_templ act
                      where act.amnd_state='A'
                      and act.id=acc.acc_templ__id
                      and act.balance_type in (
                                select bt.id from ows.balance_type bt
                                where bt.amnd_state='A'
                                and (upper(bt.name) like 'OVERDUE%' or UPPER(bt.name) like 'SUB OVERDUE%' or UPPER(bt.name) like 'STATEMENT BALANCE%' )))
             and acc.current_balance<>0
             and acc.acnt_contract__oid=ac.id )
 order by 1
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


 select 
count(*)
from ows.acnt_contract ac 
where ac.amnd_state='A'
and ac.con_cat='C' 
and ac.is_ready<>'C' 
and ac.pcat='C'
and ac.f_i=724
and ac.card_expire>='1708'
and ac.contr_status in (14,98,776)
and exists (select ua.id from ows.usage_action ua 
             where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
             and ua.posting_status in ('S','P')
             and ua.acnt_contract__id=ac.id )     
and not exists ( select ap.*  from ows.add_pack ap
             where ap.amnd_state='A'
             and ap.serv_pack__oid=ac.serv_pack__id
             and upper(ap.name) like '%CARD MOBILE%'
             and upper(ap.name) not like '%ECON%'
             and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')   

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*
* Author: J. Yakovleva
* Purpose: I1704115011. Fix balance hierarchy 
* Version: 20170918-003
*
*
*
* 20170420-001: jyakovleva, Finding and correction acc_templ with problem balances.  
* 20170914-002: jyakovleva, Change the list of acc templ: exclude the templates with third-level balances 
* 20170918-003: jyakovleva, Add the process end for script. 
*/

declare

ProcessId

dtype. RecordID

%Type;

ScriptVer

dtype. Name


%Type := '20170918-003';

ScriptPurpose
dtype. Name


%Type := 'Fix balance hierarchy';

TraceMode

dtype. Name


%Type := 'FIX'; /* 'TRACE' or 'FIX' */

TemplScheme

acc_scheme

%RowType;

TemplFI

f_i

%RowType;
  TemplBalance balance_type %RowType;
RetMsg dtype. Name %Type;
begin

if stnd.CONN_ID is null then


soft.START_SIMPLE(null, null, null);

end if;


glob.BUTTON_PROC_START (ScriptPurpose, TraceMode);

sy_process.SET_DEBUG_LEVEL (stnd.NoDebug);



trc.TRACE_MSG(ScriptPurpose, 'ScriptVer = ' || ScriptVer || ' TraceMode = ' || TraceMode);

if TraceMode = 'TRACE' then
    trc.TRACE_MSG('Incorrect configuration of balances is found in: ');


for problem_templ in (select * from acc_templ where balance_type in (105, 1067) and amnd_state = 'A')


loop



if instr(problem_templ.group_code, 'LOAN_FEE') > 0 then
        null;
      else




YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGF_I(TemplScheme.f_i, TemplFI);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);




trc.TRACE_MSG('FI: ' || TemplFI.name || ' (id = ' || TemplFI.id || '), Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id 
        || '), Problem Balance: ' || TemplBalance.name || ' (id = ' || TemplBalance.id || ')');



end if;


end loop;

end if;



if TraceMode = 'FIX' then
    trc.TRACE_MSG('Following Account Templates was updated: ');


for problem_templ in (select * from acc_templ where balance_type in (105, 1067) and amnd_state = 'A')


loop



if problem_templ.group_code is null then




YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        update acc_templ set group_code = 'LOAN_FEE,' where id = problem_templ.id;




trc.TRACE_MSG('Value "LOAN_FEE," is added to Extra Bal Type List (group_code) to Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id || ')');
        commit;



end if;


end loop;    

end if;


RetMsg := glob.BUTTON_PROC_END (' Process finished');

soft.FINISH_SIMPLE();
end;


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select ac.contract_number,
sum(ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,'398',de.SETTL_AMOUNT,de.POSTING_DATE)) summa_tg,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,De.POSTING_DATE)) SUMMA_kom_TG_CP,
sum(ows.fx.MIDDLE_RATE(null,'724',null,gt2.curr,'398',gt2.amount,de.POSTING_DATE)) SUMMA_kom_TG_BANK
from ows.acnt_contract ac , ows.account acc, ows.doc_entry de,ows.gl_trace_srvc gt,ows.gl_trace_srvc gt2
where 
ac.amnd_state='A'
and ac.contract_number in ('KZ21914CC39869344093','KZ58914CC39880325185')
and ac.id=acc.acnt_contract__oid
and acc.code='X'
and acc.id=de.ACCOUNT__OID
and de.SERVICE_CLASS='T'
and de.POSTING_DATE>=to_date('01122016','ddmmyyyy')
and de.POSTING_DATE<to_date('24122016','ddmmyyyy')
and gt.doc__oid=de.DOC__OID
and gt.entry_role in ('F','A')
and gt.cr_contract=8686489
and gt2.doc__oid=de.DOC__OID
and gt2.entry_role in ('F','A')
and gt2.cr_contract=357580
and de.AUTH_CODE not in ('11B2NN','22A579','517129')
group by ac.contract_nu

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select de.TRANS_DATE,de.POSTING_DATE,de.DOC__OID N_DOC, case when de.AMOUNT<0 then de.AMOUNT end debit, case when de.AMOUNT>=0 then de.AMOUNT end credit, de.TRANS_DETAILS,
case when de.TRANS_TYPE=13 then 'Снятие наличности через Банкомат' 
     when de.TRANS_TYPE =40274   then 'Пополнение по ЗП проекту' 
     when de.TRANS_TYPE in (182  ,40716  )   then 'Списание средств по ПТП' 
       else 'other' end  tip_trans,        
de.RET_REF_NUMBER ,de.SOURCE_REG_NUM, 
sum(de.AMOUNT) over(partition by de.POSTING_DATE) SALDO
from ows.account acc , ows.doc_entry de, ows.acnt_contract ac
where ac.contract_number='KZ60914CP39879626490'
and ac.amnd_state='A'
and acc.acnt_contract__oid=ac.id
and acc.code='P'
and de.ACCOUNT__OID=acc.id
and de.SERVICE_CLASS='T'


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

DECLARE 
CURSOR MIG_CUR is (select 
                    ac.id, 
                    ac.contract_number card_num,
                    ( select et.name from ows.event_type et where et.amnd_state='A' and et.id=ua2.event_type) event_typ,
                    ua2.start_date start_dat
                    from ows.acnt_contract ac , ows.usage_action ua2
                    where ac.amnd_state='A'
                    and ac.con_cat='C' 
                    and ac.is_ready<>'C' 
                    and ac.contr_status in (14,98,776)
                    and ua2.posting_status in ('S','P')
                    and ua2.acnt_contract__id=ac.id
                    and ua2.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
                                 and ua.posting_status in ('S','P')
                                 and ua.acnt_contract__id=ac.id )
                    and exists (select spl.name 
                                 from ows.appl_product mpl , ows.appl_product spl
                                 where mpl.amnd_state='A' and mpl.code in ('KZ_ERGSAL','KZ_ERGSAL_NR')
                                 and spl.appl_product__oid=mpl.id
                                 and spl.amnd_state='A'
                                 and ac.product=spl.internal_code)      
                    and not exists ( select ap.id  from ows.add_pack ap
                                 where ap.amnd_state='A'
                                 and ap.serv_pack__oid=ac.serv_pack__id
                                 and upper(ap.name) like '%CARD MOBILE%'
                                 and upper(ap.name) not like '%ECON%'
                                 and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')                                     
                    );         
Evnt_ID1 dtype. RecordID %Type :=0;
Evnt_Code1 CONSTANT dtype. Name %Type :='DROP_SMS';

Evnt_ID2 dtype. RecordID %Type :=0;
Evnt_Code2 dtype. Name %Type;

Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID1 from ows.EVENT_TYPE where code=Evnt_Code1 and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 1', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
             Usage_Action_ID :=0;
             Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID1,
              rec.ID,
              NULL,
              NULL,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Created on 01.07.2017 by U04913 
declare
  -- Local variables here   
  Evnt_ID_Migr    ows.dtype.RecordID %Type := 2484;
  Usage_Action_ID ows.dtype. RecordID %Type;
  ErrMsg          ows.dtype. Name %Type;
  ProcID           ows.dtype.RecordID%type;
begin
  -- Test statements here
  ProcID:=ows.stnd.PROCESS_START('CashBack Programm','Manual script','N');
  for rec in (select 
                     ac.contract_number,
                    ac.id target_contract,
                     (select 'Y'
                        from ows.usage_action u
                       where u.acnt_contract__id = ac.id
                         and u.event_type in (2484)
                         and nvl(u.posting_status, 'N') <> 'C'
                         and u.start_date>to_date('20042017','ddmmyyyy')) status
                from ows.acnt_contract ac
               where ac.amnd_state = 'A'
                 and ac.contr_status not in (86, 265)
                 and ac.is_ready<>'C' 
                 and ac.con_cat = 'A'
                 and ac.product in
                     (select ap.internal_code
                        from ows.appl_product ap
                       where ap.amnd_state = 'A'
                         and ap.ccat = 'P'
                         AND ap.appl_pr_group__id = 6
                         AND ap.name NOT LIKE '%OneTwoTrip%'
                         AND ap.name NOT LIKE '%INSTANT%'
                         AND ap.name NOT LIKE '%NOMAD%'
                         AND ap.name NOT LIKE '%SBOL VIRT%'
                         AND ap.name NOT LIKE '%VIRTUON%'
                         AND ap.acc_scheme <> 35719
                         AND ap.acc_scheme <> 35738
                         AND ap.name NOT LIKE '%KZT TEST ERG%')
                 /* and rownum<100*/) loop
      if rec.status is null then 
         ows.stnd.PROCESS_MESSAGE(ows.stnd.information,rec.contract_number||'# Sent order to add an event.');   
         Usage_Action_ID := ows.evnt.LOAD_EVENT(Evnt_ID_Migr,
                                                rec.target_contract,
                                                NULL,
                                                trunc(sysdate),
                                                null,
                                                'Массовое подключение клиентов к программе CashBack/Выписка КУАП_20_01.06.2017_4');
         if Usage_Action_ID > 0 then
         ows.evnt.POST_EVENT(Usage_Action_ID, NULL);
         commit;
         end if;
       else  
         ows.stnd.PROCESS_MESSAGE(ows.stnd.information,rec.contract_number||'# Contract skipped.');          
     end if;
  end loop;
  ows.stnd.PROCESS_MESSAGE(ows.stnd.information,'Finished processing.');
  ows.stnd.PROCESS_END;

end;

++++++++++++++++++++файлы загруженные+++++++++++++++++++++++++++++++++


select d.Source_Reg_Num, D.RET_REF_NUMBER,D.ACQ_REF_NUMBER,D.ID 
from ows.file_info  fi, ows.original_doc od, ows.file_record fr, ows.doc d
where fi.file_name='IIC_Documents_0038003820170413_0031.xml'
and fi.creation_date>to_date('12042017','ddmmyyyy')
and od.file_id=fi.file_id
and od.direction='I'
and fr.file_info__oid=od.file_info__id
and d.amnd_state='A'
and d.id=fr.ref_record
AND FR.RECORD_TYPE='D'


select fi.*
 from ows.file_info  fi,ows.original_doc  od 
where od.doc__id=683882168
and od.file_id=fi.file_id


select * from ows.original_doc od
where od.file_id ='003-180206-00000011421-05501'

++++++++++++++++++++++++++++++usage ограничения+++++++++++++++++++++++++

select 
DISTINCT 
sp.name "Service Name",
ut.usage_code,
(select mc.name from ows.mess_channel mc where mc.amnd_state='A' and mc.code=ut.channel and rownum=1) channel,
ut.limit_period,
ows.xwusage_templ('LIMIT_RENEW_TYPE',ut.limit_renew_type) limit_renew_type,
ows.xwusage_templ('LIMIT_USAGE_TYPE',ut.limit_usage_type) limit_usage_type,
ows.xwusage_templ('USAGE_EVENT',ut.event_type) event_typ,
(select tt.name from ows.trans_type tt where tt.amnd_state='A' and tt.id=ut.trans_type)  trans_typ,   
ut.max_number,       
ut.max_single_amount,
ut.max_amount,
ut.max_pcnt,
(select c.name from ows.currency c where c.amnd_state='A' and c.code=ut.curr) usage_curr,
ows.xwusage_templ('USAGE_EVENT',ut.usage_event) usage_event,
(select rc.resp_text from ows.resp_code rc where rc.amnd_state='A' and rc.resp_code= ut.doc_ret_code)  Return_code,
(select sg.name from ows.sic_group sg where sg.amnd_state='A' and sg.id=ut.sic_group) sic_group,
(select pt.name from ows.pref_type pt where pt.amnd_state='A' and pt.id=ut.pref_type) usage_pref_type,
(select tc.name from ows.trans_cond tc where tc.amnd_state='A' and tc.code=ut.trans_condition) trans_condiction,
(select a.name from ows.area a where a.amnd_state='A' and a.id=ut.area) area
from ows.serv_pack sp,ows.usage_templ ut
where sp.f_i = 724
and sp.amnd_state = 'A'
and sp.con_cat = 'C'
and UPPER(sp.name) like '%USAGE%' 
and ut.amnd_state = 'A'
and ut.con_cat = 'C'
and ut.SERV_PACK__OID = sp.id
and ut.is_active<>'N'
and ut.usage_event not in ('C')
order by 2


++++++++++++++++++++++++++комиссия с банкоматов по нашим картам++++++++++++++++++++++++++++++++++++++++++

select  /*+ PARALLEL(auto) */ 
s.channel, sum(SUMMA_TG)  SUMMA_TG  from (
             select  
            case when  d.source_channel='A'  then 'Our_ATM' 
                 when  d.source_channel in ('V','S','E','H') then 'Other_ATM'
                   else d.source_channel  end channel,
            sum(ows.fx.MIDDLE_RATE(null,'724',null,gt.curr,'398',gt.amount,D.POSTING_DATE)) SUMMA_TG        
            from ows.gl_trace_srvc gt, ows.doc d
            where d.amnd_state='A'
            and gt.doc__oid=d.id
            and gt.entry_role in ('F','A') -- fee . add fee
            and gt.cr_contract<>3838660 -- not credit cnp fee
            and gt.dr_contract<>3838660 -- not debit cnp fee
            and d.trans_type=13     
            and d.service_class='T'             
            and d.is_authorization='N'
            and d.posting_status='P'
            and d.target_channel in ('v','e','h')
            and exists (select mt.id from ows.m_transaction mt where mt.id=gt.mtr_id and mt.posting_status='P') -- нужен чтобы исключить реверсы
                  AND D.AMND_DATE>=TO_DATE('01032018','DDMMYYYY')
                  AND D.AMND_DATE<TO_DATE('27032018','DDMMYYYY')
                  AND D.ID>700089147
            group by d.source_channel ) s
group by s.channel

+++++++++++++++++++++++поиск по range успешные операции+++++++++++++++++++++++++++++++++++++++++++++++++++
select 
 /*+ PARALLEL(auto) */ 
d.posting_status,d.*
 from ows.doc d
where d.amnd_state='A'
and d.trans_type='5'
and d.target_number>='5355410000700000'
and d.target_number<='5355410001199999'
and d.trans_condition='POEF'
and d.target_channel='e'
and d.amnd_date>=to_date('10032018','ddmmyyyy')



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare
res  varchar2(4000);
begin
  res := sberbank_cust.sb_appl.xml_import('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
  <MsgId>9C329E60891840AB143242B9C876CD99T</MsgId>
  <Source app="SBGATE"/>
  <MsgData>
    <Application>
      <RegNumber>T46802837900565046799</RegNumber>
      <ObjectType>PTP</ObjectType>
      <ActionType>Lock</ActionType>
      <ObjectFor>
        <ContractIDT>
          <ContractNumber>KZ60914CP39884549046</ContractNumber>
          <Client>
            <ClientInfo>
              <IIN>900429302017</IIN>
            </ClientInfo>
          </Client>
        </ContractIDT>
      </ObjectFor>
      <Data>
        <BlockAmount>
          <Amount>10</Amount>
          <Currency>KZT</Currency>
        </BlockAmount>
        <PRIORITY>10</PRIORITY>
        <Comment>PtpDetails</Comment>
      </Data>
      <SubApplList>
        <Application>
          <RegNumber>T46802837900565046799_001</RegNumber>
          <ObjectType>Event</ObjectType>
          <ActionType>Add</ActionType>
          <Data>
            <QueEvent>
              <ActionCode>PTP_BLK</ActionCode>
              <Comment>ReasonDetails1</Comment>
            </QueEvent>
          </Data>
        </Application>
      </SubApplList>
    </Application>
  </MsgData>
</UFXMsg> ');
dbms_output.put_line(res);
end;
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Created on 26.12.2017 by U05772 
declare 
  -- Local variables here
  i integer;
begin
  -- Test statements here
  i:=GLOB.IN_LIST(',', ACQ_PARMS.GET_ENABLE_P2P_DOM, 'E') ;
  dbms_output.put_line(i);
end;


++++++++++++++++++разбор проблемы с регистрацией пользователей+++++++++++++++++++++++++++++++++++++++++++++++++++

select * from ows.td_auth_sch ta where ta.amnd_state='A' and ta.auth_idt in ('55**760483','5469**7155282')

select * from ows.td_auth_sch ta where ta.auth_idt='5521**760483'

select * from ows.auth



select * from ows.appl_info ai where ai.amnd_state='A' and ai.add_info_02='552**760483'



select * from td_domain where amnd_state='A';

select * from td_auth_type where amnd_state='A';

select ows.xwtd_auth_type('AUTH_TYPE_CAT','I') from dual

select * from td_auth_type_used where amnd_state='A';

select * from td_auth_parm where amnd_state='A';

select * from ows.appl_acnt where appl_reg_number in ('DA80207E3C533FB1143B357433481630')


select * from td_auth_sch where auth_idt='552**760483'

select * from ows.client cl where cl.id=33166795


select * from td_auth_sch where auth_idt = '5521**60483';


select * from client where short_name ='SHUVALOV SERGEY';


select * from client where id in (select client__id from td_auth_sch where auth_idt = '552**760483');


select * from sberbank_cust.contract_register cr where  cr.amnd_state='A' and cr.contract_number='KZ739***39619576'

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


create or replace procedure 
/*
* @param message_in      Incoming message with tags like %TAG1%%TAG2%
* @param contract_id     Contract ID
* @param Client_id       Client ID (always not null in case of authentication service)
* @param Address_id      Address ID
* @param Event_id        Event ID
* @param DocID           Document ID
* @param GLTraceID       GL Trace ID
* @param message_out     Outgoing message with tag's values (each tag name replaced by it's value)
*
* Version: 20141112-001
*/
CUST_MESS_CONVERT 
(
message_in  IN dtype. LongStr  %Type, -- string with text and variables to substitute
contract_id IN dtype. RecordID %Type, -- Contract
Client_id   IN dtype. RecordID %Type, -- Client
Address_id  IN dtype. RecordID %Type, -- Address
Event_id    IN dtype. RecordID %Type, -- Event
DocID       IN dtype. RecordID %Type, -- Doc
GLTraceID   IN dtype. RecordID %Type, -- GL Trace
message_out OUT dtype. LongStr %Type  -- output string for sending
)
is
CustVer         dtype. Name     %Type := '20141112-001';
TraceMode       dtype. Tag      %Type;
cust_fee        varchar(32);
/*
* 20141112-001 Added tags:  IRN,CARDN,CONTRACTN,PHONE_M_C
*              Project:     KAZSBERB-ATH-20141002_1
*              Description: Additional tags for authentication service via iPAS (Authentication Server)
*/
begin
TraceMode := trc.TRACE_ENABLED;
if TraceMode = stnd.Yes then
  trc.ACTION_START('CUST_MESS_CONVERT', null, 'CurVer=' || CustVer);
  trc.TRACE_MSG('message_in  =',   message_in);
  trc.TRACE_MSG('contract_id =',   contract_id);
  trc.TRACE_MSG('Client_id   =',   Client_id);
  trc.TRACE_MSG('Address_id  =',   Address_id);
  trc.TRACE_MSG('Event_id    =',   Event_id);
  trc.TRACE_MSG('DocID       =',   DocID);
  trc.TRACE_MSG('GLTraceID   =',   GLTraceID);
end if;

message_out := message_in;



OPT_MESS_CONVERT
   (
     message_in,
     contract_id,
     Client_id,
     Address_id,
    Event_id,
     DocID,
     GLTraceID,
     message_out
   );
   
 IF INSTR(MESSAGE_OUT, '<cust_fee>') > 0 THEN  
   begin 
     select TO_CHAR (trunc(abs(dl.fee_amount),2)) 
            into cust_fee  
        from ows.credit_history dl where dl.doc__id=DocID  and dl.credit_type='A';
    exception
      when no_data_found then message_out:=replace(message_in,'<cust_fee>',' ');
   end;
   message_out:=replace(message_in,'<cust_fee>',cust_fee);
end if;

 MESSAGE_OUT := replace(message_out,'CRLF',chr(13));

if TraceMode = stnd.Yes then
  trc.TRACE_MSG('message_out', message_out);
  trc.ACTION_END(null,'Finished');
end if;
end;

+++++++++++++++++++++фильтр для отлова PTP Кредит++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.local_amount,d.local_curr ,  d.id did
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'398',d.settl_amount ,d.posting_date) local_amount,
                               '398' local_curr ,
                               d.id          
                                from ows.doc d,
                                      (select distinct ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca, ows.contr_status  cs
                                        where ac.amnd_state='A'
                                        and cs.code<>'79' 
                                        and ac.contr_status=cs.id
                                        and cs.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.id=383246660
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

declare 
xml_z  xmltype;
result varchar2(4000);
begin
  xml_z:='<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
  <MsgId>9C329E60891840AB143242B9C876CD98T</MsgId>
  <Source app="SBGATE"/>
  <MsgData>
    <Application>
      <RegNumber>J46802837900565046798</RegNumber>
      <ObjectType>PTP</ObjectType>
      <ActionType>Lock</ActionType>
      <ObjectFor>
        <ContractIDT>
          <ContractNumber>KZ24914CP64372248000</ContractNumber>
          <Client>
            <ClientInfo>
              <IIN>790622000095</IIN>
            </ClientInfo>
          </Client>
        </ContractIDT>
      </ObjectFor>
      <Data>
        <BlockAmount>
          <Amount>150</Amount>
          <Currency>KZT</Currency>
        </BlockAmount>
        <PRIORITY>10</PRIORITY>
        <Comment>PtpDetails</Comment>
      </Data>
      <SubApplList>
        <Application>
          <RegNumber>J46802837900565046798_001</RegNumber>
          <ObjectType>Event</ObjectType>
          <ActionType>Add</ActionType>
          <Data>
            <QueEvent>
              <ActionCode>PTP_BLK</ActionCode>
              <Comment>ReasonDetails1</Comment>
            </QueEvent>
          </Data>
        </Application>
      </SubApplList>
    </Application>
  </MsgData>
</UFXMsg> '
  -- Call the function
  result := sb_appl.xml_import(xml_z);
  dbms_output.put_line(result);
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++

BEGIN
  DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE(
    acl => 'acl_for_sbgate.xml', 
    principal => 'SBERBANK_CUST', 
    is_grant => TRUE, 
    privilege => 'connect');
    COMMIT;
END;

BEGIN
  DBMS_NETWORK_ACL_ADMIN.assign_acl (
    acl => 'acl_for_sbgate.xml',
    host        => '10.20.2.12', 
    lower_port => 21201,
    upper_port => NULL); 
    COMMIT;
END;

BEGIN
  DBMS_NETWORK_ACL_ADMIN.create_acl (
    acl          => 'acl_for_sbgate.xml', 
    description  => 'sberbank_cust for connect to sb_gate',
    principal    => 'SBERBANK_CUST',
    is_grant     => TRUE, 
    privilege    => 'connect',
    start_date   => SYSTIMESTAMP,
    end_date     => NULL);

  COMMIT;
END;



BEGIN
  DBMS_NETWORK_ACL_ADMIN.drop_acl ( 
    acl         => 'acl_for_sbgate.xml');

  COMMIT;
END;

BEGIN
  DBMS_NETWORK_ACL_ADMIN.delete_privilege ( 
    acl         => 'acl_for_sbgate.xml', 
    principal   => 'SBERBANK_CUST',
    is_grant    => FALSE, 
    privilege   => 'connect');

  COMMIT;
END;


BEGIN
  dbms_network_acl_admin.delete_privilege('acl_for_sbgate.xml',
  'SBERBANK_CUST', NULL, 'connect');
END;
/


BEGIN
  DBMS_NETWORK_ACL_ADMIN.UNASSIGN_ACL(host => '10.20.1.12');
  COMMIT;
END;


SELECT host, lower_port, upper_port, acl FROM dba_network_acls ;

SELECT * FROM dba_network_acls ;

grant EXECUTE on UTL_TCP to SBERBANK_CUST ;

++++++++++++++++++++++++++++++++++++++++++++++++++++

DECLARE 
 V_DC VARCHAR2(5);  
 v_officer number;       
CURSOR doc_CUR is ( select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.local_amount,d.local_curr ,  d.id did
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               ows.fx.MIDDLE_RATE(null,'724',null,d.settl_curr,'398',d.settl_amount ,d.posting_date) local_amount,
                               '398' local_curr ,
                               d.id          
                                from ows.doc d,
                                      (select distinct ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca, ows.contr_status  cs
                                        where ac.amnd_state='A'
                                        and cs.code<>'79' 
                                        and ac.contr_status=cs.id
                                        and cs.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.id=383246660
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
                  );        
BEGIN
   select ofc.id into v_officer  from ows.officer ofc where ofc.user_id='U05772' and ofc.amnd_state='A';
   
         IF ows.stnd.localdate IS NULL THEN
         ows.stnd.start_session(newofficerid => v_officer
        ,computername => SYS_CONTEXT('USERENV', 'HOST')
        ,appname => 'Our Application'
        ,appversion => '0.1 Beta');
         END IF;  
    for REC in doc_CUR
     LOOP                                    
       insert into  ows.local_constants(amnd_officer,
                                         doc,
                                        command_text, 
                                         code_1, 
                                         code_2, 
                                         code_3, 
                                         code_4 
                                            )
                                         values(v_officer,
                                            rec.did,
                                            replace(replace(to_char(trunc(rec.local_amount/2,2),'9999999999.99'),' ','0'),'.','') ,
                                            rec.local_curr,
                                            rec.contract
                                            'A',
                                            'TRANS_PTP'
                                            );
                                                                                                                        
       commit;                             
     END LOOP;
END;



++++++++++++++++++
DECLARE 
EVNT_COMM VARCHAR2(250);
Usage_Action_ID NUMBER(18);
CON_ID  NUMBER(18):=0;
Evnt_ID NUMBER(18):=0;
AMNT varchar2(500);
RES varchar2(500);

BEGIN
  for rec in  (select lc.id,lc.code_2 contract_number,lc.command_text insurance_amount,lc.code_1 insurance_curr from ows.local_constants lc where lc.amnd_state='A' and lc.code_4='TRANS_PTP' and lc.code_3='A')
  loop
    select max(id) into Evnt_ID from ows.EVENT_TYPE where code='PTP_INS' and amnd_state='A';
    SELECT MAX(ID) INTO CON_ID FROM OWS.ACNT_CONTRACT WHERE CONTRACT_NUMBER=rec.contract_number AND AMND_STATE='A';
    EVNT_COMM:=';AMOUNT='||rec.insurance_amount||';'||'CURR='||rec.insurance_curr||';';
    
    Usage_Action_ID := OWS.evnt.LOAD_EVENT
                                     (
                                      Evnt_ID,
                                      CON_ID,
                                      NULL,
                                      NULL,
                                      NULL,
                                      EVNT_COMM
                                      );
                                      
    if Usage_Action_ID > 0 then 
      OWS.evnt.POST_EVENT(
                      Usage_Action_ID,
                      NULL            
                         );  
       update ows.local_constants lc set  lc.code_3='C' where lc.id=rec.id  ;                   
    end if;  
    COMMIT;
    AMNT:=rec.insurance_curr;
    RES:=sberbank_cust.SB_APPL.PTP_INQUIRY(rec.contract_number ,AMNT,'398',NULL);
  end loop; 
END;
+++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Created on 20.12.2016 by U04913 
declare 
  -- Local variables here
   i varchar2(12000);
   b ows.ACNT_CONTRACT%ROWTYPE;
   c ows.DOC%ROWTYPE;
   v_count number := 0;
   Evnt_ID_Migr ows.dtype.RecordID %Type :=5483;
   Usage_Action_ID ows.dtype. RecordID %Type;
   ErrMsg ows.dtype. Name %Type;
begin
  -- Test statements here
  for rec in (
 select distinct ac.contract_number,ac.curr,ac.total_balance, ac.id target_contract
       from /*ows.pragmaclient p , */ows.acnt_contract ac
       where /*p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and */ac.amnd_state='A'
         and ac.total_balance>0
         --and ac.curr='398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         and ac.contract_number='KZ12914CP39820891817'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483) and u.start_date>to_date('25122017','ddmmyyyy'))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0) )
  loop
        i:='I';      
        begin 
          select * into b 
            from ows.ACNT_CONTRACT where id=rec.target_contract;
         exception when others then i:='E';dbms_output.put_line(to_char(rec.target_contract));
        end; 
        if i<>'E' then
              ows.incd.CRE_FIN_DOC_R(41338,b,'',0,'Regular Charge',c); 
              ows.GLOB.SAVE_DOC(c);
              commit;
              if  ows.fx.MIDDLE_RATE(null,'724',null,rec.curr,'398',rec.total_balance,sysdate)<=500  then 
                update ows.doc set REASON_DETAILS='согласно Протоколу КУАП от 15.12.2016 г. № 52 ',
                                   target_fee_amount=rec.total_balance, 
                                   target_fee_curr=rec.curr where id=c.id;
                commit;
              elsif ows.fx.MIDDLE_RATE(null,'724',null,rec.curr,'398',rec.total_balance,sysdate)>500 then                  
                update ows.doc set REASON_DETAILS='согласно Протоколу КУАП от 15.12.2016 г. № 52 ',
                                   target_fee_amount=ows.fx.MIDDLE_RATE(null,'724',null,'398',rec.curr,500,sysdate), 
                                   target_fee_curr=rec.curr where id=c.id;
                commit;
              end if;
              Usage_Action_ID := ows.evnt.LOAD_EVENT(  Evnt_ID_Migr,  rec.target_contract,  NULL,  trunc(sysdate),  null,  'В связи с отсутствием движений за последний год.');
              if Usage_Action_ID > 0 then 
                 ows.evnt.POST_EVENT(Usage_Action_ID,  NULL);
              commit;                 
              end if; 
        end if;      
   --     dbms_output.put_line(b.contract_number);
   
  end loop; 
end;
++++++++++++++++++++++++++++++++++++++++++++++

Declare 
v_previd number; 
begin
ows.yclient(106915,'H',v_previd);
dbms_output.put_line('='||v_previd);
commit;
end;


++++++++++++++++++++++SABAKASHA сбор информации++++++++++++++++++++++

 select distinct ac.contract_number,ac.curr,ac.total_balance, ac.id target_contract
       from /*ows.pragmaclient p , */ows.acnt_contract ac
       where /*p.inform='SABAKASHA'               
         and ac.contract_number=p.clnumber
         and */ac.amnd_state='A'
         and ac.total_balance>=0
         and ac.curr='398'
         and ac.contr_status<>86
         and ac.contr_status<>505
         and ac.contract_number='KZ54914CP39869616101'
         and not exists (select 'Y' from ows.usage_action u where u.acnt_contract__id=ac.id and u.event_type in (5483) and u.start_date>to_date('25122017','ddmmyyyy'))
         and not exists (select * from  ows.acnt_contract ca
              where  ca.amnd_state='A'
              and ca.acnt_contract__oid=ac.id
              and ca.total_blocked<>0)

        
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*
* Author: J. Yakovleva
* Purpose: I1704115011. Fix balance hierarchy 
* Version: 20170627-001
*
*
*
* 20170420-001: jyakovleva, Finding and correction acc_templ with problem balances. 
* 20170627-001: jyakovleva, Add the process end for script. 
*/

declare
  ProcessId    dtype. RecordID    %Type;
  ScriptVer    dtype. Name      %Type := '20170420-001';
  ScriptPurpose  dtype. Name      %Type := 'Fix balance hierarchy';
  TraceMode    dtype. Name      %Type := 'FIX'; /* 'TRACE' or 'FIX' */
  TemplScheme    acc_scheme    %RowType;
  TemplFI    f_i    %RowType;
  TemplBalance balance_type %RowType;
    RetMsg      dtype. ErrorMessage  %Type;
begin
  if stnd.CONN_ID is null then
    ows.soft.START_SIMPLE(null, null, null);
  end if;

  ows.glob.BUTTON_PROC_START (ScriptPurpose, TraceMode);
  ows.sy_process.SET_DEBUG_LEVEL (stnd.NoDebug);
  
  ows.trc.TRACE_MSG(ScriptPurpose, 'ScriptVer = ' || ScriptVer || ' TraceMode = ' || TraceMode);
  if TraceMode = 'TRACE' then
    ows.trc.TRACE_MSG('Incorrect configuration of balances is found in: ');
    for problem_templ in (select * from ows.acc_templ where balance_type in (105, 1067, 1108, 1109, 1112, 1115, 1118, 1121, 1124) and amnd_state = 'A')
    loop
      if instr(problem_templ.group_code, 'LOAN_FEE') > 0 then
        null;
      else
        ows.YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        ows.YGF_I(TemplScheme.f_i, TemplFI);
        ows.YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        ows.trc.TRACE_MSG('FI: ' || TemplFI.name || ' (id = ' || TemplFI.id || '), Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id 
        || '), Problem Balance: ' || TemplBalance.name || ' (id = ' || TemplBalance.id || ')');
      end if;
    end loop;
  end if;
  
  if TraceMode = 'FIX' then
    ows.trc.TRACE_MSG('Following Account Templates was updated: ');
    for problem_templ in (select * from acc_templ where balance_type in (105, 1067, 1108, 1109, 1112, 1115, 1118, 1121, 1124) and amnd_state = 'A')
    loop
      if problem_templ.group_code is null then
        ows.YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        ows.YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        update ows.acc_templ set group_code = 'LOAN_FEE,' where id = problem_templ.id;
        trc.TRACE_MSG('Value "LOAN_FEE," is added to Extra Bal Type List (group_code) to Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id || ')');
        commit;
      end if;
    end loop;    
  end if;  
  
    RetMsg := ows.glob.BUTTON_PROC_END (' Process finished');
  ows.soft.FINISH_SIMPLE();
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select
 (select  acs.scheme_name from ows.acc_scheme acs where acs.amnd_state='A' and acs.id=ac.acc_scheme__id) sch_name,
 ac.contract_number,
ab.*
 from ows.acnt_contract ac ,ows.acnt_balance  ab
 where ac.amnd_state='A'
-- and ac.contr_status in (51,713,205,774)
 and ac.is_ready<>'C'
 and ac.pcat='C'
 and ac.con_cat='A'
 and ac.f_i=724
 and ab.acnt_contract__oid=ac.id
 and exists ( select  acs.id from ows.acc_scheme acs
             where acs.amnd_state='A'
             and upper(acs.scheme_name) like 'CR%'
             and acs.ccat='P'
             and acs.id=ac.acc_scheme__id)
 and exists (select *
             from ows.account acc
             where exists (
                      select act.id from ows.acc_templ act
                      where act.amnd_state='A'
                      and act.id=acc.acc_templ__id
                      and act.balance_type in (
                                select bt.id from ows.balance_type bt
                                where bt.amnd_state='A'
                                and (upper(bt.name) like 'OVERDUE%' or UPPER(bt.name) like 'SUB OVERDUE%' or UPPER(bt.name) like 'STATEMENT BALANCE%' )))
             and acc.current_balance<>0
             and acc.acnt_contract__oid=ac.id )
 order by 1
 
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 select
 (select  acs.scheme_name from ows.acc_scheme acs where acs.amnd_state='A' and acs.id=ac.acc_scheme__id) sch_name,
 ac.contract_number,
acc.*
 from ows.acnt_contract ac ,ows.account acc
 where ac.amnd_state='A'
-- and ac.contr_status in (51,713,205,774)
 and ac.is_ready<>'C'
 and ac.pcat='C'
 and ac.con_cat='A'
 and ac.f_i=724
 and acc.acnt_contract__oid=ac.id
 and exists ( select  acs.id from ows.acc_scheme acs
             where acs.amnd_state='A'
             and upper(acs.scheme_name) like 'CR%'
             and acs.ccat='P'
             and acs.id=ac.acc_scheme__id)
 and exists (select *
             from ows.account acc
             where exists (
                      select act.id from ows.acc_templ act
                      where act.amnd_state='A'
                      and act.id=acc.acc_templ__id
                      and act.balance_type in (
                                select bt.id from ows.balance_type bt
                                where bt.amnd_state='A'
                                and (upper(bt.name) like 'OVERDUE%' or UPPER(bt.name) like 'SUB OVERDUE%' or UPPER(bt.name) like 'STATEMENT BALANCE%' )))
             and acc.current_balance<>0
             and acc.acnt_contract__oid=ac.id )
 order by 1

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
grant execute  on sberbank_cust.get_p2p_info to RSTYLEALF;

grant execute on sberbank_cust.get_p2p_info to OWSROWN ;

grant execute on sberbank_cust.get_p2p_info to OWS ;

create public synonym get_p2p_info for sberbank_cust.get_p2p_info;
+++++++++++++++++++++++++шаблон смс сообщения++++++++++++++++++++++++++++++


%IF%%TRANS_DR_CR%=Credit%THEN%Uvazhaemyi klient, na Vashu kartu %TRANS_TARGET_NUMBER:0*4:3% proizvedeno popolnenie %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%.  Otkryvaite depozity za paru minut v Sberbank Online!%ELSIF%%TRANS_TYPE%=Retail%THEN%Po karte %TRANS_TARGET_NUMBER:0*4:3% proizvedena operaciya na summu %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%%IF%(%TRANS_SIC_CODE%=4900 Utilities-electric,gas,wate OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9211 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9222 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9223 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9311 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9399 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=9402 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=4814 OR SUBSTR(%TRANS_SIC_CODE%,1,4)=4812)%THEN%.%ELSE% CashBack k nachisleniyu+<cust_fee>. %END%Dostupno %AVAILABLE%. Otkryvaite depozity za paru minut v Sberbank Online!%ELSIF%%TRANS_TYPE%=ATM%THEN%Po vashei karte %TRANS_TARGET_NUMBER:0*4:3% proizvedena operaciya na summu %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%. Dostupno %AVAILABLE%. Otkryvaite depozity za paru minut v Sberbank Online!%ELSE%Po vashei karte %TRANS_TARGET_NUMBER:0*4:3% proizvedena operaciya na summu %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%. Dostupno %AVAILABLE%. Otkryvaite depozity za paru minut v Sberbank Online!%END%

%IF%%TRANS_DR_CR%=Credit%THEN%Uvazhaemyi klient, na Vashu kartu %TRANS_TARGET_NUMBER:0*4:3% proizvedeno popolnenie %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%. Krediti ot SBERBANKA na vygodnyh usloviyah tel. 5030.%ELSE%Po vashei karte %TRANS_TARGET_NUMBER:0*4:3% proizvedena operaciya na summu %TRANS_AMOUNT% %TRANS_CURR%, %TRANS_DETAILS% %TRANS_DATE%. Dostupno %AVAILABLE%. Krediti ot SBERBANKA na vygodnyh usloviyah tel. 5030.%END%


%IF%%TRANS_DR_CR%=Credit%THEN%Uvazhaemyj klient, na Vash schet %TRANS_TARGET_NUMBER:6*4:2%  proizvedeno popolnenie %TRANS_AMOUNT% %TRANS_CURR% %TRANS_DATE%. Dostupno %AVAILABLE%.%ELSE%Uvazhaemyj klient, po Vashemu schetu %TRANS_TARGET_NUMBER:6*4:2% proizvedena operaciya na summu %TRANS_AMOUNT% %TRANS_CURR% %TRANS_DATE%. Dostupno %AVAILABLE%.%END%


%IF%%TRANS_DR_CR%=Credit%THEN%Uvazhaemyj klient, na Vash schet %TRANS_TARGET_NUMBER:2*4:3% proizvedeno popolnenie %TRANS_ACC_TOTAL*SMS% %TRANS_ACC_CURR% %TRANS_DATE%. Dostupno %AVAILABLE%. Krediti ot SBERBANKA na vygodnyh usloviyah tel. 5030.%ELSE%Uvazhaemyj klient, po Vashemu schetu %TRANS_TARGET_NUMBER:2*4:3% proizvedena operaciya na summu %TRANS_ACC_TOTAL*SMS% %TRANS_ACC_CURR% %TRANS_DATE%. Dostupno %AVAILABLE%.%END%

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

DECLARE 
CURSOR MIG_CUR is (select 
                    ac.id, 
                    ac.contract_number card_num,
                    ( select et.name from ows.event_type et where et.amnd_state='A' and et.id=ua2.event_type) event_typ,
                    ua2.start_date start_dat
                    from ows.acnt_contract ac , ows.usage_action ua2
                    where ac.amnd_state='A'
                    and ac.con_cat='C' 
                    and ac.is_ready<>'C' 
                    and ac.contr_status in (14,98,776)
                    and ua2.posting_status in ('S','P')
                    and ua2.acnt_contract__id=ac.id
                    and ua2.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
                                 and ua.posting_status in ('S','P')
                                 and ua.acnt_contract__id=ac.id )
                    and ac.contract_number in ('4263433991090504','5324240001669050') 
                    );         
Evnt_ID1 dtype. RecordID %Type :=0;
Evnt_Code1 CONSTANT dtype. Name %Type :='DROP_SMS';

Evnt_ID2 dtype. RecordID %Type :=0;
Evnt_Code2  dtype. Name %Type;

Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID1 from ows.EVENT_TYPE where code=Evnt_Code1 and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 1', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
             Usage_Action_ID :=0;
             Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID1,
              rec.ID,
              NULL,
              NULL,
              NULL,
              'Согласно СЗ №8356627 от 08.09.2016'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Согласно СЗ №8356627 от 08.09.2016'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


select ac.contract_number ""номер Контр"",
de.TRANS_DATE ""дата опера"",
de.RET_REF_NUMBER ""номер докум"",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr<>1)  then
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end ""Дебит"",
case when exists (select * from ows.trans_type tt where tt.amnd_state='A' and tt.id=de.TRANS_TYPE and tt.dr_cr=1)  then
      ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR,ac.curr,de.SETTL_AMOUNT,de.POSTING_DATE)  else null end ""Кредит"",
 case when de.trans_type=5
        then 'Безналичная Оплата услуг ПОС\Интернет'
      when de.trans_type=50
        then 'Безналичная Оплата услуг Казино'
      when de.trans_type=13
        then 'Снятие наличных через Банкомат'
      when de.trans_type=11
        then 'Снятие наличных через Кассу'
      when de.trans_type=15
        then 'Безналичное зачисление'
      when de.trans_type in (182,700)
        then 'Безналичное зачисление'
      when de.trans_type in (33213)
        then 'Безналичное списание'
      when de.trans_type in (35314,40274)
        then 'Зачисление Зарплаты'
      when de.trans_type in (35316)
        then 'Зачисление через Кассу'
      when de.trans_type in (35468,35549,35590,35670,35678,37328,37759)
        then 'Списание Комиссиии Банка'
      when de.trans_type in (35630,35636)
        then 'Зачсиление средств с чужого банка через АБИС'
      when de.trans_type in (37980)
        then 'Пополнение через ИПТ'
      when de.trans_type in (39473)
        then 'Зачисление через СБОЛ'
       when de.trans_type in (39476)
         then 'Списание через СБОЛ'
       when de.trans_type in (39489)
         then 'оплата услуг в СБОЛ' end   ""назнач платежа"",
de.TRANS_DETAILS ""информ о контраг"",
ows.fx.MIDDLE_RATE(null,'724',null,de.SETTL_CURR ,ac.curr,(ows.rpr.GET_ACC_BAL(acc.id,de.POSTING_DATE)),(de.POSTING_DATE)) ""Сальдо"",
(select cu.name from ows.currency cu where cu.amnd_state = 'A' and cu.code = ac.curr) ""валюта счета""
from ows.doc_entry de, ows.acnt_contract ac , ows.account acc
where ac.amnd_state='A'
and acc.code='P'
and acc.id=de.ACCOUNT__OID
and acc.acnt_contract__oid=ac.id
and de.TRANS_DATE>=to_date('01012014','ddmmyyyy')
and ac.id in (
                select
                ac.id
                from ows.acnt_contract ac
                where ac.amnd_state='A'
                and ac.contract_number in
               ('KZ76914038PN00077867',
                'KZ44914CP39825818356',
                'KZ51914CP39813942132',
                'KZ17914CP39854404548',
                'KZ19914038PN00071521',
                'KZ39914CP39863200209',
                'KZ70914038P000921809',
                'KZ98914CP39863722365' ))
order by 1,2

+++++++++++++++++++++++++++++++++++++++++++++++++++++
update v_local_constants set  buf=(select 
case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
then to_char(to_date('01012100','ddmmyyyy'),'yyyymmdd')
when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
(trunc(trunc(sysdate))-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
then to_char(ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) ,'yyyymmdd')
else  to_char(trunc(sysdate)-1,'yyyymmdd') end d
from dual)












select rownum||s.d Nomad from
(select '~SBR~'||ac.tr_company||'~WBONUS~'||decode(substr(ac.contract_number,1,6),'539144','5000','2000')||'~'||to_char(ac.date_open,'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.acnt_contract ac ,ows.card_info ci,
              ( select max(ci.seqv_number) mid,ci.acnt_contract__oid aid 
              from ows.acnt_contract ac ,ows.card_info ci , ows.appl_product ap,(select 
                                                                                  case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
                                                                                   then to_date('01012100','ddmmyyyy')
                                                                                   when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
                                                                                   (trunc(trunc(sysdate))-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
                                                                                   then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
                                                                                  else trunc(sysdate)-1 end d
                                                                                from dual) a
              where ac.amnd_state='A'
              and ac.pcat='C'
              and ac.con_cat='C' 
              and ac.date_open=a.d
              and ac.id=ci.acnt_contract__oid
              and ac.product=ap.internal_code
              and ap.amnd_state='A'
              and upper(ap.name) like '%NOMAD%'
              group by ci.acnt_contract__oid ) f
where f.aid=ac.id
and ac.amnd_state='A'
and ci.seqv_number=f.mid
and ci.production_event in ('NCRD','NLOST','NCRDD','NCU','NCWOPIN')
and ci.acnt_contract__oid=ac.id
union all
select '~SBR~'||ac.tr_company||'~'||case when upper(acs.scheme_name) like 'CR%' then 'CREDIT' ELSE 'DEBIT' end||'~'||round(round(sum(mt.local_amount))/400)||'~'||to_char(trunc(d.trans_date),'DDMONYY','NLS_DATE_LANGUAGE=American') d
from ows.doc d ,ows.acnt_contract ac , ows.acc_scheme acs, ows.m_transaction mt,ows.appl_product ap,(select 
                                                                                                      case when  ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=0 
                                                                                                       then to_date('01012100','ddmmyyyy')
                                                                                                       when ows.sy_calendar.IS_WRK_DAY(trunc(sysdate))=1 and 
                                                                                                       (trunc(trunc(sysdate))-ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)))>1 
                                                                                                       then ows.sy_calendar.PREV_WRK_DAY(trunc(sysdate)) 
                                                                                                      else trunc(sysdate)-1 end d
                                                                                                    from dual) a
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='P'
and d.trans_type in (5,50)
and nvl(d.sic_code,'N')<>'6538' 
and (d.posting_date>=a.d and d.posting_date<a.d+1) 
and d.target_number=ac.contract_number
and d.target_channel in ('v','e','h')
and d.source_channel not in ('W') 
and ((  d.source_channel='P' and not exists (select * from ows.device_rec dr where dr.acnt_contract__oid is not null and dr.term_cat='A' and dr.terminal_id=d.source_number and dr.amnd_state='A')) 
     or d.source_channel<>'P')
and mt.doc__oid=d.id
and mt.service_class='T'
and mt.posting_status='P'
and ac.amnd_state='A'
and ac.pcat='C'
and ac.con_cat='C'
and acs.amnd_state='A'
and acs.id=ac.acc_scheme__id
and acs.f_i=724 
and acs.pcat='C'
and ac.product=ap.internal_code
and ap.amnd_state='A'
and upper(ap.name) like '%NOMAD%'
group by trunc(d.trans_date),ac.tr_company,acs.scheme_name) s

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/*
* Author: J. Yakovleva
* Purpose: I1704115011. Fix balance hierarchy 
* Version: 20170627-001
*
*
*
* 20170420-001: jyakovleva, Finding and correction acc_templ with problem balances. 
* 20170627-001: jyakovleva, Add the process end for script. 
*/

declare
  ProcessId   dtype. RecordID   %Type;
  ScriptVer   dtype. Name     %Type := '20170420-001';
  ScriptPurpose dtype. Name     %Type := 'Fix balance hierarchy';
  TraceMode   dtype. Name     %Type := 'TRACE'; /* 'TRACE' or 'FIX' */
  TemplScheme   acc_scheme    %RowType;
  TemplFI   f_i   %RowType;
  TemplBalance balance_type %RowType;
    RetMsg      dtype. ErrorMessage %Type;
begin
  if stnd.CONN_ID is null then
    soft.START_SIMPLE(null, null, null);
  end if;

  glob.BUTTON_PROC_START (ScriptPurpose, TraceMode);
  sy_process.SET_DEBUG_LEVEL (stnd.NoDebug);
  
  trc.TRACE_MSG(ScriptPurpose, 'ScriptVer = ' || ScriptVer || ' TraceMode = ' || TraceMode);
  if TraceMode = 'TRACE' then
    trc.TRACE_MSG('Incorrect configuration of balances is found in: ');
    for problem_templ in (select * from acc_templ where balance_type in (105, 1067, 1108, 1109, 1112, 1115, 1118, 1121, 1124) and amnd_state = 'A')
    loop
      if instr(problem_templ.group_code, 'LOAN_FEE') > 0 then
        null;
      else
        YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGF_I(TemplScheme.f_i, TemplFI);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        trc.TRACE_MSG('FI: ' || TemplFI.name || ' (id = ' || TemplFI.id || '), Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id 
        || '), Problem Balance: ' || TemplBalance.name || ' (id = ' || TemplBalance.id || ')');
      end if;
    end loop;
  end if;
  
  if TraceMode = 'FIX' then
    trc.TRACE_MSG('Following Account Templates was updated: ');
    for problem_templ in (select * from acc_templ where balance_type in (105, 1067, 1108, 1109, 1112, 1115, 1118, 1121, 1124) and amnd_state = 'A')
    loop
      if problem_templ.group_code is null then
        YGACC_SCHEME(problem_templ.acc_scheme__oid, TemplScheme);
        YGBALANCE_TYPE(problem_templ.balance_type, TemplBalance);
        update acc_templ set group_code = 'LOAN_FEE,' where id = problem_templ.id;
        trc.TRACE_MSG('Value "LOAN_FEE," is added to Extra Bal Type List (group_code) to Account Scheme: ' || TemplScheme.scheme_name || ' (id = ' || TemplScheme.id  
        || '), Account Template: ' || problem_templ.account_name || ' (id = ' || problem_templ.id || ')');
        commit;
      end if;
    end loop;    
  end if; 
  
    RetMsg := glob.BUTTON_PROC_END (' Process finished');
  soft.FINISH_SIMPLE();
end;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++переподключение СМС по потухшим  без MB_LOY_PERIOD+++++продукт ERG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
DECLARE 
CURSOR MIG_CUR is (select 
                    ac.id, 
                    ac.contract_number card_num,
                    ( select et.code from ows.event_type et where et.amnd_state='A' and et.id=ua2.event_type) event_typ,
                    ua2.start_date start_dat
                    from ows.acnt_contract ac , ows.usage_action ua2
                    where ac.amnd_state='A'
                    and ac.con_cat='C' 
                    and ac.is_ready<>'C' 
                    and ac.contr_status in (14,98,776)
                    and ua2.posting_status in ('S','P')
                    and ua2.acnt_contract__id=ac.id
                    and ua2.id in  (select max(ua.id) from ows.usage_action ua 
                                 where exists ( select et.id from ows.event_type et where et.amnd_state='A' and upper(et.name) like '%ADD%SMS%' and upper(et.name) not like '%ECONOM%' and et.id=ua.event_type )
                                 and ua.posting_status in ('S','P')
                                 and ua.acnt_contract__id=ac.id )
                    and exists (select spl.name 
                                 from ows.appl_product mpl , ows.appl_product spl
                                 where mpl.amnd_state='A' and mpl.code in ('KZ_ERGSAL','KZ_ERGSAL_NR')
                                 and spl.appl_product__oid=mpl.id
                                 and spl.amnd_state='A'
                                 and ac.product=spl.internal_code)      
                    and not exists ( select ap.id  from ows.add_pack ap
                                 where ap.amnd_state='A'
                                 and ap.serv_pack__oid=ac.serv_pack__id
                                 and upper(ap.name) like '%CARD MOBILE%'
                                 and upper(ap.name) not like '%ECON%'
                                 and ows.EVNT.PACK_IS_ACTIVE(ac.id, ap.SERV_PACK__OID, ap.SERV_PACK__ID)='Y')                                     
                    );         
Evnt_ID1 dtype. RecordID %Type :=0;
Evnt_Code1 CONSTANT dtype. Name %Type :='DROP_SMS';

Evnt_ID2 dtype. RecordID %Type :=0;
Evnt_Code2 dtype. Name %Type;

Usage_Action_ID dtype. RecordID %Type;
ErrMsg dtype. Name %Type;

BEGIN

select max(id) into Evnt_ID1 from ows.EVENT_TYPE where code=Evnt_Code1 and amnd_state='A';
 
 glob.BUTTON_PROC_START('Migrate ReOpen SMS v.1_0 Part 1', 'Adding disabled SMS packages');

for rec in MIG_CUR
         LOOP
             Usage_Action_ID :=0;
             Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID1,
              rec.ID,
              NULL,
              NULL,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
            Usage_Action_ID :=0;
            Evnt_Code2:=rec.event_typ;
            select max(id) into Evnt_ID2 from ows.EVENT_TYPE where code=Evnt_Code2 and amnd_state='A';
            
            Usage_Action_ID := evnt.LOAD_EVENT
              (
              Evnt_ID2,
              rec.ID,
              NULL,
              rec.start_dat,
              NULL,
              'Переподключение СМС в связи с ошибкой'
              );
             if Usage_Action_ID > 0 then 
                evnt.POST_EVENT(
                 Usage_Action_ID,
                 NULL            
                 );
             end if; 
           stnd.PROCESS_MESSAGE(stnd.Information , 'Post Event ID='|| Usage_Action_ID ||' for contract '||rec.card_num); 
           
         END LOOP;
 
commit;

 ErrMsg := glob.BUTTON_PROC_END('Script finished');
 
END;
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
com.openwaygroup.dbmj.pipe.PipeDbmjItem
com.openwaygroup.pipe.pm.file_export.jar
output_directory=@CARD_PROD_DIR@\IN
MAX_FILE=100
FILE_BREAK_BY="ac.BRANCH||cs.SUBTYPE_CODE||case when ac.product in ('170929000000000000134259')  then 'T+7' else null  end||ac.add_info_02"
FILE_NAME_EXT="'_'||ac.BRANCH||'_'||nvl(ac.add_info_02,'N')||'_'||cs.SUBTYPE_CODE||'_'||case when ac.product in ('170511000000000000130519','170511000000000000130530','170511000000000000130518','170511000000000000130529') then 'RUBICOM' when ac.product in ('171003000000000000137020', '171003000000000000137061', '171003000000000000137062', '171003000000000000137053', '171003000000000000137042', '171003000000000000137023', '171003000000000000137083', '171003000000000000137084') then 'T+7' else NVL(REGEXP_SUBSTR(ac.tr_company,'[0-9]{9}'),'N') end"
SORT_ORDER=BANK_CODE||ac.BRANCH||CONTRACT_NUMBER
FILE_NAMING_BY=BANK||ac.BRANCH
CHILD_CARD_INFO_SUPPORT=Y
ONLINE_HSM="Y"
INTRANET_NETSERVER_ADDRESS=899
FILTER="ct.id in (23,31,32,44) and ac.id not in (3880154) and ac.id in (11499762)"

+++++++++++++++++++++++++++++++++++++++++++++++
CONTRA_ORDER
 <Код поручения+>
<Код поручения->
 Параметр позволяет вызывать постоянное платежное поручение с заданным кодом при дебетовании или кредитовании данного счета. При кредитовании будет срабатывать ордер <Код поручения+>, при дебетовании –  <Код поручения->


 +++++++++++++++++++++++++++++++++++++
 ++++++++++++++все что связано с интеграцией +++++++++++++++++++++++++++++++++++++++++++++++++

++++++++++++tab 1 ows ++++++++++++++++++++++++++++++++++++++++++++++
select  --updateXML(appendChildXML(s.xml,'UFXMsg/MsgData/Application',xmltype('<sts>fema</sts>')),'UFXMsg/@direction','Rs').getStringVal()
 insertchildxml(deletexml(s.xml,'UFXMsg/@resp_class'), '/UFXMsg', '@resp_class', 'E').getStringVal() x_new,
  insertchildxml(deletexml(insertchildxml(deletexml(s.xml,'UFXMsg/@resp_class'), '/UFXMsg', '@resp_class', 'E'),'UFXMsg/@resp_text'), '/UFXMsg', '@resp_text', 'Success').getStringVal() x_new
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s



                 select * from ows.client cl where cl.client_number='W662940'                       
                                        
                                        
select updateXML(xmltype('<root><node f="r"><rt></rt><vf></vf></node></root>'), '/root/node', xmltype('<node[@f="y"]></node>')).getStringVal() from dual

select updateXML(xmltype('<root><node f="r">dfgd</node></root>'), '/root/node/@f','e').getStringVal() from dual

select appendChildXML(xmltype('<root><node><rt></rt><vf></vf></node></root>'),'/root/node',xmltype('<sts>'||s.v||'</sts>')).getStringVal() 
from dual, (select 'r' v from dual) s


SELECT * FROM SBERBANK_CUST.RESPONS


select * from ows.adv_appl aa where aa.amnd_date>=to_date('14042017','ddmmyyyy')

select * from ows.standing_order so where so.amnd_state='A'  and so.amount_percent!=0

select * from ows.service s where s.id=655603

select * from ows.service r where r.amnd_state='A' and r.service_details like '%IF_CS_TYPE%'

ows.cust_order_amount(

ows.incd.CREATE_FIN(DocID => )


ows.incd.CRE_FIN_DOC( TransType => ,TargetNumber => ,TransCurr => ,TransAmount => ,TransDetails => ,CDoc => ))

ows.incd.CRE_FIN_DOC_R(TransType => ,ContractRec => ,TransCurr => ,TransAmount => ,TransDetails => ,CDoc => )


ows.incd.CRE_FIN_DOC_R(TransType => ,ContractRec => ,TransCurr => ,TransAmount => ,TransDetails => ,CDoc => )

OWS.INCD.ACCOUNT_TRANSFER_REF(

select ac.add_info_01, ac.add_info_02, ac.add_info_03,ac.add_info_04, ac.*
 from ows.acnt_contract ac where ac.amnd_state='A' and ac.contract_number='KZ60914CP39884549046'
 
 select ac.add_info_01, ac.add_info_02, ac.add_info_03,ac.add_info_04, ac.*
 from ows.acnt_contract ac where ac.amnd_state='A' and ac.add_info_01 is not null
 
 
declare
str varchar2(1200);
begin
str :=ows.glob.SET_TAG_VALUE(ows.acnt_contract.add_info_04 ,'ORDER_PTP','800'); -- sberbank_cust.sb_appl.XML_IMPORT('fucksyste');
 dbms_output.put_line(str);
end;


declare
str varchar2(1200);
begin
str :=ows.glob.SET_TAG_VALUE(sberbank_cust.gate_log.data ,'ORDER_PTP','800'); -- sberbank_cust.sb_appl.XML_IMPORT('fucksyste');
 dbms_output.put_line(str);
end;

select * from ows.standing_order so where so.amnd_state='A' and so.amount_percent<>0

select * from ows.acc_scheme acs where acs.id=31857



     update ows.acnt_contract ac set ac.add_info_04=ows.glob.SET_TAG_VALUE(ac.add_info_04 ,'ORDER_PTP','800') 
     where ac.amnd_state='A' and ac.contract_number='KZ60914CP39884549046'

+++++++++++++tab 2 +++ows+++++++++++++++++++++++++
select 
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s


+++++++++++++++++++++tab3 ows++++++++++++++++++++++++++++++++++++++++
DECLARE 
 V_DC VARCHAR2(5);         
CURSOR doc_CUR is ( select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
, d.settl_amount,d.settl_curr ,d.id
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
                  );        
BEGIN

for REC in doc_CUR
 LOOP
   insert into sberbank_cust.temp_contr (contract_number, 
                                         amount,
                                         curr )
                                  values(rec.contract,
                                         replace(replace(to_char(trunc(rec.settl_amount,2),'9999999999.99'),' ','0'),'.','')
                                         rec.settl_curr                                                    
                                ) ;
   commit;                             
 --  select replace(replace(to_char(trunc(9122233344.12,2),'9999999999.99'),' ','0'),'.','') from dual
 END LOOP;

END;

KZ60914CP39884549046
4263451863764808


select * from sberbank_cust.temp_contr

(SELECT FROM OWS.ACNT_CONTRACT AC WHERE  )


+++++++++++++tab4  ows +++++++++++++++++++++++++++++++
select d.contract, d.settl_amount,d.settl_curr ,d.id
from (select case when d.target_number=s.contract_number  then d.target_number
             when d.source_number =s.contract_number  then d.source_number end contract,
       case when d.target_number=s.contract_number  then 'T'
             when d.source_number =s.contract_number  then 'S' end dir ,
       d.trans_type  ,
       d.request_category Req_cat   ,
       d.settl_amount,
       d.settl_curr  ,
       d.id          
from ows.doc d,
      (select ca.contract_number 
        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
        where ac.amnd_state='A'
        and cr.amnd_state='A' 
        and cr.block_status='A'
        and cr.contract_number=ac.contract_number 
        and ca.amnd_state='A'
        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
where
d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d , ows.trans_type tt
where 
d.trans_type=tt.id
and tt.amnd_state='A'
and ((d.dir='T' and tt.dr_cr=-1 and d.req_cat in ('R','J')) or
     (d.dir='T' and tt.dr_cr=1  and d.req_cat not in ('R','J')) or 
     (d.dir='S' and tt.dr_cr=1  and d.req_cat in ('R','J')) or
     (d.dir='S' and tt.dr_cr=-1 and d.req_cat not  in ('R','J')))
+++++++++++++++++++++++tab5 ows +++++++++++++++++++++++++++++++++++
select d.contract, d.settl_amount,d.settl_curr ,d.id
from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                  when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                  when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
             case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                   when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                   when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
       nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
       d.source_acc_type,
       d.target_acc_type,               
       d.trans_type  ,
       d.request_category Req_cat   ,
       d.service_class,
       d.settl_amount,
       d.settl_curr  ,
       d.id          
from ows.doc d,
      (select ca.contract_number 
        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
        where ac.amnd_state='A'
        and cr.amnd_state='A' 
        and cr.block_status='A'
        and cr.contract_number=ac.contract_number 
        and ca.amnd_state='A'
        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
where
d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
where 
     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
     (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
     (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
     (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J') or     
     (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
     (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')   
     ))
+++++++++++++++++++++++++++tab 6 ows +++++++++++++++++++++++++++++++++
select case when d.target_number=s.contract_number  then d.target_number
             when d.source_number =s.contract_number  then d.source_number end contract
from ows.doc d,
      (select ca.contract_number 
        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
        where ac.amnd_state='A'
        and cr.amnd_state='A' 
        and cr.block_status='A'
        and cr.contract_number=ac.contract_number 
        and ca.amnd_state='A'
        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
where
d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and (d.target_number=s.contract_number or d.source_number=s.contract_number) 


select * from ows.doc d
where d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and d.trans_type is null and d.service_class='A' and d.trans_amount<0

select * from sberbank_cust.temp_contr

select * from ows.doc d where d.id=373044350

select * from ows.account_type at where at.amnd_state='A' and code like 'P'

select * from ows.standing_order so where so.amnd_state='A' and so.is_active='Y'

select * from ows.standing_order so where so.id=79681

select * from ows.acnt_contract ac where ac.contract_number='KZ60914CP39884549046' and ac.amnd_state='A'

select * from sberbank_cust.Contract_Register cr where cr.amnd_state='A' and cr.block_status='A'

select * from ows.officer ofc where ofc.amnd_state='A' and ofc.user_id='U05772'
.
++++++++++++++++++++++tab7  ows +++++++++++++++++++++++++++++++++++++++++++++++
select d.contract, d.settl_amount,d.settl_curr ,d.id
from (select case when d.target_number=s.contract_number  then d.target_number
             when d.source_number =s.contract_number  then d.source_number end contract,
       case when d.target_number=s.contract_number  then 'T'
             when d.source_number =s.contract_number  then 'S' end dir ,
       d.trans_type  ,
       d.request_category Req_cat   ,
       d.settl_amount,
       d.settl_curr  ,
       d.id          
from ows.doc d,
      (select ca.contract_number 
        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
        where ac.amnd_state='A'
        and cr.amnd_state='A' 
        and cr.block_status='A'
        and cr.contract_number=ac.contract_number 
        and ca.amnd_state='A'
        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
where
d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d , ows.trans_type tt
where 
d.trans_type=tt.id
and tt.amnd_state='A'
and ((d.dir='T' and tt.dr_cr=-1 and d.req_cat in ('R','J')) or
     (d.dir='T' and tt.dr_cr=1  and d.req_cat not in ('R','J')) or 
     (d.dir='S' and tt.dr_cr=1  and d.req_cat in ('R','J')) or
     (d.dir='S' and tt.dr_cr=-1 and d.req_cat not  in ('R','J')))



 ((d.trans_type in (select tt.id 
                      from ows.trans_type tt 
                      where tt.amnd_state='A' 
                      and tt.dr_cr=-1
                      and  tt.t_cat in ('C','A')) and  d.request_category in ('R','J')) or
    (d.trans_type in (select tt.id 
                      from ows.trans_type tt 
                      where tt.amnd_state='A' 
                      and tt.dr_cr=1
                      and  tt.t_cat in ('C','A')) and  d.request_category not in ('R','J')))                     


select d.*
 from ows.doc d,sberbank_cust.Contract_Register cr
where
d.amnd_state='A'
and d.is_authorization='N'
and d.posting_status='W'
and d.target_number=cr.contract_number
and cr.amnd_state='A' 
and cr.block_status='A'
and ((d.trans_type in (select tt.id 
                      from ows.trans_type tt 
                      where tt.amnd_state='A' 
                      and tt.dr_cr=-1
                      and  tt.t_cat in ('C','A')) and  d.request_category in ('R','J')) or
    (d.trans_type in (select tt.id 
                      from ows.trans_type tt 
                      where tt.amnd_state='A' 
                      and tt.dr_cr=1
                      and  tt.t_cat in ('C','A')) and  d.request_category not in ('R','J'))) 
                      
                      



select * from sberbank_cust.Contract_Register cr where cr.amnd_state='A' and cr.block_status='A'




select * 
from ows.trans_type tt 
where tt.amnd_state='A' 
and tt.dr_cr=-1
and  tt.t_cat in ('C','A')



select * from ows.trans_type tt 
where tt.amnd_state='A' 
and tt.dr_cr<>0 -- not None n
and (tt.s_cat in ('C','A') or tt.t_cat in ('C','A') )

+++++++++++++++++++++++++++++++++tab7+++++ows++++++++++++++++++++
declare
str varchar2(1200);
begin
str :=ows.auth.CANCEL_AUTH_DOC(382653351); -- функция диспут DOC
 dbms_output.put_line(str);
end;

declare
str varchar2(1200);
begin

 dbms_output.put_line(str);
end;



select d.id did
from ows.credit_history ch , ows.doc d
where ch.credit_type  in ('P', 'U', 'A', 'W', 'w', 'F', 'Z', 'T', 'X')
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0
and  ch.credit_status in ('A', 'I')
and ch.acnt_contract__oid in (select ca.id
                              from ows.acnt_contract ac, ows.acnt_contract ca 
                              where ac.amnd_state='A'
                              and ca.amnd_state='A'
                              and ac.contract_number='KZ80914CP39854652607'
                              and (ca.acnt_contract__oid=ac.id or ca.id=ac.id))
                              

  
select * from ows.officer ofc where ofc.amnd_state='A' and ofc.user_id not like 'U%'

select * from ows.process_log pl where pl.id=21458060,21457940

select * from ows.process_mess pm where pm.process_log__oid=21458060

select * from ows.usage_action ua where ua.id=172830780


++++++++++++++++++++++++++++tab8  ows ++++++++++++++++++++++++++++++++++++++++
select  
s.xml.getStringVal()
from  (SELECT XMLType(REPLACE('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','</Application></MsgData>','<Status>
                                         <RespClass>Information</RespClass>
                                         <RespCode>0</RespCode>
                                         <RespText>Successfully processed</RespText>
                                        </Status>
                                        </Application>
                                        </MsgData>')) XML FROM DUAL) s


+++++++++++++++++++++tab9 ows ++++++++++++++++++++++++++++
create or replace procedure ows.CUST_ORDER_AMOUNT(
  ContractID  in dtype. RecordID     %Type,
  StndOrder   in standing_order   %Rowtype,
  DocID       in dtype. RecordID     %Type,
  MtrID       in dtype. RecordID     %Type
)
is
  CDoc doc           %rowtype;
  CMtr m_transaction %rowtype;
  BaseCurr   dtypt. CurrencyCode %Type;
  BaseAmount dtypt. Money        %Type;
  EvntCurr   dtypt. CurrencyCode %Type;
  EvntAmount dtypt. Money        %Type;
  EvntCode   dtype. Name         %Type;
  EvntType   dtype. RecordID     %Type;
  NewID      dtype. RecordID     %Type;
  IsFirst    dtype. Tag          %Type;
begin
--To Credit Scheme
  if StndOrder.order_code = 'CALC_CUR_INT' then
    for acc in (select id from account
                  where acnt_contract__oid=ContractID
                    and interest_rate is not null and interest_rate<>0 and current_balance <0)
      loop
        mtr.QUE_CALC_INTEREST(acc.id);
      end loop;
  end if;
---
  if DocID is not null then
     select * into Cdoc from doc where id = DocID;
     BaseCurr := CDoc.trans_curr;
     BaseAmount := Cdoc.trans_amount;
  elsif MtrID is not null then
     select * into CMtr from m_transaction where id = MtrID;
     BaseCurr := CMtr.trans_curr;
     BaseAmount := CMtr.trans_amount;
  else
     return;
  end if;
  --
  -- replenishment by event
  --
  EvntCode := sy_convert.GET_TAG_VALUE(StndOrder.reason_details, 'BY_EVENT');
  if EvntCode is not null then
     EvntType := evnt.EVENT_BY_CODE(EvntCode, ContractID);
     IsFirst := stnd.Yes;
     for e in (select * from usage_action
                where acnt_contract__id = ContractID
                  and posting_status = stnd.Posted and event_type = EvntType
                order by record_date)
     loop
        if BaseAmount <= 0 then
           exit;
        end if;
        EvntCurr := sy_convert.GET_TAG_VALUE(e.event_details, 'CURR');
        EvntAmount := fx.TO_AMOUNT(sy_convert.GET_TAG_VALUE(e.event_details, 'AMOUNT'), EvntCurr);
        EvntAmount := fx.FX_ACNT_MIDDLE(ContractID, EvntCurr, BaseCurr, EvntAmount);
        if BaseAmount >= EvntAmount and EvntAmount > 0 then
           NewID := null;
           if DocID is not null then
              CDoc.trans_amount := EvntAmount;
              if IsFirst = stnd.Yes then
                 NewID := DocID;
              end if;
              YTDOC('P', NewID, Cdoc);
              update usage_action set target_doc = NewID where id = e.id;
           else
              CMtr.trans_amount := EvntAmount;
              if IsFirst = stnd.Yes then
                 NewID := MtrID;
              end if;
              YTM_TRANSACTION('P', NewID, CMtr);
              update m_transaction set doc__oid = e.doc where id = NewID;
              mtr.POST_SUB_MACRO1(NewID);
           end if;
           evnt.CLOSE_EVENT(e.id, glob.LDATEACNT(ContractID), sy_convert.INT_TO_CHAR(NewID));
           IsFirst := stnd.No;
           BaseAmount := BaseAmount - EvntAmount;
        end if;
     end loop;
     return;
  end if;
end;
+++++++++++++++++++++++tab10 ows +++++++++++++++++++++++++
select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
          ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
          ,extractValue(value(par_appl),'Application/RegNumber')    par_reg_num
          ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
          ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
          ,extractValue(value(sub_appl),'Application/ActionType')      act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
          ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
          ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
          ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
          ,extractValue(value(appl_data),'Data/Comment') BlockDetails
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
        ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
        ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
        ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event
+++++++++++++++++++++++tab11 ows+++++++++++++++++++
select * froM OWS.CLIENT.ADD_INFO_01

OWS.ACNT_CONTRACT

OWS.ACCOUNT

OWS.EVENT_TYPE

OWS.USAGE_ACTION

OWS.EVENT_TYPE

select * from ows.adv_appl

select * from user

select * from ows.client cl where cl.client_number='W100374'

call util.user_unlock('05772','Violin147+');

sys.ut

SELECT ET.NAME FROM OWS.EVENT_TYPE ET WHERE ET.AMND_STATE='A' AND ET.CODE

SELECT * FROM OWS.RESP_CODE  RC WHERE RC.AMND_STATE='A'

ows.acc_scheme

SELECT * FROM OWS.CURRENCY CURR WHERE CURR.AMND_STATE='A' AND CURR.NAME ='KZT'

select * from dbms_output_view;
ows.dtype

select * from sberbank_cust.gate_log

GRANT SELECT  ON  OWS.EVENT_TYPE  TO  SBERBANK_CUST;

GRANT SELECT  ON  OWS.CURRENCY  TO  SBERBANK_CUST;

GRANT SELECT  ON  OWS.CREDIT_HISTORY  TO  SBERBANK_CUST;

GRANT SELECT  ON  sberbank_cust.Contract_Register TO  OWS;

GRANT EXECUTE  ON  OWS.evnt TO  SBERBANK_CUST;

GRANT EXECUTE  ON  OWS.FX TO  SBERBANK_CUST;

GRANT EXECUTE  ON  OWS.AUTH TO  SBERBANK_CUST;

+++++++++++++++++++tab12 ows ++++++++++++++++++++++++
SELECT * FROM OWS.STANDING_ORDER SO WHERE SO.REASON_DETAILS LIKE '%CUSTOM_AMOUNT%' AND SO.AMND_STATE='A'



SELECT * FROM OWS.STANDING_ORDER SO WHERE SO.REASON_DETAILS LIKE '%BY_EVENT%' 

SELECT * FROM OWS.ACC_SCHEME ACS WHERE ACS.ID=33021

SELECT * FROM OWS.ACC_TEMPL ACT WHERE ACT.ID=149309

select * from ows.acc_templ act where act.amnd_state='A' and act.event_type is not null

select * from ows.credit_history h 
where h.acnt_contract__oid=7131477
and h.credit_status in ('A','I')
and h.credit_type='P'
and h.service_class='T'
and h.amount<0

select ows.xwcredit_history('CREDIT_TYPE','p') from dual

select (select tt.name from ows.trans_type tt where tt.id=d.trans_type) tip_trans,d.id did,
ch.*
from ows.credit_history ch , ows.doc d
where ch.credit_type not in ('P','C','B','S','W','w','X','I')
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0

in ('P', 'U', 'A', 'C', 'c', 'W', 'w', 'F', 'Z', 'T', 'X')

SELECT *
FROM v$reserved_words where keyword='ID'

with t as (
    select 
        xmltype('<a><b c="2">1</b></a>') x,
        '/a/b' node,   --node where attribute located
        '@d' att,      --attribute name
        'new' val      --new value
    from dual
)
select 
   -- x.getStringVal(),
    insertchildxml(deletexml(x,node||'/'||att), node, att, val).getStringVal() x_new
from t
++++++++++++++++++++++++tab13 ows ++++++++++++++++++
select (select tt.name from ows.trans_type tt where tt.id=d.trans_type) tip_trans,d.id did,
ch.*
from ows.credit_history ch , ows.doc d
where ch.credit_type='w' --not in ('P', 'U', 'A', 'C', 'c', 'W', 'w', 'F', 'Z', 'T', 'X','B','S','I')
and d.amnd_state='A'
and ch.doc__id=d.id
and  ch.credit_status in ('A', 'I')
and ch.amount<0

and ch.id =14292924

('U', 'A', 'c', 'w', 'F', 'Z', 'T', 'X')

in ('P', 'U', 'A', 'C', 'c', 'W', 'w', 'F', 'Z', 'T', 'X')

select * from ows.credit_history ch where ch.id=14292924--126404390

select * from ows.auth_record ar where ar.id=14292924

ows.auth.CANCEL_AUTH_DOC( --диспут DOC

ows.auth.CLOSE_BLOCKED()  --при закрытии дня  CH
credit_status in ('A', 'I') and closed < sysdate

++++++++++++tab14 ows ++++++++++++++++
select (select tt.name from ows.trans_type tt where tt.id=d.trans_type) tip_trans,d.id did,
ch.*
from ows.credit_history ch , ows.doc d
where ch.credit_type  in ('P', 'U', 'A', 'W', 'w', 'F', 'Z', 'T', 'X')
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0
and  ch.credit_status in ('A', 'I')
and ch.acnt_contract__oid in (select ca.id
                              from ows.acnt_contract ac, ows.acnt_contract ca 
                              where ac.amnd_state='A'
                              and ca.amnd_state='A'
                              and ac.contract_number='KZ60914CP39884549046'
                              and (ca.acnt_contract__oid=ac.id or ca.id=ac.id))

+++++++++++tab15 ows ++++++++++++++++
select (select tt.name from ows.trans_type tt where tt.id=d.trans_type) tip_trans,d.id did,
ch.*
from ows.credit_history ch , ows.doc d
where ch.credit_type in ( 'U', 'A', 'c', 'w', 'F', 'Z', 'T', 'X')
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0

('U', 'A', 'c', 'w', 'F', 'Z', 'T', 'X')

in ('P', 'U', 'A', 'C', 'c', 'W', 'w', 'F', 'Z', 'T', 'X')

select (select tt.name from ows.trans_type tt where tt.id=d.trans_type) tip_trans,d.id did,
ch.*
from ows.credit_history ch , ows.doc d
where ch.credit_type  in ('P', 'U', 'A', 'W', 'w', 'F', 'Z', 'T', 'X')
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0
and d.trans_type<>39473
and  ch.credit_status in ('A', 'I')


('U', 'A', 'c', 'w', 'F', 'Z', 'T', 'X')

in ('P', 'U', 'A', 'W', 'w', 'F', 'Z', 'T', 'X')



select ca.*
from ows.acnt_contract ac, ows.acnt_contract ca 
where ac.amnd_state='A'
and ca.amnd_state='A'
and ac.contract_number='KZ12914CP39887515491'
and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)

select xwcredit_history('CREDIT_TYPE','A') from dual

select * from ows.acnt_contract ac
where ac.amnd_state='A'
and (ac.id=1866963 or ac.acnt_contract__oid=1866963)

declare
begin
ows.auth.CLOSE_BLOCKED(CrHistID =>126405140);  --при закрытии дня  CH
commit;
end;



Declare 
v_previd number; 
begin
ows.yclient(106915,'H',v_previd);
dbms_output.put_line('='||v_previd);
commit;
end;

select * from ows.credit_history ch where ch.id=126404420


++++++++++++++++tab16 ows +++++++++++++++++
 select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.id did
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select distinct ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from  ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and ca.amnd_state='A' and ca.contract_number='KZ60914CP39884549046'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                             --   and d.trans_type in (700,33213,33214,39473,39476)
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
++++++++++++++++++++tab17 ows ++++++++++++++++++++++
 select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.id
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from --sberbank_cust.Contract_Register cr, 
                                        ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and ac.contract_number='KZ60914CP39884549046'
                                        --and cr.amnd_state='A' 
                                        --and cr.block_status='A'
                                        --and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
 
++++++++++++++++++++tab18 ows ++++++++++++++++++++
select * from ows.acc_scheme acs
where acs.amnd_state='A'
and acs.scheme_name  in (
'Db KZ Comm Res SD KZT TKB',
'Db EUR Priv Res TKB',
'Db US Priv Res TKB',
'Db KZ Priv Res TKB'
)


select ac.contract_number,
(select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) from ows.client cl where cl.amnd_state='A' and cl.id=ac.client__id )  fio,
ac.amount_available, 
(select c.name from ows.currency c where c.amnd_state='A' and c.code=ac.curr) valuta 
from ows.acnt_contract ac 
where ac.amnd_state='A'
and ac.acc_scheme__id in (select acs.id from ows.acc_scheme acs
          where acs.amnd_state='A'
          and acs.scheme_name  in (
         -- 'Db KZ Comm Res SD KZT TKB' --,
         -- 'Db EUR Priv Res TKB',
         -- 'Db US Priv Res TKB' --,
         'Db KZ Priv Res TKB'
          ))
and ac.is_ready<>'C'
and ac.con_cat='A'
and ac.contr_status=774
and ac.total_blocked=0
and ac.amount_available>=0
and rownum<500

select * from ows.contr_status cs where cs.amnd_state='A'




select * from ows.service s 
where s.id=636795
and s.amnd_state='A'
and s.trans_type_t in (select ts.id from ows.trans_subtype ts where ts.amnd_state='A' and ts.trans_type__oid=40716)
and s.is_source='N'

+++++++++++++++++tab19 ows+++++++++++++
select p.clnumber from ows.pragmaclient p where p.inform='280917PTP' --for update


select ac.contract_number,
(select  nvl(trim(cl.last_nam||' '||cl.first_nam||' '||cl.father_s_nam),cl.short_name) from ows.client cl where cl.amnd_state='A' and cl.id=ac.client__id )  fio,
ac.amount_available, 
(select c.name from ows.currency c where c.amnd_state='A' and c.code=ac.curr) valuta 
from ows.acnt_contract ac 
where ac.amnd_state='A'
and ac.contract_number in (select p.clnumber from ows.pragmaclient p where p.inform='280917PTP')


+++++++++++++++++++++++++++sberbank_cust++++++++++++++++++++++++++++++++++++++++++++

select d.id did
from ows.credit_history ch , ows.doc d
where ch.credit_type  in ('P', 'U', 'A', 'W', 'w', 'F', 'Z', 'T', 'X') -- тут используется только P и W ,а остальное на всяки случай
and d.amnd_state='A'
and ch.doc__id=d.id
and ch.amount<0  -- все блоки которые создают положительный остаток на контракте
and  ch.credit_status in ('A', 'I')
and ch.acnt_contract__oid in (select ca.id
                              from ows.acnt_contract ac, ows.acnt_contract ca 
                              where ac.amnd_state='A'
                              and ca.amnd_state='A'
                              and ac.contract_number='KZ80914CP39854652607'
                              and (ca.acnt_contract__oid=ac.id or ca.id=ac.id))
                              
                              
select to_char(sysdate,'SSSS')  from dual                              


select replace(replace(to_char(trunc(9122233344.00,2),'9999999999.99'),' ','0'),'.','') from dual

select * from sberbank_cust.temp_contr

select * from sberbank_cust.gate_log

select * from sberbank_cust.contract_register cr where cr.contract_number='KZ82914CP39834162388'

select * from sberbank_cust.response

select * from sberbank_cust.r_debug

+++++++++++++++++++++++++++++++++++sberbank_cust+++++++++++++++++++++++++++
with demo as (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) 
 select extractValue(s.xml,'UFXMsg/MsgData/Application/ObjectType')      obj_type
   from demo s
        

                
-- данные по главной аппликации 
select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
          ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
          ,extractValue(value(par_appl),'Application/RegNumber')    par_reg_num
          ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
          ,extractValue(value(par_appl),'Application/ActionType')      act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
          ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
          ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
          ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
          ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
          ,extractValue(value(appl_data),'Data/Comment') BlockDetails
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
        ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data

       


select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
          ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
          ,extractValue(value(par_appl),'Application/RegNumber')    par_reg_num
          ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
          ,extractValue(value(par_appl),'Application/ActionType')      act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
          ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
          ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
          ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
          ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
          ,extractValue(value(appl_data),'Data/Comment') BlockDetails
from  (SELECT XMLType(I_XML) XML FROM DUAL) s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
        ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data




-- данные по главной аппликации 
select  s.xml.extract('UFXMsg/MsgData/Application').getstringval() par_appl
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s
        

++++++++++++++++++++++++++sberbank_cust+++++++++++++++++

with demo as(
     select XMLType(
   '<?xml version="1.0" encoding="UTF-8"?>
    <UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>sd55465fsd5fv215dfd5fs</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ159CP7538524567519</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>900429302017</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>9</PRIORITY>
                <CommentLog>комент</CommentLog>
            </Data>
        </Application>
      </MsgData>
</UFXMsg>'
            ) xml from dual )
   select extractValue(s.xml,'UFXMsg/MsgId') MsgId
          ,extractValue(s.xml,'UFXMsg/@direction') DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type') MSG_TYPE
          ,extractValue(value(appl),'Application/RegNumber') reg_num
          ,extractValue(value(appl),'Application/ObjectType') obj_type
          ,extractValue(value(appl),'Application/ActionType') act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
   from demo s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) appl
        ,table(XMLSequence(value(appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(appl).extract('Application/Data')))(+) appl_data;


select * from sberbank_cust.contract_register

++++++++++++++++++++++++++++++++sberbank_cust

-- Created on 13.03.2017 by U05772 
declare 
  -- Local variables here
  type ref_cursor is ref cursor;
  l_cur  ref_cursor;
  l_reg  varchar2(32);
  l_sub  varchar2(32);

       FUNCTION APPL_CUR (I_XML IN varchar2,I_OBJ IN VARCHAR2) RETURN ref_cursor IS 
            RS ref_cursor;
            BEGIN
               IF I_OBJ='PTP' THEN
                      OPEN RS FOR 
                                 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                  ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                  ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                                  ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                  ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                                  ,extractValue(value(par_appl),'Application/ActionType')      act_type
                                  ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                  ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                                  ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                  ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
                                  from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data;
                      
                 ELSIF   I_OBJ='Event' THEN   
                  OPEN RS  FOR
                             select  /*extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                        ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                         ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE*/
                                           extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                              ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
                                        /*        ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
                                                  ,extractValue(value(sub_appl),'Application/ActionType')      act_type
                                                     ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                                       ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                                        ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
                                                          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
                                                           ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                                             ,extractValue(value(appl_data),'Data/Comment') BlockDetails*/
                              from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                    ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                    ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                    ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
                                    ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
                                    ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event;
                        
                END IF;              
                 RETURN RS;        
            END;
begin
  -- Test statements here
            
    l_cur := APPL_CUR ('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','Event');
  
   LOOP
    FETCH l_cur INTO l_reg,l_sub ;
     EXIT WHEN l_cur%notfound;
    dbms_output.put_line(l_reg||' '||l_sub);
    
   END LOOP;
  CLOSE l_cur;
    
end;

SELECT * FROM GATE_LOG gl

update gate_log gl set gl.posting_status='C' where gl.posting_status='P'

select * from sberbank_cust.contract_register cr where cr.amnd_state='A' 

select * from sberbank_cust.response

update contract_register cr  set cr.block_status='C' where cr.amnd_state='A' and cr.block_status='A'

SELECT * FROM TAG_DESCRIPTION

select id  s_officer from ows.officer where user_id = 'SOAQ_TS' and amnd_state='A'

select sberbank_cust.gate_log_sq.nextval from dual
++++++++++++++++++++++++++++++++++++sberbank_cust
declare
c  utl_tcp.connection;    
begin 

   utl_tcp.close_all_connections;
    
    begin
    c := utl_tcp.open_connection('10.20.2.12', 21201);    
   exception
        when utl_tcp.network_error then 
        RAISE_APPLICATION_ERROR(-20011,sqlerrm||' connection error');  
    end;

    utl_tcp.close_connection(c);  
    
end;

select * from sys.user$


select * from sberbank_cust.Response

select * from sberbank_cust.tag_description

select * from sberbank_cust.temp_contr

select * from sberbank_cust.Contract_Register cr where cr.amnd_state='A' and cr.block_status='A'

INSERT INTO sberbank_cust.temp_contr(contract_number) VALUES ('KZ02914038P000041012');
INSERT INTO sberbank_cust.temp_contr(contract_number) VALUES ('KZ02914038P000013367');
INSERT INTO sberbank_cust.temp_contr(contract_number) VALUES ('KZ60914CP39884549046');

select * from sberbank_cust.Contract_Register cr where cr.amnd_state='A' and cr.block_status='A'

select * from sberbank_cust.gate_log gl WHERE GL.AMND_DATE>=TO_DATE('13092017','DDMMYYYY')

select * from ows.officer ofc where ofc.user_id='OWS_TS'

GRANT SELECT  ON  sberbank_cust.Contract_Register TO  OWSROWN;

GRANT SELECT  ON   sberbank_cust.temp_contr TO  OWSROWN;

GRANT insert  ON   sberbank_cust.temp_contr TO  OWSROWN;

GRANT update  ON   sberbank_cust.temp_contr TO  OWSROWN;

GRANT delete  ON   sberbank_cust.temp_contr TO  OWSROWN;

GRANT EXECUTE ON sberbank_cust.Sb_Appl TO  OWSROWN;



select d.s from 
(select 'a' s from dual
union
select 'b' from dual
union
select 'c' from dual) d



utl_

ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT')

select ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT')
  from sberbank_cust.gate_log gl where gl.id=671

select * from ows.officer ofc where ofc.amnd_state='A' and  OFC.name='SB_GATE'

select * from ows.officer ofc where ofc.amnd_state='A' and  OFc.Amnd_Date>=to_date('01012017','ddmmyyyy')

select cast(100.05 as number(28,10)) from dual

select CAST('5.22' AS double precision) from dual 

select CAST(replace('5.22','.',',') AS number(28,10)) from dual 

SELECT ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT')
 FROM SBERBANK_CUST.GATE_LOG GL 
 WHERE GL.ID=60  AND GL.AMND_STATE='A'
 
  SELECT AC.* FROM  OWS.ACNT_CONTRACT AC where AC.AMND_STATE='A' AND ac.contract_number='KZ60914CP39884549046'
 
 select cast ('1000.00' as number(28,10)) BLOCK_AMNT  from dual
 
 SELECT AC.* FROM  OWS.ACNT_CONTRACT AC 
 WHERE AC.AMND_STATE='A' AND AC.CONTRACT_NUMBER=ows.rpr.GET_TAG_VALUE(
 (SELECT gl.data
 FROM SBERBANK_CUST.GATE_LOG GL 
 WHERE GL.ID=60  AND GL.AMND_STATE='A')
 ,'CONTRACT');
 
 SELECT AC.* FROM  OWS.ACNT_CONTRACT AC 
 WHERE AC.AMND_STATE='A' AND AC.CONTRACT_NUMBER=ows.rpr.GET_TAG_VALUE(
 (SELECT gl.data
 FROM SBERBANK_CUST.GATE_LOG GL 
 WHERE GL.ID=60  AND GL.AMND_STATE='A')
 ,'CONTRACT');
 
 SELECT ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT')
 FROM SBERBANK_CUST.GATE_LOG GL 
 WHERE GL.ID=60  AND GL.AMND_STATE='A'
 
 WITH 
 D AS( SELECT ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT')  CARD
                                             FROM SBERBANK_CUST.GATE_LOG GL 
                                             WHERE GL.ID=60  AND GL.AMND_STATE='A' ) 
  SELECT AC.* FROM  OWS.ACNT_CONTRACT AC ,D
 WHERE AC.AMND_STATE='A' AND AC.CONTRACT_NUMBER =to_char(D.CARD)
 

  SELECT AC.* FROM  OWS.ACNT_CONTRACT AC 
 WHERE AC.AMND_STATE='A' AND AC.CONTRACT_NUMBER =KZ60914CP39884549046
 
 SELECT 
cast (ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT') as varchar2(32)) CONTRACT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'IIN')      as varchar2(32)) IIN,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'PRIORITY') as varchar2(3)) PRIORITY,
cast (replace(ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT'),'.',',') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_CURR') as VARCHAR2(3)) BLOCK_CURR,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'COMMENT')    as VARCHAR2(255)) COMM  , GL.*
FROM SBERBANK_CUST.GATE_LOG GL WHERE (GL.ID=60 OR GL.GATE_LOG__OID=60) AND GL.AMND_STATE='A'


 SELECT 
cast (ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT') as varchar2(32)) CONTRACT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'IIN')      as varchar2(32)) IIN,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'PRIORITY') as varchar2(3)) PRIORITY,
cast (replace(ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT'),'.',',') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_CURR') as VARCHAR2(3)) BLOCK_CURR,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'COMMENT')    as VARCHAR2(255)) COMM  ,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_CODE')    as VARCHAR2(32)) EVENT_CODE  ,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_COMMENT')    as VARCHAR2(4000)) EVENT_COMMENT  ,
 GL.*
FROM SBERBANK_CUST.GATE_LOG GL WHERE (GL.ID=60 OR GL.GATE_LOG__OID=60) AND GL.AMND_STATE='A'



SELECT cast (replace('100.452','.',',') as number(28,10))+15 BLOCK_AMNT FROM DUAL


SELECT replace('100.452','.',',')+15 BLOCK_AMNT FROM DUAL


SELECT 
cast (ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT') as varchar2(32)) CONTRACT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'IIN')      as varchar2(32)) IIN,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'PRIORITY') as varchar2(3)) PRIORITY,
cast (replace(ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT'),'.',',') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_CURR') as VARCHAR2(3)) BLOCK_CURR,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'COMMENT')    as VARCHAR2(255)) COMM,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_CODE')    as VARCHAR2(32)) EVENT_CODE  ,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_COMMENT')    as VARCHAR2(4000)) EVENT_COMMENT  , GL.*
FROM SBERBANK_CUST.GATE_LOG GL WHERE (GL.ID=700/*I_APID*/ OR GL.GATE_LOG__OID=700/*I_APID*/) AND GL.AMND_STATE='A'

+++++++++++++++++++++++++++++++++sberbank_cust


SELECT OBJECT_NAME, OBJECT_TYPE, STATUS 
FROM USER_OBJECTS
WHERE OBJECT_NAME IN ('R_DEBUG','SBERBANK_CUST.DEBUG_MESSAGE');



SELECT OBJECT_NAME, OBJECT_TYPE, STATUS 
FROM USER_OBJECTS
WHERE OBJECT_NAME = 'SB_APPL'
++++++++++++++++++++++++++++++++sberbank_cust
DECLARE 
 V_DC VARCHAR2(5);         
CURSOR doc_CUR is ( select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.id
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
                  );        
BEGIN

execute immediate 'TRUNCATE TABLE sberbank_cust.temp_contr';

    for REC in doc_CUR
     LOOP
       insert into sberbank_cust.temp_contr (contract_number, 
                                             amount,
                                             curr )
                                      values(rec.contract,
                                             replace(replace(to_char(trunc(rec.settl_amount,2),'9999999999.99'),' ','0'),'.',''),
                                             rec.settl_curr                                                    
                                    ) ;
       commit;                             
     --  select replace(replace(to_char(trunc(9122233344.12,2),'9999999999.99'),' ','0'),'.','') from dual
     END LOOP;

END;

select replace(to_char(REC.BLOCK_AMNT),'.',',') from dual

++++++++++++++++++++++++++++++++++sberbank_cust
update sberbank_cust.Contract_Register cr set cr.block_status='C' 
where cr.amnd_state='A' and cr.block_status='A' --and cr.id<>37


select * from sberbank_cust.temp_contr

sberbank_cust.gate_log_sq

select to_char(sysdate,'yyyymmdd')||sberbank_cust.gate_log_sq.nextval from dual

select cast(to_timestamp('20:27:28,550', 'hh24:mi:ss,ff3') as date) from dual;

SELECT ((sysdate - to_date('01011970','DDMMYYYY')) * (86400))||DBMS_RANDOM.STRING('x',5) AS dt FROM dual;

select to_char(sysdate,'mi')/3600 from dual

select * from sberbank_cust.gate_log gl  where gl.data like '%KZ10914CP39868969321%'

--delete from sberbank_cust.gate_log gl where gl.data like '%KZ94914CP39888427949%'  and gl.id>=1180


select * from sberbank_cust.contract_register cr where cr.contract_number='KZ53914CP39856734422'

select * from sberbank_cust.tag_description

select * from r_debug

select * from sberbank_cust.response

select to_char(sysdate,'ddmmyyyy hh24:mi:ss,FF9') from dual


select * from sberbank_cust.contract_register

SELECT  TO_TIMESTAMP(sysdate, 'YYYY-MM-DD HH24:MI:SS,FF9') FROM    dual

select *
         from ows.currency  curr
         

SELECT trunc(DBMS_RANDOM.VALUE( 0, 100 )) as RND from dual

select DBMS_RANDOM.STRING('x',5)  from dual;

select lpad(((sysdate-trunc(sysdate))*86400),5,'0') from dual

select 'APL_PTP_'||lpad(((sysdate-trunc(sysdate))*86400),5,'0')||'_'||DBMS_RANDOM.STRING('x',5) from dual




select REGEXP_INSTR('0000055225454', '\D') from dual


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++sberbank_cust

with demo as(
     select XMLType(
   '<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rs" msg_type="Application" scheme="" version="2.0" resp_text="Success" resp_code="0" resp_class="I">
                <MsgId>123456</MsgId>
                <Source app="SBGATE"/>
                <MsgData>
                               <Application>
                                               <RegNumber>AA_XML_40_002</RegNumber>
                                               <ObjectType>PTP</ObjectType>
                                               <ActionType>Unlock</ActionType>
                                               <ObjectFor>
                                                               <ContractIDT>
                                                                              <ContractNumber>KZ60914CP39884549046</ContractNumber>
                                                                              <Client>
                                                                                              <ClientInfo>
                                                                                                              <IIN>900429302017</IIN>
                                                                                              </ClientInfo>
                                                                              </Client>
                                                               </ContractIDT>
                                               </ObjectFor>
                                               <SubApplList>
                                                               <Application>
                                                                              <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                                                                              <ObjectType>Event</ObjectType>
                                                                              <ActionType>Add</ActionType>
                                                                              <Data>
                                                                                              <QueEvent>
                                                                                                              <ActionCode>PTP_UBLK</ActionCode>
                                                                                                              <Comment>ReasonDetails2</Comment>
                                                                                              </QueEvent>
                                                                              </Data>
                                                               </Application>
                                               </SubApplList>
                                               <Status>
                                                               <RespClass>I</RespClass>
                                                               <RespCode>0</RespCode>
                                                               <RespText>Success</RespText>
                                               </Status>
                               </Application>
                </MsgData>
</UFXMsg>
'
            ) xml from dual )
   select extractValue(s.xml,'UFXMsg/MsgId') MsgId
          ,extractValue(s.xml,'UFXMsg/@resp_code') DIR
   from demo s


++++++++++++++++++++++++++++++sberbank_cust
declare
c  utl_tcp.connection;    
cnt number;
l varchar2(1000);
ll  varchar2(1000);
success boolean;
begin 

    success := false;
    utl_tcp.close_all_connections;
    begin
    c := utl_tcp.open_connection('10.20.2.12', 21201);    
    exception
        when utl_tcp.network_error then 
        RAISE_APPLICATION_ERROR(-20011,sqlerrm||' connection error');  
    end;


    cnt := utl_tcp.WRITE_LINE(c,'POST http://10.20.2.12');
    cnt := utl_tcp.WRITE_LINE(c,'HTTP/1.0');
    cnt := utl_tcp.WRITE_LINE(c,'Host: 10.20.2.12');
    cnt := utl_tcp.WRITE_LINE(c,'Content-type: application/xml');
    cnt := utl_tcp.WRITE_LINE(c,'Content-length: 250');    
    UTL_TCP.FLUSH(c);
    cnt := utl_tcp.WRITE_LINE(c, chr(13)||chr(10)); 
    UTL_TCP.FLUSH(c);
    cnt := utl_tcp.WRITE_LINE(c,'<REQUEST REQTYPE="1">');
    cnt := utl_tcp.WRITE_LINE(c,'<RINFO>');
    cnt := utl_tcp.WRITE_LINE(c,'<value>Хеллоу ДПиРКС</value>');
    cnt := utl_tcp.WRITE_LINE(c,'</RINFO>');
    cnt := utl_tcp.WRITE_LINE(c,'</REQUEST>');    
                                 
for i in 1..5 loop
      cnt := utl_tcp.available(c);

      --этот цикл сделан только!!! для вывода на экран
      while (cnt > 0) loop
        ii := utl_tcp.read_text(c, l, 200);
        cnt:=cnt-200;
        dbms_output.put_line('Receive '||ii||' bytes <<<------'||l||'----->>> ');
        ll:=ll||l;
      end loop;


      if ll like '%</Request_Response>%' then success := true; exit; end if;          
    --  dbms_lock.sleep(1);
    end loop;
    utl_tcp.close_connection(c);  

    if success then dbms_output.put_line('Success'); else dbms_output.put_line('ERROR!!!'); end if;


end;

++++++++++++++++++++++++++++++++++++sberbank_cust
with demo as(
     select XMLType(
   '<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>'
            ) xml from dual )
 select  extractValue(s.xml,'UFXMsg/MsgId')                    MsgId
          ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
          ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
          ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
          ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
          ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
          ,extractValue(value(sub_appl),'Application/ActionType')      act_type
          ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
          ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
          ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
          ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
          ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
          ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
          ,extractValue(value(appl_data),'Data/Comment') BlockDetails
  from  --(SELECT XMLType(C_XML) XML FROM DUAL) s
  demo s
        ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
        ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
        ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
        ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
        ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event



with demo as(
     select XMLType(
   '<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>'
            ) xml from dual )
 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                ,extractValue(value(par_appl),'Application/ActionType')      act_type
                ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
      from -- (SELECT XMLType(C_XML) XML FROM DUAL) s
      demo s
              ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
              ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
              ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data


++++++++++++++++++++++++++++++++sberbank_cust
select  s.xml.extract('UFXMsg/MsgData/Application/Data').getstringval() par_appl
from  (SELECT XMLType('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>') XML FROM DUAL) s
        

select * from sberbank_cust.Tag_Description

SELECT * FROM sberbank_cust.Gate_Log


SELECT * FROM sberbank_cust.Response


        insert into sberbank_cust.Tag_Description(id, 
                                                  amnd_date,
                                                  amnd_officer,
                                                  amnd_state,
                                                  code,
                                                  check_type,
                                                  description,
                                                  check_length )
                                           values(SBERBANK_CUST.HDBK_SQ.NEXTVAL,
                                                  SYSDATE,
                                                  8836,
                                                  'A',
                                                  'CONTRACT_NUMBER',
                                                  'VARCHAR2',
                                                  'НОМЕР КОНТРАКТА',
                                                  '20'                                                
                                ) ;  
                                    
          
          insert into sberbank_cust.response (id, 
                                                  prev_id,
                                                  amnd_date,
                                                  amnd_officer,
                                                  amnd_state,
                                                  code,
                                                  description,
                                                  resp_cat)
                                           values(SBERBANK_CUST.HDBK_SQ.NEXTVAL,
                                                  SBERBANK_CUST.HDBK_SQ.NEXTVAL,
                                                  SYSDATE,
                                                  8836,
                                                  'A',
                                                  '27',
                                                  'The contract already has an active lock' ,
                                                  'E'                                             
                                ) ;
                                
                                
     update   sberbank_cust.response set resp_cat='E' where id in (23,24,25)                         
                                
++++++++++++++++++++++++++++++sberbank_cust
-- Created on 13.03.2017 by U05772 
declare 
  type ref_cursor is ref cursor;
  
  -- Local variables here
  l_cur  ref_cursor;
  l_reg  varchar2(32);
  l_sub  varchar2(32);


       FUNCTION APPL_CUR (I_XML IN varchar2,I_OBJ IN VARCHAR2) RETURN ref_cursor IS 
            RS ref_cursor;
            BEGIN
               IF I_OBJ='PTP' THEN
                      OPEN RS FOR 
                                 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                  ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                  ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                                  ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                  ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                                  ,extractValue(value(par_appl),'Application/ActionType')      act_type
                                  ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                  ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                                  ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                  ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
                                  from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data;
                      
                 ELSIF   I_OBJ='Event' THEN   
                  OPEN RS  FOR
                             select  /*extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                        ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                         ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE*/
                                           extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                              ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
                                        /*        ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
                                                  ,extractValue(value(sub_appl),'Application/ActionType')      act_type
                                                     ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                                       ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                                        ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
                                                          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
                                                           ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                                             ,extractValue(value(appl_data),'Data/Comment') BlockDetails*/
                              from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                    ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                    ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                    ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
                                    ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
                                    ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event;
                        
                END IF;              
                 RETURN RS;        
            END;
begin
  -- Test statements here
            
    l_cur := APPL_CUR ('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                     <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','Event');
  
   LOOP
    FETCH l_cur INTO v_rec ;
    EXIT WHEN l_cur%notfound;
   dbms_output.put_line(v_rec.reg_num||' '||v_rec.sub_reg_num);
   END LOOP;
  CLOSE l_cur;
    
end;


++++++++++++++++++++++++++++++sberbank_cust
select * from sberbank_cust.gate_log 

select * from sberbank_cust.response R

select * from sberbank_cust.tag_description

select * from sberbank_cust.contract_register

update sberbank_cust.contract_register set block_status='C'  where block_status='A'


GRANT EXECUTE  ON  sberbank_cust.sb_appl TO u05772;

SELECT 
cast (ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT') as varchar2(32)) CONTRACT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'IIN')      as varchar2(32)) IIN,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'PRIORITY') as varchar2(3)) PRIORITY,
cast (replace(ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT'),'.',',') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_CURR') as VARCHAR2(3)) BLOCK_CURR,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'COMMENT')    as VARCHAR2(255)) COMM,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_CODE')    as VARCHAR2(32)) EVENT_CODE  ,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_COMMENT')    as VARCHAR2(4000)) EVENT_COMMENT  , GL.*
FROM SBERBANK_CUST.GATE_LOG GL WHERE (GL.ID='' OR GL.GATE_LOG__OID='') AND GL.AMND_STATE='A'


  SELECT 
cast (ows.rpr.GET_TAG_VALUE(gl.data,'CONTRACT') as varchar2(32)) CONTRACT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'IIN')      as varchar2(32)) IIN,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'PRIORITY') as varchar2(3)) PRIORITY,
--cast (replace(ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT'),'.',',') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_AMNT') as number(28,10)) BLOCK_AMNT,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'BLOCK_CURR') as VARCHAR2(3)) BLOCK_CURR,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'COMMENT')    as VARCHAR2(255)) COMM,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_CODE')    as VARCHAR2(32)) EVENT_CODE  ,
cast (ows.rpr.GET_TAG_VALUE(gl.data,'EVENT_COMMENT')    as VARCHAR2(4000)) EVENT_COMMENT  , 
    gl.id
   ,gl.object_type 
   ,gl.REG_NUMB 
FROM SBERBANK_CUST.GATE_LOG GL WHERE (GL.ID=595 OR GL.GATE_LOG__OID=595) AND GL.AMND_STATE='A'


select '100,47' from dual

+++++++++++++++++++++++++++sberbank_cust
with demo4 as(
     select XMLType(
   '<master>
      <id>mater id</id>
      <details>
         <detail>
            <id>detail 1 id</id>
            <sub_details>
                <sub_detail>
                    <id>sub_detail 1.1 id</id>
                </sub_detail>
                <sub_detail>
                    <id>sub_detail 1.2 id</id>
               </sub_detail>
            </sub_details>
         </detail>
         <detail>
            <id>detail 2 id</id>
            <sub_details>
                <sub_detail>
                    <id>sub_detail 2.1 id</id>
                </sub_detail>
                <sub_detail>
                    <id>sub_detail 2.2 id</id>
                </sub_detail>
            </sub_details>
         </detail>
         <detail>
            <id>detail 3 id</id>
         </detail>
      </details>
   </master>'
            ) xml from dual)
   select extractValue(s.xml,'master/id') master_id
          ,extractValue(value(dtl),'detail/id') detail_id
          ,extractValue(value(subdtl),'sub_detail/id') sub_detail_id
   from demo4 s
        ,table(XMLSequence(s.xml.extract('master/details/detail'))) dtl
        ,table(XMLSequence(value(dtl).extract('detail/sub_details/sub_detail')))(+) subdtl;



with demo4 as(
     select XMLType(
   '<master>
      <id>mater id</id>
      <details>
         <detail>
            <id>detail 1 id</id>
            <sub_details>
                <sub_detail>
                    <id>sub_detail 1.1 id</id>
                </sub_detail>
                <sub_detail>
                    <id>sub_detail 1.2 id</id>
               </sub_detail>
            </sub_details>
         </detail>
         <detail>
            <id>detail 2 id</id>
            <sub_details>
                <sub_detail>
                    <id>sub_detail 2.1 id</id>
                </sub_detail>
                <sub_detail>
                    <id>sub_detail 2.2 id</id>
                </sub_detail>
            </sub_details>
         </detail>
         <detail>
            <id>detail 3 id</id>
         </detail>
      </details>
   </master>'
            ) xml from dual)
   select demo4.xml.XMLDATA
   from demo4 


++++++++++++++++++++++++++++++sberbank_cust
-- Created on 13.03.2017 by U05772 
declare 
  type ref_cursor is ref cursor;
  
  -- Local variables here
  l_cur  ref_cursor;
/*  l_reg  varchar2(32);
  l_sub  varchar2(32);*/
   sub_appl_curr ref_cursor;

       FUNCTION APPL_CUR (I_XML IN varchar2,I_OBJ IN VARCHAR2) RETURN ref_cursor IS 
            RS ref_cursor;
            BEGIN
               IF I_OBJ='PTP' THEN
                      OPEN RS FOR 
                                 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                  ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                  ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                                  ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                  ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                                  ,extractValue(value(par_appl),'Application/ActionType')      act_type
                                  ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                  ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                                  ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                  ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
                                  from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data;
                      
                 ELSIF   I_OBJ='Event' THEN   
                  OPEN RS  FOR
                             select  /*extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                        ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                         ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE*/
                                           extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                              ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
                                        /*        ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
                                                  ,extractValue(value(sub_appl),'Application/ActionType')      act_type
                                                     ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                                       ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                                        ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
                                                          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
                                                           ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                                             ,extractValue(value(appl_data),'Data/Comment') BlockDetails*/
                              from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                    ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                    ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                    ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
                                    ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
                                    ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event;
                        
                END IF;              
                 RETURN RS;        
            END;
begin
  -- Test statements here
            
    l_cur := APPL_CUR ('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                     <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','Event');
  
 FOR sub_rec IN sub_appl_curr
   LOOP  
   dbms_output.put_line(v_rec.reg_num||' '||v_rec.sub_reg_num);
   END LOOP;
    
end;

++++++++++++++++++++++++++++++++sberbank_cust
declare
str varchar2(1200);
begin
str :=ows.glob.SET_TAG_VALUE(sberbank_cust.test1.add_data,'ALMAS','ELESSAR'); -- sberbank_cust.sb_appl.XML_IMPORT('fucksyste');
 dbms_output.put_line(str);
end;




ows.glob.SET_TAG_VALUE(
select * from sberbank_cust.test1 

select ows.glob.SET_TAG_VALUE(null,'ALMAS',null)||
ows.glob.SET_TAG_VALUE(null,'ALIMKULOV','RAZER') from dual

declare
str varchar2(1200);
begin
str :=sberbank_cust.sb_appl.XML_IMPORT('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>');
 dbms_output.put_line(str);
end;

+++++++++++++++++++++++++++++++++++++++sberbank_cust
SBERBANK_CUST.Gate_Log_Sq

  
   LOOP
    FETCH l_cur INTO l_reg,l_sub ;
     EXIT WHEN l_cur%notfound;
    dbms_output.put_line(l_reg||' '||l_sub);
    
   END LOOP;
  CLOSE l_cur;


with t as (
    select 
        xmltype('<a><b c="2">1</b></a>') x,
        '/a/b' node,   --node where attribute located
        '@d' att,      --attribute name
        'new' val      --new value
    from dual
)
select 
    x,
    insertchildxml(deletexml(x,node||'/'||att), node, att, val) x_new
from t



select * from ows.doc

declare 
res varchar2(4000);
begin
 res := sb_appl.xml_import('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ60914CP39884549046</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>900429302017</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.489</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>PTP_BLK</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>');
end;


++++++++++++++++++++++++++++++++sberbank_cust

   select count(cl.id)  
         from ows.client cl 
              where cl.add_info_01=( select cl_add_info_01 
     from ows.APPL_ACNT
      where id=16984024)
              and cl.amnd_state='A'
              and cl.ccat=( select ccat
     from ows.APPL_ACNT
      where id=16984024) and rownum<10 
 

  select count(cl2.id) 
         from ows.client cl, ows.client cl2  
              where cl.id=7600287
              and (cl.add_info_01=cl2.add_info_01 or cl.add_info_01 is null)
              and cl.amnd_state='A'
              and cl2.amnd_state='A'
              and cl2.ccat=cl.ccat and rownum<10 
              
sberbank_cust.cust_appl_check1


HDBK_SQ



/*select * from SBERBANK_CUST.CONTRACT_REGISTER --ТАБЛИЦА ДЛЯ ВВЕДЕНИЯ ЖУРНАЛА ПО КОНТРАКТУ

select * from sberbank_cust.gate_log  -- ТАБЛИЦА ЛОГИРОВАНИЯ АППЛИКАЦИИ И СУБАППЛИКАЦИИ

SELECT * FROM   sberbank_cust.tag_description  -- ТАБЛИЦА ГЛОБАЛЬНОГО ПАРАМЕТРА  , ДЛЯ ПРОВЕРКИ ЗНАЧЕНИЕ ТЕГОВ

SELECT * FROM   sberbank_cust.response -- ТАБЛИЦА КОДОВ ОТВЕТОВ

SELECT LENGTH(100.00) FROM DUAL

 SBERBANK_CUST.Gate_Log_Sq.NEXTVAL

SELECT REGEXP_INSTR('13213S54', '\D') FROM DUAL

SELECT REGEXP_SUBSTR('Ы','[а-я]') FROM DUAL

select REGEXP_SUBSTR('3111111121','[0-9]{9}') from DUAL

SELECT check ('fsdfs' in (varchar2(10))) from dual 

sberbank_cust.status_delivery_tab

sberbank_cust.mobile_autotopup_tab

sberbank_cust.grantable_users_log_tab

select add_data from sberbank_cust.test1;
*/


+++++++++++++++++++++++++++sberbank_cust
select      d.id did
from
       ows.credit_history ch
     , ows.doc            d
where
       ch.credit_type in ('P'
                        , 'U'
                        , 'A'
                        , 'W'
                        , 'w'
                        , 'F'
                        , 'Z'
                        , 'T'
                        , 'X') -- тут используется только P и W ,а остальное на всяки случай
       and d.amnd_state='A'
       and ch.doc__id  =d.id
       and ch.amount   <0 -- все блоки которые создают положительный остаток на контракте
       and ch.credit_status in ('A'
                              , 'I')
       and ch.acnt_contract__oid in
       (
              select
                     ca.id
              from
                     ows.acnt_contract ac
                   , ows.acnt_contract ca
              where
                     ac.amnd_state         ='A'
                     and ca.amnd_state     ='A'
                     and ac.contract_number='KZ94914CP39888427949'
                     and
                     (
                            ca.acnt_contract__oid=ac.id
                            or ca.id             =ac.id
                     )
       )

++++++++++++++++++++++++++sberbank_cust
DECLARE
l_cur sys_refcursor;
l_num NUMBER;
  PROCEDURE GetCur(i in varchar2,c OUT sys_refcursor) IS
  BEGIN
    OPEN c FOR SELECT LEVEL lvl,sysdate da FROM dual CONNECT BY LEVEL <= i;
  END;
BEGIN
/*  GetCur(l_cur);
  LOOP
    FETCH l_cur INTO l_num;
    EXIT WHEN l_cur%notfound;
    dbms_output.put_line(l_num);
  END LOOP;
  CLOSE l_cur;*/
  
   FOR rec IN (select GetCur(15,l_cur) from dual)
    LOOP   
      dbms_output.put_line(rec.lvl||' '||rec.da);
    END LOOP;
END;
/


DECLARE
l_cur sys_refcursor;
l_num NUMBER;
l_date varchar2(4000);
  FUNCTION GetCur(i_num in number) RETURN sys_refcursor IS
  c sys_refcursor;
  BEGIN
    OPEN c FOR SELECT LEVEL lvl,to_char(sysdate) da FROM dual CONNECT BY LEVEL <=i_num;
    RETURN c;
  END;
BEGIN
  l_cur := GetCur(15);
 /* LOOP
    FETCH l_cur INTO l_num, l_date;
    EXIT WHEN l_cur%notfound;
    dbms_output.put_line(l_num||' '||l_date);
  END LOOP;
  CLOSE l_cur;*/
  
   FOR rec IN  GetCur(15)
    LOOP   
      dbms_output.put_line(rec.lvl||' '||rec.da);
    END LOOP;
END;
/
+++++++++++++++++++++++++sberbank_cust
declare
  xml  XMLType :=
    XMLType('<ROOT><OD_CM_ID>1</OD_CM_ID><OD_CM_ID>2</OD_CM_ID><OD_CM_ID>3</OD_CM_ID></ROOT>');
begin
  for i in (
    select rownum rw, extract(value(t), 'OD_CM_ID/text()').getNumberVal() id
    from table(XMLSequence(xml.extract('/ROOT/OD_CM_ID'))) t
  ) loop
    select updateXml(
               xml
             , '/ROOT/OD_CM_ID['||i.rw||']'
             , XMLType('<OD_CM_ID>'||to_char(i.id+100000)||'</OD_CM_ID><status></status>')
           )
    into xml
    from dual;
  end loop;
  dbms_output.put_line(xml.getStringVal());
end;
/



declare
str varchar2(1200);
begin
str :=ows.glob.SET_TAG_VALUE(sberbank_cust.gate_log.data ,'ORDER_PTP','800'); -- sberbank_cust.sb_appl.XML_IMPORT('fucksyste');
 dbms_output.put_line(str);
end;

ows.glob.set_

update 


select ows.glob.SET_TAG_VALUE(data ,'ORDER_PTP','800') from sberbank_cust.gate_log


++++++++++++++++++++++++sberbank_cust
DECLARE 
 V_DC VARCHAR2(5);         
CURSOR doc_CUR is ( select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.id did
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                                and d.trans_type in (700,33213,33214,39473,39476)
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
                  );        
BEGIN

delete from sberbank_cust.temp_contr tc where tc.job_num='J1' ;
commit;

    for REC in doc_CUR
     LOOP
       insert into sberbank_cust.temp_contr (contract_number, 
                                             amount,
                                             curr , 
                                             doc_id,
                                             job_num)
                                      values(rec.contract,
                                             replace(replace(to_char(trunc(rec.settl_amount/2,2),'9999999999.99'),' ','0'),'.',''),
                                             rec.settl_curr,
                                             rec.did,
                                             'J1') ;
       commit;                             
     END LOOP;
END;
++++++++++++++++++++++++++++sberbank_cust
DECLARE 
 V_DC VARCHAR2(5);         
CURSOR doc_CUR is ( select case when d.con_cat='A' then  d.contract
                                when d.con_cat='C' then (select ac.contract_number from ows.acnt_contract ac
                                                          where ac.amnd_state='A' and ac.id=d.cid) 
                                else d.contract  end contract                           
                         , d.settl_amount,d.settl_curr ,d.id
                        from (select case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)  then d.target_number
                                          when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null)  then d.source_number 
                                          when d.source_number =s.contract_number and d.target_number=s.contract_number then  d.target_number end contract,
                                     s.con_cat,s.cid,       
                                     case when d.target_number=s.contract_number and (d.source_number<>s.contract_number or d.source_number is null)   then 'T'
                                           when d.source_number =s.contract_number and (d.target_number<>s.contract_number or d.target_number is null) then 'S'
                                           when d.source_number =s.contract_number and d.target_number=s.contract_number then 'T'   end dir ,
                               nvl((select tt.dr_cr from ows.trans_type tt where tt.amnd_state='A' and tt.id=d.trans_type),0) dr_cr,             
                               d.source_acc_type,
                               d.target_acc_type,               
                               d.trans_type  ,
                               d.request_category Req_cat   ,
                               d.service_class,
                               d.settl_amount,
                               d.settl_curr  ,
                               d.id          
                                from ows.doc d,
                                      (select ca.contract_number ,CA.CON_CAT ,ca.acnt_contract__oid cid
                                        from sberbank_cust.Contract_Register cr, ows.acnt_contract ac , ows.acnt_contract ca
                                        where ac.amnd_state='A'
                                        and cr.amnd_state='A' 
                                        and cr.block_status='A'
                                        and cr.contract_number=ac.contract_number 
                                        and ca.amnd_state='A'
                                        and (ca.acnt_contract__oid=ac.id or ca.id=ac.id)) s
                                where
                                d.amnd_state='A'
                                and d.is_authorization='N'
                                and d.posting_status='W'
                                and (d.target_number=s.contract_number or d.source_number=s.contract_number) ) d 
                      where 
                     ((d.dir='T' and d.dr_cr=-1 and d.req_cat in ('R','J')) or
                      (d.dir='T' and d.dr_cr=1  and d.req_cat not in ('R','J')) or 
                      (d.dir='S' and d.dr_cr=1  and d.req_cat in ('R','J')) or
                      (d.dir='S' and d.dr_cr=-1 and d.req_cat not  in ('R','J')) or     
                      (d.dir='T' and d.dr_cr=0 and d.settl_amount>0  and d.target_acc_type='P') or
                      (d.dir='S' and d.dr_cr=0 and d.settl_amount<0  and d.source_acc_type='P')  
                      ) 
                  );        
BEGIN
  
 --TRUNCATE TABLE sberbank_cust.temp_contr;
 
SBERBANK_CUST.SB_APPL.TRUNC_TEMP_CONTR;

    for REC in doc_CUR
     LOOP
       insert into sberbank_cust.temp_contr (contract_number, 
                                             amount,
                                             curr )
                                      values(rec.contract,
                                             replace(replace(to_char(trunc(rec.settl_amount,2),'9999999999.99'),' ','0'),'.',''),
                                             rec.settl_curr                                                    
                                    ) ;
       commit;                             
     --  select replace(replace(to_char(trunc(9122233344.12,2),'9999999999.99'),' ','0'),'.','') from dual
     END LOOP;

END;

+++++++++++++++++++++++++++sberbank_cust
-- Created on 13.03.2017 by U05772 
declare 
  -- Local variables here
  type ref_cursor is ref cursor;
  l_cur  ref_cursor;
  l_reg  varchar2(32);
  l_sub  varchar2(32);

       FUNCTION APPL_CUR (I_XML IN varchar2,I_OBJ IN VARCHAR2) RETURN ref_cursor IS 
            RS ref_cursor;
            BEGIN
               IF I_OBJ='PTP' THEN
                      OPEN RS FOR 
                                 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                  ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                  ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                                  ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                  ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                                  ,extractValue(value(par_appl),'Application/ActionType')      act_type
                                  ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                  ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                                  ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                  ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
                                  from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data;
                      
                 ELSIF   I_OBJ='Event' THEN   
                  OPEN RS  FOR
                             select  /*extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                        ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                         ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE*/
                                           extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                              ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
                                        /*        ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
                                                  ,extractValue(value(sub_appl),'Application/ActionType')      act_type
                                                     ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                                       ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                                        ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
                                                          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
                                                           ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                                             ,extractValue(value(appl_data),'Data/Comment') BlockDetails*/
                              from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                    ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                    ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                    ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
                                    ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
                                    ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event;
                        
                END IF;              
                 RETURN RS;        
            END;
begin
  -- Test statements here
            
    l_cur := APPL_CUR ('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','Event');
  
   LOOP
    FETCH l_cur INTO l_reg,l_sub ;
     EXIT WHEN l_cur%notfound;
    dbms_output.put_line(l_reg||' '||l_sub);
    
   END LOOP;
  CLOSE l_cur;
    
end;

+++++++++++++++++++++++++++++++++sberbank_cust
Declare 
v_pr varchar2(400); 
begin
v_pr:=CUST_CLIENT_CHECK(7600327);
dbms_output.put_line(v_pr);
end;



Declare 
 v_appl_id number(18);
begin
insert into sberbank_cust.gate_log(id,                       amnd_date,amnd_state,object_type,action_type,reg_numb,   par_reg_numb,posting_status,outward_status,xml_inward,          xml_outward)
                            values(SBERBANK_CUST.Gate_Log_Sq.NEXTVAL,sysdate,  'A',       'ptp',      'A',       '159263487', null,        'W',           'W',   replace( '<?xml version="1.0" encoding="UTF-8"?>
    <UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>sd55465fsd5fv215dfd5fs</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ159CP7538524567519</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>900429302017</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>9</PRIORITY>
                <CommentLog>комент</CommentLog>
            </Data>
        </Application>
      </MsgData>
</UFXMsg>',' ',null),                null)                                                     
returning sberbank_cust.gate_log.id into v_appl_id ;
commit;
dbms_output.put_line(v_appl_id);
end;



select * from sberbank_cust.gate_log
+++++++++++++++++++++++++sberbank_cust
142.12
++++++++++++++++++++++++sberbank_cust
declare
c  utl_tcp.connection;    
begin 

   utl_tcp.close_all_connections;
    
    begin
    c := utl_tcp.open_connection('10.20.2.12', 21201);    
    exception
        when utl_tcp.network_error then 
        RAISE_APPLICATION_ERROR(-20011,sqlerrm||' connection error');  
    end;

    utl_tcp.close_connection(c);    
    
    end;


select * from sberbank_cust.t

+++++++++++++++++++++++++++++++++++++sberbank_cust

select count(cl2.id)  
from ows.client cl, ows.client cl2  
where cl.id=421832 
and cl.add_info_01=cl2.add_info_01
and cl.amnd_state='A'
and cl2.amnd_state='A'
and cl2.ccat=cl.ccat

select count(cl2.id)
from ows.client cl, ows.client cl2  
where cl.id=92132 
and cl.add_info_01=cl2.add_info_01
and cl.amnd_state='A'
and cl2.amnd_state='A'
and cl2.ccat=cl.ccat
and rownum<10

select *  from ows.client cl  
where cl.add_info_01='900429302017'

select /*+index(cl CLIENT_ITN)*/ cl.id  
from ows.client cl  
where cl.id=1103976 and cl.amnd_state='A'
and not exists (select * from ows.client cl2
            where cl2.amnd_state='A'
            and cl.add_info_01=cl2.add_info_01
            and cl.ccat=cl2.ccat
            and cl.clt=cl2.clt
            and cl2.id<>cl.id)

select * from ows.client cl where cl.itn is not null

select *  from ows.client cl  
where cl.id=1103976 and cl.amnd_state='A'
and  exists (select * from ows.client cl2
            where cl2.amnd_state='A'
            and cl.add_info_01=cl2.add_info_01
            and cl2.id<>cl.id)

+++++++++++++++++++++++++sberbank_cust
-- Created on 13.03.2017 by U05772 
declare 
  type ref_cursor is ref cursor;
  
  -- Local variables here
  l_cur  ref_cursor;
/*  l_reg  varchar2(32);
  l_sub  varchar2(32);*/
   sub_appl_curr ref_cursor;

       PROCEDURE APPL_CUR (I_XML IN varchar2,I_OBJ IN VARCHAR2,l_curr out ref_cursor)  IS 
            RS ref_cursor;
            BEGIN
               IF I_OBJ='PTP' THEN
                      OPEN RS FOR 
                                 select  extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                  ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                  ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE
                                  ,extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                  ,extractValue(value(par_appl),'Application/ObjectType')      obj_type
                                  ,extractValue(value(par_appl),'Application/ActionType')      act_type
                                  ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                  ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Amount') BlockAmount
                                  ,extractValue(value(appl_data),'Data/BlockAmount/Currency') BlockCurrency
                                  ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                  ,extractValue(value(appl_data),'Data/Comment') BlockDetails        
                                  from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data;
                      
                 ELSIF   I_OBJ='Event' THEN   
                  OPEN RS  FOR
                             select  /*extractValue(s.xml,'UFXMsg/MsgId')                      MsgId
                                        ,extractValue(s.xml,'UFXMsg/@direction')                 DIR
                                         ,extractValue(s.xml,'UFXMsg/@msg_type')                  MSG_TYPE*/
                                           extractValue(value(par_appl),'Application/RegNumber')    reg_num
                                              ,extractValue(value(sub_appl),'Application/RegNumber')   sub_reg_num
                                        /*        ,extractValue(value(sub_appl),'Application/ObjectType')      obj_type
                                                  ,extractValue(value(sub_appl),'Application/ActionType')      act_type
                                                     ,extractValue(value(contr),'ContractIDT/ContractNumber') contract
                                                       ,extractValue(value(contr),'ContractIDT/Client/ClientInfo/IIN') IIN
                                                        ,extractValue(value(sub_appl_event),'Data/QueEvent/ActionCode') EventCode
                                                          ,extractValue(value(sub_appl_event),'Data/QueEvent/Comment') EventComment
                                                           ,extractValue(value(appl_data),'Data/PRIORITY') Priority 
                                                             ,extractValue(value(appl_data),'Data/Comment') BlockDetails*/
                              from  (SELECT XMLType(I_XML) XML FROM DUAL) s
                                    ,table(XMLSequence(s.xml.extract('UFXMsg/MsgData/Application'))) par_appl
                                    ,table(XMLSequence(value(par_appl).extract('Application/ObjectFor/ContractIDT')))(+) contr
                                    ,table(XMLSequence(value(par_appl).extract('Application/Data')))(+) appl_data
                                    ,table(XMLSequence(value(par_appl).extract('Application/SubApplList/Application')))(+) sub_appl
                                    ,table(XMLSequence(value(sub_appl).extract('Application/Data')))(+) sub_appl_event;
                        
                END IF;              
                    
            END;
begin
  -- Test statements here
          APPL_CUR ('<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
    <MsgId>123456</MsgId>
    <Source app="SBGATE"/>
    <MsgData>
        <Application>
            <RegNumber>AA_XML_40_002</RegNumber>
            <ObjectType>PTP</ObjectType>
            <ActionType>Lock</ActionType>
            <ObjectFor>
                <ContractIDT>
                    <ContractNumber>KZ654654654646546</ContractNumber>
                    <Client>
                        <ClientInfo>
                            <IIN>800459584217</IIN>
                        </ClientInfo>
                    </Client>
                </ContractIDT>
            </ObjectFor>
            <Data>
                <BlockAmount>
                    <Amount>100.00</Amount>
                    <Currency>KZT</Currency>
                </BlockAmount>
                <QueEvent>
                    <ActionCode>EventCode1</ActionCode>
                    <Comment>ReasonDetails</Comment> 
                </QueEvent>
                <PRIORITY>10</PRIORITY>
                <Comment>PtpDetails</Comment>
            </Data>
            <SubApplList>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_001</RegNumber>
                    <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode1</ActionCode>
                        <Comment>ReasonDetails1</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
                <Application>
                    <RegNumber>APL_GC_004_17_00001_002</RegNumber>
                     <ObjectType>Event</ObjectType>
                    <ActionType>Add</ActionType>
                    <Data>
                      <QueEvent>
                        <ActionCode>EventCode2</ActionCode>
                        <Comment>ReasonDetails2</Comment> 
                      </QueEvent>
                    </Data>    
                </Application>
            </SubApplList>
        </Application>
      </MsgData>
</UFXMsg>','Event',l_cur);
  
  FOR sub_rec IN  l_cur
  

   LOOP  
   dbms_output.put_line(v_rec.reg_num||' '||v_rec.sub_reg_num);
   END LOOP;
    
end;







                 

declare
res  varchar2(4000);
begin
  res := sberbank_cust.sb_appl.xml_import('
<?xml version="1.0" encoding="UTF-8"?>
<UFXMsg direction="Rq" msg_type="Application" scheme="" version="2.0">
  <MsgId>9C329E60891840AB143242B9C876CD98T</MsgId>
  <Source app="SBGATE"/>
  <MsgData>
    <Application>
      <RegNumber>T46802837900565046790</RegNumber>
      <ObjectType>PTP</ObjectType>
      <ActionType>Lock</ActionType>
      <ObjectFor>
        <ContractIDT>
          <ContractNumber>KZ80914CP39872361800</ContractNumber>
          <Client>
            <ClientInfo>
              <IIN>860612401763</IIN>
            </ClientInfo>
          </Client>
        </ContractIDT>
      </ObjectFor>
      <Data>
        <BlockAmount>
          <Amount>0.00</Amount>
          <Currency>KZT</Currency>
        </BlockAmount>
        <PRIORITY>10</PRIORITY>
        <Comment>PtpDetails</Comment>
      </Data>
      <SubApplList>
        <Application>
          <RegNumber>T46802837900565046790_001</RegNumber>
          <ObjectType>Event</ObjectType>
          <ActionType>Add</ActionType>
          <Data>
            <QueEvent>
              <ActionCode>PTP_BLK</ActionCode>
              <Comment>ReasonDetails1</Comment>
            </QueEvent>
          </Data>
        </Application>
      </SubApplList>
    </Application>
  </MsgData>
</UFXMsg> 
');
end;
                                
+++++++++++++++++++++++++groovy  policy file файл политики+++в SOA+++++++++++++++++++++
def ufxMsg = rq.xml

if (ufxMsg.Source[0].@app != 'W4G') rq.decline()

switch (ufxMsg.@msg_type) 
{
  case 'Information':
    String objectType = ufxMsg.MsgData.Information.ObjectType.text()
    if (!['Application'].contains(objectType)) rq.decline()
    break
  
  case 'Application':
    String objectType = ufxMsg.MsgData.Application.ObjectType.text()
    String actionType = ufxMsg.MsgData.Application.ActionType.text()
    String actionCode = ufxMsg.MsgData.Application.Data.QueEvent.ActionCode.text()
        String statusCode = ufxMsg.MsgData.Application.Data.SetStatus.StatusCode.text()

    if (!['Client', 'Contract', 'Status', 'Event', 'Card', 'ClientAddress'].contains(objectType)) rq.decline()

        
        else if (objectType=='ClientAddress' && !['AddOrUpdate'].contains(actionType) )   { rq.decline() }
        
        else if (objectType=='Contract' && !['Add','Update'].contains(actionType) )     { rq.decline() }

        else if (objectType=='Event' && !['PTP_ACT','PTP_BLK'].contains(actionCode) )     { rq.decline() }
        
        else if (objectType=='Status' && !['43','44'].contains(statusCode) )          { rq.decline() }

    break

  case 'Doc':
    String msgCode = ufxMsg.MsgData.Doc.TransCode.TransType.MsgCode.text()
    String msgCode2 = ufxMsg.MsgData.Doc.TransType.TransCode.MsgCode.text()
    if (!msgCode.startsWith('02200P') && msgCode != '04200R' && msgCode2 != 'PAYCCD' && msgCode2 != 'VRPAYCCD' && msgCode2 != 'APAYCCD' && msgCode2 != 'ARPAYCCD' && msgCode2 != 'RPAYCCD' && msgCode2 != 'PAYPTP') rq.decline()
    break

  default:
      rq.decline(-99999, 'Unexpected message type')
}

+++++++++++++++++++++++++++++++++++++++++++++++++

with s as (SELECT tp.contract_number, tp.original_doc_id, count(*) FROM SBERBANK_CUST.TRANS_PTP TP WHERE tp.amnd_date>=to_date('29012018','ddmmyyyy') and tp.dr_cr='C'
          group by tp.original_doc_id,tp.contract_number
          having count(*)>1)
select  
ows.rpr.Stmt_Client_Name(ac.id) client_name,
ac.contract_number , ows.rpr.GET_TAG_VALUE(ua.event_details ,'DOC') ,count(*)
from ows.usage_action ua , ows.acnt_contract ac ,s  
where ows.rpr.GET_TAG_VALUE(ua.event_details ,'DOC')=s.original_doc_id
and ac.amnd_state='A'
and ac.contract_number=s.contract_number
and ua.acnt_contract__id=ac.id
and exists ( select 1 from ows.event_type et where et.amnd_state='A' and et.code='PTP_INS' and et.id=ua.event_type)
and ua.record_date>=to_date('29012018','ddmmyyyy')
group by ac.contract_number , ows.rpr.GET_TAG_VALUE(ua.event_details ,'DOC'),ac.id
having count(*)>1


+++++++++++++++++++++++++++++++++++++++++++++++++,
--create or replace procedure test_001 is
declare
type TTRec is record (TransCode varchar2(128), TransRevCode varchar2(128));
type TTTbl is table of TTRec index by varchar2(128);
tbl             TTTbl;
NewTransCode    varchar2(1024);
NewTransRevCode varchar2(1024);
Counter         number := 0;
Counter_Err     number := 0;
TmpHandle       number;
 
procedure log(msg varchar2, msg_type varchar2 default 'I') is
begin
  stnd.PROCESS_MESSAGE(msg_type, msg);
  --dbms_output.put_line(msg);
end;

procedure add_etalon(KeyVal varchar2, TCode varchar2, TRevCode varchar2) is
begin
  tbl(KeyVal).TransCode    := TCode;
  tbl(KeyVal).TransRevCode := TRevCode;
end;

procedure load_etalon is
begin
add_etalon('S2IIF090','S2IIF090','s2iif090');  --Iss Reimb Fee Detail Original Retail with CashBack Inc
/*  .................*/
add_etalon('S2III--4','S2III--4','s2iii--4');  --Iss Ichng Detail Secondary with Original Reversals with Adjustments Inc
end;

function get_standard_codes(trans_type_idt in varchar2, NewTransCode out varchar2, NewTransRevCode out varchar2) return number is
RetCode number;
begin
  RetCode         := 0; --ERR
  NewTransCode    := null;
  NewTransRevCode := null;

  if tbl.exists(trans_type_idt) then
     NewTransCode    := tbl(trans_type_idt).TransCode;
     NewTransRevCode := tbl(trans_type_idt).TransRevCode;
     RetCode := 1; --OK
  end if;    

  return RetCode;
end;

procedure update_trans_type(TransTypeId in number, NewTransCode in varchar2, NewTransRevCode in varchar2) is
  tt_row trans_type%rowtype;
  HistId number;
begin
  YTRANS_TYPE(TransTypeId, 'H',  HistId); --make history rec
  YGTRANS_TYPE(TransTypeId, tt_row);
  tt_row.trans_code    := NewTransCode;
  tt_row.reversal_code := NewTransRevCode;
  YTTRANS_TYPE('U', TransTypeId, tt_row);
end;

begin
  TmpHandle := stnd.PROCESS_START('Transaction Types duplicate conversion', '', stnd.Yes);
  log('> Begin TRANS_TYPE duplicate trans_code conversion');

  log('load etalon...');
  load_etalon;

  log('locate for duplicates...');
  for x in (
      select tc.* 
      from (
          select tt.id, tt.name, tt.trans_code, tt.reversal_code, tt.trans_type_idt
                 , count(tt.id) over (partition by tt.trans_code) code_count
          from trans_type tt
          where tt.amnd_state = 'A'
            and tt.service_class = 'T' --Transaction
          ) tc
      where tc.code_count > 1
      order by tc.code_count desc, tc.trans_code    
  ) loop
    if get_standard_codes(x.trans_type_idt, NewTransCode, NewTransRevCode) = 1 then
       update_trans_type(x.id, NewTransCode, NewTransRevCode);
       Log('Updating id=' || to_char(x.id) || ', name="' || x.name || '", trans_type_idt="' || x.trans_type_idt || '" ' ||
           '- OK (trans_code: "' || x.trans_code || '"->"' || NewTransCode || '", reversal_code: "' || x.reversal_code || '"->"' || NewTransRevCode || '")');
    else
       Counter_Err := Counter_Err + 1;
       Log('! Updating id=' || to_char(x.id) || ', name="' || x.name || '", trans_code="' || x.trans_code || 
           '" - error: no etalon found by "' || x.trans_type_idt || '"', 'E');
    end if;
    Counter := Counter + 1;
  end loop;
  
  --commit;
  
  log('< TRANS_TYPE conversion done, records processed ' || to_char(Counter) || ' (errors=' || to_char(Counter_Err) || ')');
  stnd.PROCESS_END;
end;
/
