select *
from 商品
where 単価 >=3000 and 商品区分 = '1' or 単価 >= 10000 and 商品区分 = '3'
