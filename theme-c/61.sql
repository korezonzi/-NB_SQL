/* イベント番号9の更新 */
UPDATE 経験イベント
   SET クリア区分 = '1',
       クリア結果 = 'B'
 WHERE イベント番号 = 9;
/* 後続イベントの登録 */
 INSERT INTO 経験イベント
      VALUES ((SELECT イベント番号 FROM イベント WHERE 前提イベント番号 = 9),
              '0', NULL,
              (SELECT MAX(ルート番号) + 1 FROM 経験イベント));
