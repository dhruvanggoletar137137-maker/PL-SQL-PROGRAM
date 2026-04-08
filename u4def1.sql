--print msg
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE promsg
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello! This is a user-defined message.');
END;
/
