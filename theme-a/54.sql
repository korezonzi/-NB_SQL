select 種別, sum(残高) as 合計, max(残高) as 最大値,min(残高) as 最小値,avg(残高) as 平均値,count(*)
from 口座
group by 種別
