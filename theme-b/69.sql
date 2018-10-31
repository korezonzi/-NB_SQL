select s.商品コード, s.商品名, s.単価, coalesce(t.数量, 0) as 売上数量,
       s.単価 * coalesce(t.数量, 0) as 総売上金額
  from 商品 as s
  left join (select 商品コード, sum(数量) as 数量
               from 注文
              where 商品コード like 'b%'
		      group by 商品コード) as t
         on s.商品コード = t.商品コード
 where s.商品コード like 'b%'
 order by s.商品コード
