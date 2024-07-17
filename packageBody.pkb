create or REPLACE PACKAGE body order_mgmt
AS
function get_net_value(p_order_id number)
return NUMBER
IS
ln_net_value number 

 BEGIN
 sum(unit_price * quantity)
 INTO
 ln_net_value from order_items
 where order_id = p_order_id;
 return p_order_id;

 EXCEPTION

 when no_data_found then
 DBMS_OUTPUT.PUT_LINE(SQLERRM);
 end get_net_value;

 function get_net_value_by_customer(p_customer_id NUMBER, p_year number)
 return number
 is 
 ln_net_value NUMBER
 begin
 select SUM(unit_price * quantity) into ln_net_value from order_items 
 inner join orders using(order_id)
 where extract(year from order_date) = p_year and customer_id = p_customer_id and status = gc_shipped_status;
 return ln_net_value;

 EXCEPTION
 when no_data_found then
 DBMS_OUTPUT.PUT_LINE(SQLERRM);
 end get_net_value_by_customer;
 end order_mgmt;



 