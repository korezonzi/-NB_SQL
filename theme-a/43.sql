-- select 残高,length(残高) from 口座
-- where length(残高) >=4  like 000%

--CAST as ~:~にデータ型を変換
--型を意識
SELECT * FROM 口座
 WHERE LENGTH(CAST(残高 AS VARCHAR)) >= 4
   AND SUBSTRING(CAST(残高 AS VARCHAR), LENGTH(CAST(残高 AS VARCHAR))-2, 3) = '000'
