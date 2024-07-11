-- language: plsql




Declare
    Cursor emp_cursor is
      select employee_id, first_name, last_name
      from employees
      where salary > 5000;



 v_empid employees.employee_id%type;
 v_firstn employees.first_name%type;
 v_elastn employees.last_name%type;


Begin 
  open emp_cursor;
    Loop
    Fetch emp_cursor into v_empid, v_firstn, v_elastn;
    Exit when emp_cursor%NOTFOUND;



  Dbms_output.put_line('Employee id is: ' ||v_empid );
  Dbms_output.put_line('Employee first name is: ' || v_firstn );
  Dbms_output.put_line('Employee last name is: ' || v_elastn) ;


End loop;
close emp_cursor;
end;
/
