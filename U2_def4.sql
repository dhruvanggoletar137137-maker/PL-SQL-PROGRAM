--cursor for loop
set serveroutput on
declare
	cursor i1 is select ename,basicsalary from (select ename,basicsalary from emp order by basicsalary desc)where rownum<=3;
begin
	for i in i1
	loop
	dbms_output.put_line('name:'||i.ename||'salary:'||i.basicsalary);
	end loop;
end;
/