-- select 口座番号,残高,trunc(残高,-3) as 千円単位の残高 from 口座
-- where 残高 >= 1000000

select 口座番号,残高/1000 as 千円単位の残高 from 口座
where 残高 >= 1000000
