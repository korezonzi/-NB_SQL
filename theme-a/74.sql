select k.口座番号, t.回数, k.名義
  from 口座 as k
  join (select 口座番号, count(*) as 回数
          from 取引
         group by 口座番号, 日付
        having count(*) >= 3) as t
	on k.口座番号 = t.口座番号
