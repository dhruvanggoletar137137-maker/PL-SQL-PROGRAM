--
CREATE OR REPLACE PROCEDURE proemp(xempid IN  NUMBER,xename OUT VARCHAR2)
IS
BEGIN
    SELECT emp_name INTO xename FROM employee WHERE emp_id=xempid;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	RAISE_APPLICATION_ERROR(-20001,'Employee not found with ID '||xempid);
END proemp;
/