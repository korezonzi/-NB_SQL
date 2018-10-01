-- select 口座番号,名義,残高,
-- length(trim(名義)) from 口座

--文字数だから数字から文字型にする必要あり
SELECT LENGTH(口座番号), LENGTH(REPLACE(名義, '　', '')), LENGTH(CAST(残高 AS VARCHAR))
  FROM 口座
