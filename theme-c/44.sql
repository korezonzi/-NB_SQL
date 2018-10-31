-- select
-- case when 前提イベント番号 is null then '前提なし'
-- else 前提イベント番号 = 前提イベント番号
-- end as 前提イベント番号,
-- case when 後続イベント番号 is null then '後続なし'
-- else 後続イベント番号 = 後続イベント番号
-- end as 後続イベント番号,
-- イベント番号
-- from イベント
-- order by 1

SELECT COALESCE(CAST(前提イベント番号 AS VARCHAR), '前提なし') AS 前提イベント番号,
       イベント番号,
       COALESCE(CAST(後続イベント番号 AS VARCHAR), '後続なし') AS 後続イベント番号
  FROM イベント
 ORDER BY イベント番号
