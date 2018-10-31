select イベント番号 from イベント where タイプ = '2'
intersect
select イベント番号 from 経験イベント 
