-- select 更新日, sum(残高) as 合計 ,min(残高) as 最小, avg(残高) as 平均,count(残高),coalesce(更新日,'XXXX年') as 更新日
-- from 口座
-- group by trunc(更新日,4)

--グルーピング：列名は全く同じものを
SELECT SUBSTRING(COALESCE(CAST(更新日 AS VARCHAR), 'XXXX'), 1, 4) AS 更新年,
       SUM(残高) AS 合計, MAX(残高) AS 最大, MIN(残高) AS 最小,
       AVG(残高) AS 平均, COUNT(*) AS 件数
  FROM 口座
 GROUP BY SUBSTRING(COALESCE(CAST(更新日 AS VARCHAR), 'XXXX'), 1, 4)
