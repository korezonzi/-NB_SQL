-- select 商品コード,数量
-- from 注文
-- group by 商品コード
-- having by limit 10
-- order by 数量 DESC, 商品コード
--
SELECT 商品コード, SUM(数量) AS 数量合計
  FROM 注文
 GROUP BY 商品コード
 ORDER BY 数量合計 DESC, 商品コード
 LIMIT 10
