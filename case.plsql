-- language: plsql



DECLARE

rank varchar2(10);
Grade varchar2(2);

BEGIN

Grade := 'B';

CASE Grade 
when 'O'then
rank := 'Outstanding';

when 'A'then
rank := 'Excellent';

when 'B'then
rank := 'Very Good';

when 'C'then
rank := 'Good';

when 'D'then
rank := 'Fair';

when 'E'then
rank := 'Poor';

when 'F'then
rank := 'Fail';

else 
rank := 'Invalid';

end CASE;

DBMS_OUTPUT.PUT_LINE('Rank accourding to grade is: ' || rank);

END;
/








---------------------------------------------------------------







declare 
sales number;
commission number;

begin
sales := 500;

case
when sales > 1000 then
commission := sales*0.1;
DBMS_OUTPUT.PUT_LINE('COMMISSION FOR SALES IS: ' || commission);

when sales < 1000 and sales > 800 then
commission := sales*0.08;
DBMS_OUTPUT.PUT_LINE('COMMISSION FOR SALES IS: ' || commission);

when sales < 800 and sales > 600 then
commission := sales*0.06;
DBMS_OUTPUT.PUT_LINE('COMMISSION FOR SALES IS: ' || commission);

when sales < 600 and sales > 100 then
commission := sales*0.01;
DBMS_OUTPUT.PUT_LINE('COMMISSION FOR SALES IS: ' || commission);

else 
    commission :=0;
    DBMS_OUTPUT.PUT_LINE('COMMISSION FOR SALES IS: ' || commission);

END CASE;
END;
/