--×

 t.口座番号,
       coalesce(k.名義, '解約済み') as 名義,
       coalesce(k.残高, 0) as 残高
  from 取引 as t
  left join 口座 as k
         on t.口座番号 = k.口座番号
 where t.日付 = '2011-03-01'
