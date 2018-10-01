---×

SELECT DISTINCT K1.名義, K1.口座番号,
       K1.種別, K1.残高, K1.更新日
  FROM 口座 AS K1
  JOIN 口座 AS K2
    ON K1.名義 = K2.名義
 WHERE K1.口座番号 <> K2.口座番号
 ORDER BY K1.名義, K1.口座番号;
