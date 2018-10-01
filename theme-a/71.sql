SELECT K.口座番号, K.名義, K.残高,
       T.日付, J.取引事由名, T.入金額, T.出金額
  FROM 口座 AS K
  JOIN 取引 AS T
    ON K.口座番号 = T.口座番号
  JOIN 取引事由 AS J
    ON T.取引事由ID = J.取引事由ID
 WHERE K.口座番号 = '0887132'
 ORDER BY T.取引番号
