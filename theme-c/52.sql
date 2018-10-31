select hp,
case when hp < 100 then '1枚'
when hp <150 and hp >= 100 then '2枚'
when hp < 200 and hp >= 150 then '3枚'
when hp >= 200 then '５枚'
end as 扉の数
from パーティー
group by hp
order by 2
