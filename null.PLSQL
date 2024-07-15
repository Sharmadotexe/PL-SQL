DECLARE
credit_status VARCHAR2(50);

BEGIN
credit_status := 'Good';

case credit_status
when 'block' THEN
DBMS_OUTPUT.PUT_LINE('request_for_approval');

when 'warning' THEN
DBMS_OUTPUT.PUT_LINE('send_email_to_accountant');

ELSE
NULL;

end case;
end;

