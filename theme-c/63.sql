select E.イベント番号,E.イベント名称,M.クリア区分
from イベント E
join 経験イベント M
on E.イベント番号= M.イベント番号
where E.タイプ = '1'
