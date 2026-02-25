-- calculate the number of cube and square
set serveroutput on
declare
	n1 number(6):=&n1;
	squ number(7);
	cu number(7);
begin
	squ:=n1*n1;
	cu:=n1*n1*n1;
	dbms_output.put_line('square of number'||squ);
	dbms_output.put_line('cube of number'||cu);
end;
/