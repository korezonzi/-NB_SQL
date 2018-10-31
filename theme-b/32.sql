select 商品コード
from 商品
intersect
select 商品コード
from 注文
order by 1 DESC
