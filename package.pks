create or replace package order_mgmt
AS
gc_shipped_status constant varchar(10) := 'Shipped';
gc_pending_status constant varchar(10) := 'Pending';
gc_cancelled_status constant varchar(10) := 'Cancelled';

cursor g_cur_order(p_order_in number)
IS
select customer_id, status, salesman_id, order_date, item_id, product_name, quantity, unit_price from order_items
inner JOIN orders using(order_id)
inner JOIN products using(product_id) where order_id= p_order_in;

function get_net_value(p_order_in number) return number;


function get_net_value_by_customer(p_order_in number, p_year number) return number;

end order_mgmt;






create PACKAGE test_package AS
gc_status constant VARCHAR(10) := 'Active';
end;
/



BEGIN
DBMS_OUTPUT.PUT_LINE(test.package.gc_status);
end;



BEGIN
DBMS_OUTPUT.PUT_LINE(order_mgmt.gc_status);
end;






