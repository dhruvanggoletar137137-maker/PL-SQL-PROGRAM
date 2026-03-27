--employee backup insertion with user-defined exception

set serveroutput on

declare
  v_dept_no     employee.dept_no%type := &enter_dept_no;
  v_emp_id      employee.emp_id%type;
  v_emp_name    employee.emp_name%type;
  v_salary      employee.salary%type;

  cursor emp_cur is
  select emp_id, emp_name, salary from employee where dept_no = v_dept_no;

  no_dept_found exception;

begin
  if not emp_cur%isopen then
    open emp_cur;
  end if;

  if emp_cur%notfound then
    raise no_dept_found;
  end if;

  for rec in emp_cur loop
    insert into emp_backup(emp_id, emp_name, salary, dept_no)
    values (rec.emp_id, rec.emp_name, rec.salary, v_dept_no);

    dbms_output.put_line('inserted backup record for: ' || rec.emp_name);
  end loop;

  close emp_cur;

exception
  when no_dept_found then
    dbms_output.put_line('no employees found for department no: ' || v_dept_no);
  when others then
    dbms_output.put_line('unexpected error: ' || sqlerrm);

end;