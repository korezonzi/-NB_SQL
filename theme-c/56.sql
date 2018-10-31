-- select 名称,mp
-- from パーティー
-- where 名称=
-- (select 名称
--  from パーティー
--  where  max(mp)
--  group by mp
-- )

SELECT 名称, MP
  FROM パーティー
 WHERE MP = (SELECT MAX(MP)
               FROM パーティー)
