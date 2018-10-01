select 種別,sum(残高) as 合計,count(*)
from 口座
group by 種別
having sum(残高) > 3000000
