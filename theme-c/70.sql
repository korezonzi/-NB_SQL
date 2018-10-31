select E.イベント番号, E.イベント名称, M.前提イベント数
  from イベント E
  join (select 前提イベント番号,
               count(前提イベント番号) as 前提イベント数
          from イベント
         where 前提イベント番号 is not null
         group by 前提イベント番号) M
    on E.イベント番号 = M.前提イベント番号
 order by E.イベント番号
