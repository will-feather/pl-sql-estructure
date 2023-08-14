BEGIN
	FOR i IN 1 .. 10 LOOP
		DBMS_OUTPUT.put_line('Linha :' || i);
	END LOOP;
END;


--> PRIMEIRA PROCEDURE

DECLARE
    V_NM_FUNCIONARIO employees.first_name%TYPE;
BEGIN

    SELECT first_name
    INTO V_NM_FUNCIONARIO
    FROM employees 
    WHERE employee_id = 26;
    
    IF V_NM_FUNCIONARIO <> 'LEON' THEN
        dbms_output.put_line(V_NM_FUNCIONARIO);
    ELSE
        dbms_output.put_line('NOK');
    END IF;

END;


--> PROCEDURE DE DOIS PARAMETROS

CREATE OR REPLACE PROCEDURE SP_CONFERE_NM_FUNCIONARIO (P_ID_FUNCIONARIO NUMBER, P_NM_FUNCIONARIO VARCHAR2) IS
    V_NM_FUNCIONARIO employees.first_name%TYPE;
BEGIN

    SELECT first_name
    INTO V_NM_FUNCIONARIO
    FROM employees 
    WHERE employee_id = P_ID_FUNCIONARIO;
    
    IF V_NM_FUNCIONARIO = P_NM_FUNCIONARIO THEN
        dbms_output.put_line(V_NM_FUNCIONARIO);
    ELSE
        dbms_output.put_line('NOK');
    END IF;

END SP_CONFERE_NM_FUNCIONARIO;
