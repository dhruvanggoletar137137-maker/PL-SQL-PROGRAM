CREATE OR REPLACE FUNCTION funsqu(num IN NUMBER)
RETURN NUMBER
IS
result NUMBER;
BEGIN
	result:=num*num;
  	RETURN result;
END;
/