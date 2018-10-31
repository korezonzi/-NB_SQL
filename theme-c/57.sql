-- select イベント番号,イベント名称
-- from イベント
-- where イベント番号 =
-- (select cast(イベント番号 as number)
-- from 経験イベント
-- where クリア区分 ="0")
-- order by 1

SELECT イベント番号, イベント名称
  FROM イベント
 WHERE イベント番号 NOT IN (SELECT イベント番号
                           FROM 経験イベント)
 ORDER BY イベント番号
