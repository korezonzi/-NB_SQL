-- select  P.id,P.名称 as なまえ,P.職業コード as 職業
-- from パーティー P
-- --

SELECT P.ID,
       COALESCE(P.名称, '仲間になっていない！') AS なまえ,
       S.コード名称 AS 職業
  FROM パーティー P
 RIGHT JOIN (SELECT コード値, コード名称
               FROM コード
              WHERE コード種別 ='1') S
         ON P.職業コード = S.コード値
