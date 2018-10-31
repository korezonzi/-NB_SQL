select 商品コード,商品名,単価,
(select sum(数量) from 注文) as 総数量
from 商品
where 商品コード = 'S0604'
