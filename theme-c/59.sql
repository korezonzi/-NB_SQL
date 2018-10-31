-- select イベント番号,イベント名称
-- from イベント
-- where イベント番号 <=
-- (select イベント番号
-- from 経験イベント
-- where count(クリア区分) <= 5 and クリア区分 = '1'
-- having クリア区分
--  order by イベント番号
--  )

SELECT イベント番号, イベント名称
  FROM イベント
 WHERE イベント番号 <ALL (SELECT イベント番号
                         FROM 経験イベント
                        WHERE ルート番号 = 5)
