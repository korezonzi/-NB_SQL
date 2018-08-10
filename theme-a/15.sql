-- 誤:SELECT * FROM 口座 WHERE 更新日 = null
-- nullはisで表記
SELECT * FROM 口座 WHERE 更新日 is null
