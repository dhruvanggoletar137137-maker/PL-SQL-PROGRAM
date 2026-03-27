--zero divide exception

set serveroutput on

declare
xrlno number(3):=&xrlno;
v1 number(3);
v2 number(3);
d number;

begin
select val1,val2 INTO v1,v2 from temp where
rlno=xrlno;
d:=v1/v2;
dbms_output.put_line('ans='||d);

EXCEPTION
WHEN ZERO_DIVIDE THEN
dbms_output.put_line('NO 2 MUST NOT
BE ZERO’);

end;
/
/