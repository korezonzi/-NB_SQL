-- --select 口座番号, 名義,残高
-- form 口座
-- join 口座
-- on
-- where 日付 = '2011-03-01'

select t.口座番号, k.名義, k.残高
from 取引 as t
  join 口座 as k
    on t.口座番号 = k.口座番号
 where t.日付 = '2011-03-01'
