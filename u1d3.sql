--calculate discount in rupee
set serveroutput on
declare
	pname char(30):='&pname';
	qty number(10):=&qty;
	price number(10,2):=20;
	per number(5):=20;
	disc number(8);
begin
	disc:=qty*price*per/100;
	dbms_output.put_line('discout of the product is'||disc);
end;
/