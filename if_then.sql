declare
 n_sales number := 5000000;

begin
if n_sales > 10000 theN

DBMS_OUTPUT.PUT_LINE('VALUE OF SALES REVENUE IS GREATER THAN 10000');

END IF;
END;
/


------------------------------------------------------------------------------------ 




DECLARE 
n_sales number := 300000;
n_commission number(10,2) := 0;

begin 
IF 
    n_Sales > 20000000
THEN 
n_commission:= n_Sales*0.1;
DBMS_OUTPUT.PUT_LINE('commission for sales more than desired goal: '|| n_commission);
ELSE
n_commission:= n_Sales*0.05;
DBMS_OUTPUT.PUT_LINE('commission for sales less than desired goal: '|| n_commission);
END IF;
END;
/


-----------------------------------------------------------------------------------------

DECLARE 
n_Sales number := 2010;
n_commission number(10,2) := 0;

begin 
IF 
    n_Sales > 2000
THEN 
n_commission:= n_Sales*0.1;
DBMS_OUTPUT.PUT_LINE('commission for sales more than desired goal: '|| n_commission);

ELSIF n_Sales <= 2000 and n_Sales >= 1000 THEN
n_commission:= n_Sales*0.05;
DBMS_OUTPUT.PUT_LINE('commission for sales btw than desired goal: '|| n_commission);


ELSE 
n_commission:= n_Sales*0.01;
DBMS_OUTPUT.PUT_LINE('commission for sales less than desired goal: '|| n_commission);


END IF;
END;
/


-----------------------------------------------------------------------------------------









