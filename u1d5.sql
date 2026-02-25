--converts temperature from celsius to fahrenheit
set serveroutput on
declare
	cel number(7):=&cel;
	fah number(7);
begin
	fah:=(9/5)*cel + 32;
	dbms_output.put_line('fahrenheit='||fah);
end;
/