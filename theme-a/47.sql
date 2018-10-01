-- select 更新日 from 口座
-- where 更新日 >= '2013-01-01'

SELECT 口座番号, 名義, 種別, 残高,
       SUBSTRING(CAST(更新日 AS VARCHAR), 1, 4) || '年' ||
	   SUBSTRING(CAST(更新日 AS VARCHAR), 6, 2) || '月' ||
	   SUBSTRING(CAST(更新日 AS VARCHAR), 9, 2) || '日' AS 更新日
  FROM 口座
 WHERE 更新日 >= '2013-01-01'
