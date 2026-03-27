--employee age-based salary exception handling

set serveroutput on

declare
  v_salary employee.salary%type;

begin
  select salary into v_salary from employee where age = 50;

  dbms_output.put_line('salary of employee aged 50 is: ' || v_salary);

exception
  when no_data_found then
    dbms_output.put_line('no employee found with age 50.');
  when others then
    dbms_output.put_line('unexpected error: ' || sqlerrm);

end;
/