select t.商品コード, coalesce(s.商品名, '廃番') as 商品名
  from 注文 as t
  left join 商品 as s
         on t.商品コード = s.商品コード
 where t.注文日 >= '2011-08-01'
   and t.注文日 < '2011-09-01'
