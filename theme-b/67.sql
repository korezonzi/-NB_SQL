select O.注文日,
coalesce(I.商品コード ||':'||I.商品名,O.商品コード)
coalesce(O.数量,0) as 数量
from 注文 as O
join 商品 as I
on O.商品コード = I.商品コード
where I.商品区分 = '3'
