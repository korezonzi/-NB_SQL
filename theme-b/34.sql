select 商品コード,単価,trunc(単価 * 0.95 ,0) as キャンペーン価格
from 商品
order by 1
