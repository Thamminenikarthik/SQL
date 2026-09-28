# Generate a department-wise employee count report.

select deptno,count(empno) as "Employee count"from emp
group by deptno;