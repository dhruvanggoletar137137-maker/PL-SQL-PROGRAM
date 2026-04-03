--Write a trigger to insert the existing values of the EMP table into NEWEMP table when the record is deleted from EMP table.

create or replace trigger trig_def5
before delete on emp
for each row
begin
insert into newemp values
(:old.eid,
:old.ename,
:old.deptno,
:old.deptname,
:old.gender,
:old.age,
:old.basicsal);
end;
/