SET SERVEROUTPUT ON;

DECLARE
	ans NUMBER;
BEGIN
	ans:=funsqu(5);
	DBMS_OUTPUT.PUT_LINE('Square is: '||ans);
END;
/