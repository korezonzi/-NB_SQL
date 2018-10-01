select k.口座番号, k.名義, k.残高,
       t.日付, t.取引事由id, t.入金額, t.出金額
  from 口座 as k
  join (select 口座番号, 日付, 取引事由id, 入金額, 出金額
          from 取引
		 where 入金額 >= 1000000
		    or 出金額 >= 1000000) as t
	on k.口座番号 = t.口座番号
 where k.残高 >= 5000000;
