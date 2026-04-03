--Write a trigger that restricts the entry of record in EMP table if salary is greater than Rs 50000

create or replace trigger trig_def2
before insert on emp
for each row
begin
if :NEW.basicsal > 50000 then
RAISE_APPLICATION_ERROR(-20201,' salary must be less than
50000');
end if;
end;
/