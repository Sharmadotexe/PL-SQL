declare
    counter number :=0;
BEGIN
    while counter <=5
LOOP
DBMS_OUTPUT.PUT_LINE('counter' || counter);
counter := counter + 1;
end loop;
end;



-------------------------------------------



declare 
counter number := 1;
begin 
while 
