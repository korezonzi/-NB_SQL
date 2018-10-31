-- select 名称 as なまえ,hp as 現在のhp, round(hp/合計hp * 100,2) as パーティーでの割合
-- from パーティー
-- select sum(hp) as 合計hp from パーティー
-- group by hp
SELECT 名称 AS なまえ, HP AS 現在のHP,
       ROUND(CAST(HP AS NUMBER) / (SELECT SUM(HP) FROM パーティー) * 100, 1) AS パーティーでの割合
  FROM パーティー
 WHERE 職業コード = '01'
