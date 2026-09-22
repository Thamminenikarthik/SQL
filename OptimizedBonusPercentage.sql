/*
1. Create function to return optimized bonus percentage
Logic:
Salary < 2000 → 20%
Salary 2000–5000 → 10%
Salary > 5000 → 5%
*/

delimiter $$
create function f1(salary int)
returns decimal
deterministic
begin
Declare result decimal default 0;

	if salary < 2000 then
		set result = salary + (20/100) * salary;
	elseif salary >=2000 and salary <= 5000 then
		set result  = salary + (10/100) * salary;
    else 
		set result = salary + (5/100) * salary;
        
	end if;
    
return result;

end
$$



select sal into @val from emp where empno = 7369;
select f1(@val);



