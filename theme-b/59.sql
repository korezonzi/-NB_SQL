SELECT A.数量合計 AS 割引による販売数,
       TRUNC(A.割引料合計 / A.数量合計) AS 平均割引額
  FROM (SELECT SUM(数量) AS 数量合計,
               SUM(クーポン割引料) AS 割引料合計
          FROM 注文
         WHERE 商品コード = 'W0746'
		   AND クーポン割引料 IS NOT NULL) AS A
