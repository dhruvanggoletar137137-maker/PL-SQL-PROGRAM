--perform program using implicit cursor,isopen,notfound to increse salary of employees whose department number is 2

set serveroutput on
declare
	
begin
	update emp set basicsalary=basicsalary+(basicsalary*0.05) where deptno=2;
	if SQl%isopen then
	loop
	
	dbms_output.put_line('Records updated:'||SQL%rowcount);
	exit when SQL%notfound;
	end loop;
	end if;
	
end;
/