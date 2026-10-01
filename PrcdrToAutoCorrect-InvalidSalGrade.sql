# 1. Create procedure to auto-correct invalid salary gradesresult


delimiter $$
create procedure result()
begin
-- using cursor
declare Vempno int default 0;
declare sal int default 0;
declare orgGrade,actualGrade int default 0;
declare finished boolean default false;
declare Salclm cursor for select * from Myview;
declare continue handler for not found 
set finished = true;

drop view if exists Myview;
 create view Myview as(
 select E2.empno,E2.sal,E2.grade as orgGrade,Sg.grade
 as actualGrade from emp2 as E2 inner join salgrade as Sg on E2.sal between Sg.losal and Sg.hisal
);

-- open cursor
open Salclm;
-- fetch cursor
label : loop
fetch Salclm into Vempno,sal,orgGrade,actualGrade;
	if finished = true then
		leave label;
	end if;
    
   if orgGrade != actualGrade then
		update emp2
		set grade = actualGrade where empno = Vempno;
   end if;
end loop;
end
$$

-- before update
select * from emp2;
call result();
-- after update
select * from emp2;


