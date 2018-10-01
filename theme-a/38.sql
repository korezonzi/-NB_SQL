-- select 口座番号, 名義+'カ)' from 口座
-- where 種別= 2

select 口座番号,'カ)'||名義 as 名義 from 口座
where 種別= '3'
