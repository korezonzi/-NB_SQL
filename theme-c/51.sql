-- select id,avg(hp) as HPの平均, avg(mp) as MPの平均
-- from パーティaー
-- group by substring(id,1,1)
-- having by avg(hp) >= 100

SELECT SUBSTRING(ID, 1, 1) AS IDによる分類,
       AVG(HP) AS HPの平均,
       AVG(MP) AS MPの平均
  FROM パーティー
 GROUP BY SUBSTRING(ID, 1, 1)
HAVING AVG(HP) > 100
