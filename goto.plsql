BEGIN
    GOTO SECOND_MESSAGE;
    <<FIRST_MESSAGE>>
    DBMS_OUTPUT.PUT_LINE('starting');
    GOTO THE_END;
    <<SECOND_MESSAGE>>
    DBMS_OUTPUT.PUT_LINE('HI');
    GOTO FIRST_MESSAGE;
    <<THE_END>>
    DBMS_OUTPUT.PUT_LINE('END Statement');
END;
/



