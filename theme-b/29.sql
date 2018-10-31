-- select *
-- from 商品
-- order 単価
-- limit 15 offset 5

SELECT * FROM 商品
 ORDER BY 単価, 商品区分, 商品コード
 LIMIT 15 OFFSET 5
