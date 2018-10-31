-- select クリア結果,
-- (select イベント番号
--  from イベント
--  where タイプ = 1 or 3
-- )
-- from 経験イベント
-- where クリア区分 = '1'

SELECT イベント番号, クリア結果
  FROM 経験イベント
 WHERE クリア区分 = '1'
   AND イベント番号 IN (SELECT イベント番号
                       FROM イベント
                      WHERE タイプ IN ('1', '3'))
