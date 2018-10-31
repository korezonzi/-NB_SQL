-- select イベント番号,イベント名称,前提イベント番号,
-- (select イベント名称 from イベント as 前提イベント名称)
-- from イベント
-- where 前提イベント番号 is not null

SELECT E1.イベント番号, E1.イベント名称,
       E1.前提イベント番号, E2.イベント名称 AS 前提イベント名称
  FROM イベント E1
  JOIN イベント E2
    ON E1.前提イベント番号 = E2.イベント番号
 WHERE E1.前提イベント番号 IS NOT NULL
