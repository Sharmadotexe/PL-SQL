-- language: plsql


Begin 

  Dbms_output.put_line('NUMBER' || 2/0);

  Exception 
  When Zero_Divide then 
      Dbms_output.put_line(' Exception !!!! Number is divided by zero');

End;
/