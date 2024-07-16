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


------------------------------------------------------------------


DECLARE
 i number :=0;
 j number :=0;


 begin 
 <<outer_loop>>
 LOOP
 i := i+1;
 exit outer_loop when i > 2;
 DBMS_OUTPUT.PUT_LINE('OUTER LOOP' || i);

j := 0;
<<inner_loop>>
LOOP
j := j+1;
exit inner_loop when j > 3;
 DBMS_OUTPUT.PUT_LINE('INNER LOOP' || j);

end loop inner_loop;
end loop outer_loop;
end;
/


--------------------------------------------------------



declare
counter number := 0;
begin
for counter in 1..5
loop 
DBMS_OUTPUT.PUT_LINE('VALUE OF COUNTER : '|| counter);
end loop;
end;



----------------------------------------------------------


declare
counter number :=0;
step PLS_INTEGER := 2;

BEGIN
for counter in 1..5 LOOP
DBMS_OUTPUT.PUT_LINE(counter * step);
end loop;
end;


-----------------------------------------------------------


declare
i pls_integer :=0;

begin
for i in 1..10
loop
if mod(i,2)=1 then
continue;
end if;
DBMS_OUTPUT.PUT_LINE(i);
end loop;
end;



-----------------------------------

