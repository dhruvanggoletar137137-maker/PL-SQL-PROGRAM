set serveroutput on
declare
n number;
begin
update emp
set basicsalary=basicsalary+(basicsalary*0.10) where deptno=3;
if sql%found then
dbms_output.put_line('row affected='||sql%rowcount);
else
dbms_output.put_line('row not affected='||sql%rowcount);
end if;
end;
/