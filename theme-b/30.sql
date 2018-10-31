-- select *
-- from 廃盤商品
-- where 廃盤日 >= '2011-12-01' and 廃盤日 < '2012-01-01'
-- order by 売上個数 DESC;
--
-- select *
-- from 廃盤商品
-- where 売上個数 >= 100
-- order by 売上個数 DESC

--6は6列目って意味
SELECT * FROM 廃番商品
 WHERE 廃番日 >= '2011-12-01'
   AND 廃番日 < '2012-01-01'
 UNION
SELECT * FROM 廃番商品
 WHERE 売上個数 > 100
 ORDER BY 6 DESC
