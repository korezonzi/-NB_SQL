select max(hp),min(hp),avg(hp),max(mp),min(mp),avg(mp)
from パーティー
group by substring(職業コード,1,1)
