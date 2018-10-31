-- select 商品コード
-- from 注文
-- where 商品コード like '%Z'
-- group by 商品コード
-- having sum(数量) >= 100

SELECT 商品コード
  FROM 注文
 WHERE 商品コード LIKE 'Z%'
 GROUP BY 商品コード
 HAVING SUM(数量) >= 100
