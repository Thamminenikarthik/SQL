# Find the second-highest salary without using MAX() twice

with HighestSal as (
select *,row_number() over(order by sal  desc) as SalRank from emp
)
select * from HighestSal where SalRank = 2;

