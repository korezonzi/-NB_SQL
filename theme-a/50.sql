select count(*) as データ件数
from 口座
where 種別 != '1' and 残高 >= 1000000 and 更新日 <= '2012-12-31'
