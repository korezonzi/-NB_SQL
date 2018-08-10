-- 誤:SELECT * FROM 口座 WHERE 口座番号 = '2000000' or (名義 like 'エ%' and 名義 like '%コ' and length(名義) < 3 )
-- 文字列の長さの指定は"_"でも指定可能
SELECT * FROM 口座
 WHERE 口座番号 LIKE '2______%'
   or 名義 LIKE 'エ__　%コ'
