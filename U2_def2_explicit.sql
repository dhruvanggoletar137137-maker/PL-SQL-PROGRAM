
--using EXPLICIT cursor,increse salary of employee where department is 2

set serveroutput on
declare
	cursor s1 is select basicsalary from emp where deptno=2;
	sal emp.basicsalary%type;

begin
	open s1;
	
if s1%isopen then
loop
	fetch s1 into sal;
	exit when s1%notfound;
	update emp set basicsalary=basicsalary+(basicsalary*0.05)where deptno=2;

end loop;
dbms_output.put_line('salary:'||sal);
end if;
close s1;
end;
/