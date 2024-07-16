DECLARE
l_name customers.name%TYPE;
l_customer_id customers.customer_id%TYPE :=4567;

begin
select name into l_name from customers where customer_id = l_customer_id;
DBMS_OUTPUT.PUT_LINE('customer_name is : ' || l_name);
end;
/




DECLARE
l_name customers.name%TYPE;
l_customer_id customers.customer_id%TYPE :=4567;

begin
select name into l_name from customers where customer_id = l_customer_id;
DBMS_OUTPUT.PUT_LINE('customer_name is : ' || l_name);

EXCEPTION
when NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('customer not found');
end;
/






-- ACCESS_INTO_NULL	ORA-06530	assign values to the attributes of an uninitialized object.
-- CASE_NOT_FOUND	ORA-06592	None of the WHEN clauses of a CASE statement was selected, and there is no default ELSE clause.
-- COLLECTION_IS_NULL	ORA-06531	call an uninitialized collection
-- CURSOR_ALREADY_OPEN	ORA-06511	open an already open cursor.
-- DUP_VAL_ON_INDEX	ORA-00001	store duplicate values in a column with a unique index.
-- INVALID_CURSOR	ORA-01001	perform an illegal cursor operation, such as closing an unopened cursor.
-- INVALID_NUMBER	ORA-01722	convert a character string into a number failed
-- LOGIN_DENIED	ORA-01017	connect to a database using an invalid user name or password.
-- NO_DATA_FOUND	ORA-01403	A SELECT INTO statement returned no rows.
-- NOT_LOGGED_ON	ORA-01012	access a database item without being connected to the database.
-- PROGRAM_ERROR	ORA-06501	PL/SQL had an internal problem.
-- ROWTYPE_MISMATCH	ORA-06504	The cursor variable have incompatible return types.
-- SELF_IS_NULL	ORA-30625	call a MEMBER method on a null object.
-- STORAGE_ERROR	ORA-06500	The PL/SQL module ran out of memory.
-- SUBSCRIPT_BEYOND_COUNT	ORA-06533	reference a nested table or varray element using an out-of-bound index number.
-- SUBSCRIPT_OUTSIDE_LIMIT	ORA-06532	an index number outside the legal range.
-- SYS_INVALID_ROWID	ORA-01410	The conversion from a character string to a rowid failed.
-- TIMEOUT_ON_RESOURCE	ORA-00051	A timeout occurred.
-- TOO_MANY_ROWS	ORA-01422	A SELECT INTO statement returned more than one row.
-- VALUE_ERROR	ORA-06502	An arithmetic, conversion, truncation, or size-constraint error occurred.
-- ZERO_DIVIDE	ORA-01476	An attempt was made to divide a number by zero.