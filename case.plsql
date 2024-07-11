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