-- select ルート番号,イベント番号,イベント名称,クリア結果
-- from 経験イベント
-- join イベント
-- on イベント.イベント番号 = 経験イベント.イベント番号
-- order by イベントイベント番号

SELECT E.ルート番号, E.イベント番号, M.イベント名称, E.クリア結果
  FROM 経験イベント E
  JOIN イベント M
    ON E.イベント番号 = M.イベント番号
 WHERE クリア区分 = '1'
 ORDER BY E.ルート番号
