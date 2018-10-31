SELECT COUNT(*) AS 未着手イベントの数
  FROM (SELECT イベント番号
          FROM イベント
        EXCEPT
        SELECT イベント番号
          FROM 経験イベント)
