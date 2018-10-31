select 商品コード,商品名,単価
from 商品
where 商品区分 = '9' and (単価 >= 10000 or 単価 <= 1000)
order by 3 DESC ,1
