set serveroutput on;
-- BEGIN <<outer>>  es un cualificador, es decir, una etiqueta para indicar
-- que las variables de este bloque serán accesible desde cualquier parte de
-- los bloques anidados
BEGIN <<outer>>
DECLARE 
    v_primero NUMBER(2) := 1;
    v_segundo NUMBER(2) := 2;
    v_suma  NUMBER(3):= v_primero + v_segundo; 
BEGIN
    -- Se anida otro bloque donde se accederá a variables del bloque principal.
    -- Tenemos que indicarle con 'outer' que hacemos referencia a las variables 
    -- declaradas arriba, sino dara error.
    DECLARE
       v_suma NUMBER(3) := outer.v_suma +100;
       v_primero NUMBER(2):= outer.v_primero + 2;
    BEGIN
         
         DBMS_OUTPUT.PUT_LINE('Anidado: ' || v_suma);
          DBMS_OUTPUT.PUT_LINE('Numero primero anidado: ' || v_primero);
    END;
 
 DBMS_OUTPUT.PUT_LINE('Total suma sin anidar: '|| v_suma);
   DBMS_OUTPUT.PUT_LINE('Numero primero sin anidado: ' || v_primero);
END;
END outer;
/




DECLARE
BEGIN
END;