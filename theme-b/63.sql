select s.商品コード, s.商品名, s.単価,
       t.注文日, t.注文番号, t.数量,
	   s.単価 * t.数量 as 売上金額
  from 商品 as s
  join 注文 as t
    on s.商品コード = t.商品コード
 where s.商品コード = 's0604'
 order by t.注文番号
