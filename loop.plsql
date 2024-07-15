DECLARE
counter number:=10;

BEGIN
loop 
counter:=counter+1;
if counter > 25 THEN
exit;
end if;

DBMS_OUTPUT.PUT_LINE('VALUE OF COUNTER inside: '|| counter);
end loop;
DBMS_OUTPUT.PUT_LINE('VALUE OF COUNTER outside: '|| counter);
end;
/




