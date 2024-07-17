-- language: plsql


CREATE OR REPLACE PROCEDURE greet_person (
    p_name IN VARCHAR2
)
IS
BEGIN
    IF p_name IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error: Name cannot be null.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Hello, ' || p_name || '! Welcome to PL/SQL!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/








create or replace PROCEDURE print_contact(
    in_customer_id number
)
is 
r_contact contacts%ROWTYPE%

BEGIN
SELECT * INTO r_contact from contacts where customer_id = in_customer_id

DBMS_OUTPUT.PUT_LINE(r_contact.first_name || ' ' || r_conatct.last_name || '<'  || r_contact.email || '>');

EXCEPTION
when others then
DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;


--execute PROCEDURE
exec print_contact(100);


-- drop PROCEDURE

drop procedure print_contact;