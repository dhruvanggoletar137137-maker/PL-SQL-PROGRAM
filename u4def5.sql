CREATE OR REPLACE FUNCTION funbal(xacno IN NUMBER)
RETURN NUMBER
IS
xbalance NUMBER;
BEGIN
SELECT balance INTO xbalance FROM account WHERE acno=xacno;
RETURN xbalance;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002,'Account not found with number '||xacno);
END;
/