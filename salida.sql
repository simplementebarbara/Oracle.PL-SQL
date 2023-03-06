SET SERVEROUTPUT ON;
DECLARE
    v_fname VARCHAR2(20);
BEGIN
    select clinomb 
    into v_fname 
    from clientes_actuales
    where clinum =2348;
    DBMS_OUTPUT.PUT_LINE ('El nombre del empleado es: ' || v_fname);
END;


