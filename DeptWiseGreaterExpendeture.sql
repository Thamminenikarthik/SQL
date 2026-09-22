# Show departments where total salary expenditure is greater than 10000.

create view V1 as(
select deptno,sum(sal)  as TotalSal from emp
group by deptno 
);

select V1.deptno,TotalSal,dname,loc from V1 join dept as D
 on V1.deptno = D.deptno
where V1.TotalSal > 10000;



