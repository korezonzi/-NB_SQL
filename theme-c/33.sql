select 名称 as なまえ,hp as 現在のhp,hp + 50 as 装備後のhp
from パーティー
where 職業コード in('11' , '21' )
