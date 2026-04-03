--Write a trigger to restrict user form accessing the table on weekends.

create or replace trigger trig_def1
before INSERT or update or delete
on emp
FOR EACH ROW
begin
if trim(To_char(sysdate,'Day'))='Sunday' then
RAISE_APPLICATION_ERROR(-20202,'You cant access table on
weekend');
end if;
end;
/