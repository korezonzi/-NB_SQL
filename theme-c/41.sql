-- update パーティー
-- set round(hp*1.3,-1),round(mp*1.3,-1)

UPDATE パーティー
   SET HP = ROUND(HP * 1.3, 0),
       MP = ROUND(MP * 1.3, 0)
