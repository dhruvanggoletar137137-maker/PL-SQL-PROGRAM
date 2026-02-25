--accepts measurement in feet and display it in cm,inch and meter
set serveroutput on
declare
	feet number(7):=&feet;
	cm number(7);
	inch number(7);
	meter number(7);
begin
	cm:=feet*30.48;
	inch:=feet*12;
	meter:=feet*0.3048;
	dbms_output.put_line('centimeter='||cm);
	dbms_output.put_line('inch='||inch);
	dbms_output.put_line('meter='||meter);
end;
/