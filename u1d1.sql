--calculate simple intrest
set serveroutput on
declare
	p number(6):=&p;
	r number(6):=&r;
	n number(6):=&n;
	si number(7);
begin
	si:=p*r*n/100;
	dbms_output.put_line('simple intrest='||si);
end;
/