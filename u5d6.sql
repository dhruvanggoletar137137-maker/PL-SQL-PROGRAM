--trigger to print message statement level trigger

CREATE OR REPLACE TRIGGER tmessage
AFTER INSERT or update or delete ON stud
BEGIN
if inserting then
DBMS_OUTPUT.PUT_LINE('inserted');
elsif Updating then
DBMS_OUTPUT.PUT_LINE('updated');
elsif Deleting then
DBMS_OUTPUT.PUT_LINE('removed');
end if;
END;
/