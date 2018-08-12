SELECT 更新日,残高 FROM 口座 where (更新日 is not  null and 残高 != 0) order by 残高 asc ,更新日 desc limit 10 offset 10 
