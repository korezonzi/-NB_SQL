select t.注文日, t.注文番号, t.注文枝番, t.数量,
       h.単価 * t.数量 as 注文金額
  from 注文 as t
  join 廃番商品 as h
    on t.商品コード = h.商品コード
 where t.商品コード = 'a0009'
   and t.注文日 > h.廃番日
