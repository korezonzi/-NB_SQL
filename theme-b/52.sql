select count(クーポン割引料 is not null) as 適用件数,sum(クーポン割引料) as 割引総額
from 注文
