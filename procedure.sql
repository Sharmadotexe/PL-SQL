CREATE OR REPLACE PROCEDURE greet_person (
    p_name IN VARCHAR2
)
IS
BEGIN
    IF p_name IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error: Name cannot be null.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Hello, ' || p_name || '! Welcome to PL/SQL!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/




