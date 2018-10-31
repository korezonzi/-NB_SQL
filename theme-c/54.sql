-- update パーティー
-- set mp = mp + みんなのmp
-- (select sum(mp) * 0.1 as みんなのmp
-- from パーティー
-- where 職業コード != "20")

UPDATE パーティー
   SET MP = MP + (SELECT ROUND(SUM(MP * 0.1))
                    FROM パーティー
                   WHERE 職業コード <> '20')
 WHERE 職業コード = '20'
