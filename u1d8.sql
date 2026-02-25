.--gross salary calculation
set serveroutput on

declare
	xeid number(10):=&xeid;
	basic number(10);
	da number(10);
	hra number(10);
	medical number(10):=500;
	pf number(10);
	gross_salary number(10);
begin
	select basicsalary into basic from employee where eid=xeid;
	da:=basic * 0.50;
	hra:=basic*0.15;
	pf:=basic*0.15;
	gross_salary:=(basic + da + hra + medical)-pf;
	update employee set grosssalary=gross_salary where eid=xeid;
	commit;
end;
/