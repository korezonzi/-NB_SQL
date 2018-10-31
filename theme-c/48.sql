select mp,
case  when sum(mp) < 500 then '敵は見とれている！'
when sum(mp) < 1000 and sum(mp) >= 500 then '敵は呆然としている'
when sum(mp) >= 1000 then '敵はひれ伏している'
end as mp別
from パーティー
group by mp
