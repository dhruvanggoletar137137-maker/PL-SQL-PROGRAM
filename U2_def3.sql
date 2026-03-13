--wap to use rowcount to display the name,deptno,and basic salary of first 5 employees getting the highest basic salary with explicit cursor.

declare
	cursor e1 is select ename,deptno,basicsalary from emp order by basicsalary desc;
	
	enm emp.ename%type;
	dtn emp.deptno%type;
	sal emp.basicsalary%type;
begin
	open e1;
	dbms_output.put_line('First 5 Highest Paid Employees are:');
	dbms_output.put_line('------------------------------------');
loop
	fetch e1 into enm,dtn,sal;
	exit when e1%notfound or e1%rowcount>5;
	dbms_output.put_line('Rank'||e1%rowcount||':'||enm||'|Dept:'||dtn ||'|Salary:'||sal);
end loop;
end;
/
