-- select
-- case クリア区別 when 0 then count(0)
-- when 1 then count(1)
-- from 経験イベント
-- order by 2

SELECT クリア結果, COUNT(イベント番号) AS イベント数
  FROM 経験イベント
 WHERE クリア区分 ='1'
 GROUP BY クリア結果
 ORDER BY クリア結果
