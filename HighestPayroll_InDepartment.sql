# Show the department with the highest payroll.

create view v1 as (
select deptno,max(sal) as maxSal from emp
group by deptno);

select deptno from v1 where maxSal = (select max(maxSal) from v1);
