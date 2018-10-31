-- select 注文番号
-- from 注文
-- where substring(注文番号,9,4) >= 1000 and substring(注文番号,9,4) <= 2000
-- order by substring(注文番号,9,4)

SELECT SUBSTRING(注文番号, 9, 4) AS 注文番号
  FROM 注文
 WHERE SUBSTRING(注文番号, 9, 4) >= '1000'
   AND SUBSTRING(注文番号, 9, 4) <= '2000'
