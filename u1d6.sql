--all loops

set serveroutput on

declare
i number:=1;
n number:=&n;
x number:=1;

begin

dbms_output.put_line('--------------------print n no with while loop----------------------');

while i <= n
loop
dbms_output.put_line(i);
i:=i + 1;
end loop;

dbms_output.put_line('---------------------print n no with for loop------------------------');

for i in 1..n
loop
dbms_output.put_line(i);
end loop;

dbms_output.put_line('---------------------print n no with simple loop---------------------');

loop
exit when x>n;
dbms_output.put_line(x);
x:= x+1;
end loop;

end;
/