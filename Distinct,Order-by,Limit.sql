# Display employee name, job, and salary sorted by job ascending and salary descending.
select ename,job,sal
 from emp
 order by job asc , sal desc;

# Display employees sorted by hire date.
 # with hiredate asccending
 select ename from emp 
	order by hiredate asc;
    
# with hiredate descending
select ename from emp
	order by hiredate desc;

# Display top 5 highest-paid employees.
select * from emp 
	order by sal desc limit 5;
    
    
# Display first 4 employees sorted by employee name.
select * from emp 
	order by ename;
    
    
# Display top 3 employees with highest commission.
select ename,comm from emp 
	order by comm desc limit 0,3;
    
    
# Display 4th and 5th highest-paid employees.
select * from emp 
	order by sal desc limit 3,2;
    
    
# Display distinct manager IDs.
select  distinct mgr from emp;

# Display distinct manager IDs where mgr is not null.
select distinct mgr from emp where mgr is not null;


# Display distinct commission values.
select distinct comm from emp;

# Display distinct combinations of job and department number.
select distinct deptno,job from emp;

# Display 3rd highest-paid employee.
select * from emp 
	order by sal desc limit 2,1;
    
# Display first 4 employees sorted by employee name.
select * from emp 
	order by ename limit 4;

    