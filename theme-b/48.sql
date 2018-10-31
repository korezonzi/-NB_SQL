select 商品区分,min(単価),max(単価)
from 商品
group by 商品区分
order by 商品区分
