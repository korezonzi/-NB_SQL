-- 誤：SELECT * FROM 口座 order by 残高 desc,口座番号 asc
-- 列番号の表記の指定があったため
SELECT 口座番号,名義,種別,残高,更新日 FROM 口座 order by 4 desc,1
