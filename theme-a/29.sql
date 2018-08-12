-- order by 1の方がすっきりする
SELECT 口座番号 FROM 口座 union select 口座番号 from 廃止口座
order by 口座番号
