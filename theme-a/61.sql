-- select 口座番号, 名義, 残高 from 口座
-- where 口座番号 = (select  Max(入金額) from 取引 where 入金額 >= 1000000 )

SELECT 口座番号, 名義, 残高
  FROM 口座
 WHERE 口座番号 IN (SELECT 口座番号
                      FROM 取引
					 WHERE 入金額 >= 1000000)
