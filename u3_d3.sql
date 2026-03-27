
--employee salary exception handling

set serveroutput on

declare
  v_emp_name   employee.emp_name%type := '&enter_employee_name';
  v_basic_sal  employee.basic_salary%type;

begin
  select basic_salary into v_basic_sal from employee where emp_name = v_emp_name;

  dbms_output.put_line('basic salary of ' || v_emp_name || ' is: ' || v_basic_sal);

exception
  when no_data_found then
    dbms_output.put_line('no record found for employee: ' || v_emp_name);
  when others then
    dbms_output.put_line('unexpected error: ' || sqlerrm);

end;
/