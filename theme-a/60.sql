-- select 残高, (select sum(入金額) from 取引 where 口座番号 = '1115600' and 日付 = '2012-12-28') as 入合計, (select sum(出金額) from 取引 where 口座番号 = '1115600' and 取引日 = '2012-12-28') as 出合計
-- from 口座
-- where 口座番号 = '1115600'
--

SELECT 残高,
       (SELECT SUM(入金額)
          FROM 取引
		 WHERE 口座番号 = '1115600'
		   AND 日付     = '2012-12-28') AS 入金額合計,
       (SELECT SUM(出金額)
          FROM 取引
		 WHERE 口座番号 = '1115600'
		   AND 日付     = '2012-12-28') AS 出金額合計
  FROM 口座
 WHERE 口座番号 = '1115600'
