-- select 商品コード,商品区分
-- from 商品
-- where 商品区分 = '2' and '3' and '9'

SELECT 商品コード, 商品区分
  FROM 商品
 WHERE 商品区分 IN ('2', '3', '9')
