select 更新日,
coalesce(cast(更新日 as VARCHAR),'設定なし') as  更新日
from 口座
