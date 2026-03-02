set serveroutput on
declare
v_eid employee.eid%type:=&v_eid;
begin
	delete from employee
	where eid=v_eid;
	
	IF SQL%FOUND then
	dbms_output.put_line('record deleted successfully. Total rows affected:' || SQL%ROWCOUNT);

	else
	dbms_output.put_line('error: no employee found with id' || v_eid);
	
	end if;
	commit;
exception
	when others then
	dbms_output.put_line('An unexpected   error occurred:' || SQLERRM);
	ROLLBACK;

end;
/