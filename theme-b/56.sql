-- update 注文
-- set (select 注文日 = '2013-03-15',注文区分='201303150014',注文枝番 =1)
-- where 商品区分 ='2' and like '%ブーツ%' and like '%雨%' and like '%安心%'

UPDATE 注文
   SET 商品コード = (SELECT 商品コード
                     FROM 商品
		            WHERE 商品区分 = '2'
					  AND 商品名 LIKE '%ブーツ%'
					  AND 商品名 LIKE '%安心%'
				      AND 商品名 LIKE '%雨%')
 WHERE 注文日 = '2013-03-15'
   AND 注文番号 = '201303150014'
   AND 注文枝番 = 1
