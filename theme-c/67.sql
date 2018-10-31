select E.イベント番号,E.クリア区分,C.コード値 ||':'|| C.コード名称 as クリア結果
from 経験イベント E
join (select コード値,コード名称 from コード where コード種別 ='4') C
on E.クリア結果 = C.コード値
