#Create procedure to generate department-wise payroll reports
# emp count, dept payroll , dept avg sal, share percentage of department from entire sal


delimiter $$
drop procedure if exists p1;
create procedure p1()
begin
create view result1 as(
select deptno,count(empno) as empcount,sum(sal) as deptPayRoll , avg(sal) as deptAvgSal from emp group by deptno
);

create view percentage as(

select deptno,result1.deptPayRoll/(select sum(sal) from emp) * 100 as  deptSharePercentage from result1
);
select * from result1 right outer join percentage on result1.deptno = percentage.deptno;


drop view result1;
drop view percentage;
end
$$

call p1();
