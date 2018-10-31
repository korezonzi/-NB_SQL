select s1.商品コード, s1.商品名,
       s2.商品コード as 関連商品コード, s2.商品名 as 関連商品名
  from 商品 as s1
  join 商品 as s2
    on s1.商品コード = s2.関連商品コード
