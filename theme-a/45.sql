select 口座番号,残高,
--case　残高 when ～ってしがち
case when 残高 <500000 then round(残高*0.0001,0)
when 残高 >= 500000 and 残高 < 2000000 then round(残高*0.0002,0)
when 残高 >= 2000000 then round(残高*0.0003,0)
end as 残高別利息
from 口座
order by 残高別利息 DESC, 口座番号 ASC
