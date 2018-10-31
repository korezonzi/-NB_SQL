SELECT M.イベント番号, M.イベント名称, COALESCE(E.クリア結果, '未クリア') AS クリア結果
  FROM イベント M
  LEFT JOIN 経験イベント E
         ON M.イベント番号 = E.イベント番号
 WHERE タイプ ='1'
