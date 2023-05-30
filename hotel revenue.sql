with Hotels AS (
SELECT * FROM dbo.[2018]
union
select* from dbo.[2019]
union 
select * from dbo.[2020])

--SELECT hotel,arrival_date_year,round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) revenue
--from Hotels 
--group by arrival_date_year,hotel
----shows revenue is growing-----with type of hotels---
select * from Hotels
join dbo.market_segment$ on hotels.market_segment=market_segment$.market_segment
left join dbo.meal_cost$
on dbo.meal_cost$.meal = hotels.meal