DECLARE
 l_customer_name customers.name%TYPE;
BEGIN
select name into l_customer_name from customers
where customer_id = 100;
DBMS_OUTPUT.PUT_LINE(l_customer_name);
end;



-------------

DECLARE

r_customer customers%ROWTYPE;

begin
select * into r_customer from customers  where customer_id = 100;
DBMS_OUTPUT.PUT_LINE(r_customer.name || 'website's name is || r_customer_website) ;
end;

--------------



DECLARE

customer_name customers.name%TYPE;
first_name contacts.name%TYPE;
last_name contacts.name%TYPE;

BEGIN
select name,first_name,last_name
into 
customer_name, first_name, last_name from customers
inner join contacts using (customerid)
where customer_id=100;
DBMS_OUTPUT.PUT_LINE(customer_name || ' ' || first_name || ' ' || last_name);
end;

