SET SERVEROUTPUT ON
DECLARE
    xname employee.emp_name%TYPE;
BEGIN
    proemp(101, v_name);
    DBMS_OUTPUT.PUT_LINE('Employee Name: '||xname);
EXCEPTION
	WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/