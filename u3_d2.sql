--student result exception handling

set serveroutput on

declare
  v_student_name result.student_name%type := '&enter_student_name';
  v_result       result.result%type;

begin
  select result into v_result from result where student_name = v_student_name;

  dbms_output.put_line('result of ' || v_student_name || ' is: ' || v_result);

exception
  when no_data_found then
    dbms_output.put_line('no record found for student: ' || v_student_name);
  when others then
    dbms_output.put_line('unexpected error: ' || sqlerrm);

end;
/