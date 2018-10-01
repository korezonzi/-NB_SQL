-- SELECT T.取引番号,J.取引事由ID  and ':' and  J.取引事由名 AS 取引事由,
--        T.日付,T.口座番号,T.入金額,T.出金額
--   FROM 取引 AS T
--  RIGHT JOIN 取引事由 AS J
--          ON T.取引事由ID = J.取引事由ID

SELECT T.取引番号,
       CAST(J.取引事由ID AS VARCHAR) || ':' || J.取引事由名 AS 取引事由,
       T.日付, T.口座番号, T.入金額, T.出金額
  FROM 取引 AS T
 RIGHT JOIN 取引事由 AS J
         ON T.取引事由ID = J.取引事由ID
