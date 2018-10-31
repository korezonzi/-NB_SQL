-- select E1.イベント番号,E1.イベント名称,E1.前提イベント番号,E2.イベント名称 as 前提イベント名称,E1.前提イベント番号,E3.イベント名称 as 後続イベント名称
-- from イベント E1
-- join (select イベント名称 from イベント where 前提イベント番号 is not null) E2
-- on E1.前提イベント番号 = E2.イベント番号
-- join (select イベント名称 from イベント where 後続イベント番号 is not null) E2
-- on E1.前提イベント番号 = E3.イベント番号

SELECT E1.イベント番号, E1.イベント名称,
       E1.前提イベント番号, E2.イベント名称 AS 前提イベント名称,
       E1.後続イベント番号, E3.イベント名称 AS 後続イベント名称
  FROM イベント E1
  LEFT JOIN イベント E2
         ON E1.前提イベント番号 = E2.イベント番号
  LEFT JOIN イベント E3
         ON E1.後続イベント番号 = E3.イベント番号
 WHERE E1.前提イベント番号 IS NOT NULL
    OR E1.後続イベント番号 IS NOT NULL
