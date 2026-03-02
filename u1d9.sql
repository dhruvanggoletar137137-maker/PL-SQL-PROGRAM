
--display male employee from HR department
set serveroutput on
declare

begin 
	for i IN(select eid,ename from employee where deptname='HR' and gender='male')
	loop
	dbms_output.put_line('id:'|| i.eid);
	dbms_output.put_line('name:'|| i.ename);
end loop;
end;
/