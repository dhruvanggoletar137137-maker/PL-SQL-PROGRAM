--increase basic salary
CREATE OR REPLACE PROCEDURE prosal(p_deptno IN NUMBER,p_percent IN NUMBER)
IS
BEGIN
UPDATE employee SET basic_salary=basic_salary+(basic_salary*p_percent)WHERE deptno=p_deptno;

DBMS_OUTPUT.PUT_LINE('Salary updated successfully for Department'|| p_deptno);
END;
/