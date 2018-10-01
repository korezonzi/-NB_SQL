--×
-- select 口座番号,名義 from 口座
-- union
-- select 口座番号,名義 from 廃止口座
-- order by 名義 ASC

--as：項目増やす
SELECT 口座番号, 名義, '○' AS 口座区分
  FROM 口座
 UNION
SELECT 口座番号, 名義, '×' AS 口座区分
  FROM 廃止口座
