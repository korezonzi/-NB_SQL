-- SELECT * FROM 口座 WHERE 更新日 like '%2013-01%'
-- なぜlikeではだめなのか(DATE型だからか)
SELECT * FROM 口座 WHERE 更新日 between '2013-01-01' and '2013-01-31'
