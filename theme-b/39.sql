-- select 商品コード,商品名,単価,
-- case when 単価 < 3000 then 'S'
-- when 単価 >=  3000 and 単価 < 10000 then 'M'
-- when 単価 >= 10000 then 'L'
-- end as 販売価格ランク,
-- 商品コード || ':' || 商品名 as 商品区分
-- from 商品
-- order by 単価 , 商品コード

SELECT 商品コード, 商品名, 単価,
       CASE WHEN 単価 < 3000 THEN 'S'
	        WHEN 単価 >= 3000 AND 単価 < 10000 THEN 'M'
			ELSE 'L' END AS 販売価格ランク,
       商品区分 || ':' ||
       CASE 商品区分 WHEN '1' THEN '衣類'
	                 WHEN '2' THEN '靴'
					 WHEN '3' THEN '雑貨'
					 WHEN '9' THEN '未分類' END AS 商品区分
  FROM 商品
 ORDER BY 単価, 商品コード
