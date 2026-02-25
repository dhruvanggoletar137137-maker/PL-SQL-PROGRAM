--program to calculate result
set serveroutput on

declare

xrlno NUMBER(10):=&xrlno;
xs1 NUMBER(10);
xs2 NUMBER(10);
xs3 NUMBER(10);
xs4 NUMBER(10);
xs5 NUMBER(10);
t number(10);
p number(10);

begin

select sub1,sub2,sub3,sub4,sub5 into xs1,xs2,xs3,xs4,xs5 from result1 where rollno=xrlno;

if(xs1 < 40) or (xs2 < 40) or (xs3 < 40) or (xs4 < 40) or (xs5 < 40 ) then 
update result1 set total=0,per=0,grade='F' where rollno=xrlno;
end if;

t:=xs1 + xs2 + xs3 + xs4 + xs5;
p:=t/5;
if p >= 40 and p < 50
then
update result1 set
total=t,per=p,grade='D' where rollno=xrlno;

elsif p >= 50 and p < 60
then
update result1 set
total=t,per=p,grade='C' where rollno=xrlno;

elsif p >= 60 and p < 70
then
update result1 set 
total=t,per=p,grade='B' where rollno=xrlno;

elsif p >= 70 and p < 100
then
update result1 set
total=t,per=p,grade='A' where rollno=xrlno;

else
update result1 set
total=0,per=0,grade='F' where rollno=xrlno;

end if;
end;
/