-- select max(商品コード),sum(数量) as 販売数量
-- from 注文
-- where 商品コード all (select avg(sum(数量)) from 注文 )

SELECT 商品コード, SUM(数量) AS 数量
  FROM 注文
 GROUP BY 商品コード
HAVING SUM(数量) >ALL (SELECT AVG(数量)
                         FROM 注文
						GROUP BY 商品コード)
