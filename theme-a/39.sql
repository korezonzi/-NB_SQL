--DISTINCT:重複行を削除

-- select 種別 as 種別コード,種別 as 種別名,
-- case 種別 when '1' then '普通'
-- when '2' then '別段'
-- when '3' then '預金'
-- end as 日本語名
-- from 口座

SELECT DISTINCT 種別 AS 種別コード,
       CASE 種別 WHEN '1' THEN '普通'
	             WHEN '2' THEN '当座'
				 WHEN '3' THEN '別段' END AS 種別名
  FROM 口座
