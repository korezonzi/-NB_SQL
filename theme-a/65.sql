---×

SELECT T.口座番号, T.日付, J.取引事由名,
       COALESCE(T.入金額, T.出金額) AS 取引金額
  FROM 取引 AS T
  JOIN 取引事由 AS J
    ON T.取引事由ID = J.取引事由ID
 WHERE T.口座番号 IN ('0311240', '1234161', '2750902')
 ORDER BY T.口座番号, T.取引番号
