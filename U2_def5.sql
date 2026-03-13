--use peramitarised cursor
set serveroutput on
declare
	
	gsal number;
	hra number;
	da number;
	medical number:=500;
	pf number;
	
	cursor p1 is select basicsalary,grosssal from emp where deptno=3;
begin
	
	for i in p1
	loop
	
	hra :=i.basicsalary*0.15;
	da :=i.basicsalary*0.50;
	pf :=i.basicsalary*0.10;
	gsal:=(i.basicsalary+hra+da+medical)-pf;
	update emp set grosssal=gsal where deptno=3;
	dbms_output.put_line('Salary:'||i.basicsalary);
	dbms_output.put_line('Gross salary:'||gsal);
	end loop;
end;
/