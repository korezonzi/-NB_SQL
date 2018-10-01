select 口座番号,残高, round(残高*0.002,0 ) as 利息 from 口座
order by 残高 DESC
