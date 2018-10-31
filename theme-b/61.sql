select O.注文番号,O.注文枝番,O.商品コード,I.商品名,O.数量
from 注文 O
join 商品 I
on O.商品コード = I.商品コード
where 注文番号= '201301130115'
order by 注文番号,注文枝番
