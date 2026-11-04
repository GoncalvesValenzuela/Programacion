SELECT 'El empleado' || ' ' || nombre_emp || ' ' || appaterno_emp || 
        ' ' || apmaterno_emp || ' ' || 'nació el' || ' ' || fecnac_emp
        LISTADO_DE_CUMPLEAÑOS

FROM EMPLEADO
ORDER BY fecnac_emp, appaterno_emp ASC;

-- CASO 2

SELECT
   NUMRUT_CLI RUT,
   DVRUT_CLI DIGITO_VERIFICADOR,
   APPATERNO_CLI || ' ' || 
   APMATERNO_CLI || ' ' ||
   NOMBRE_CLI NOMBRE_CLIENTE,
   RENTA_CLI RENTA,
   FONOFIJO_CLI TELEFONO_FIJO,
   CELULAR_CLI TELEFONO_MOVIL
   
FROM CLIENTE
ORDER BY APPATERNO_CLI,APMATERNO_CLI;

-- CASO 3

SELECT nombre_emp || ' ' || appaterno_emp || ' ' || apmaterno_emp NOMBRE_EMPLEADO,
sueldo_emp SUELDO,
sueldo_emp * 0.5 BONO_POR_CAPACITACION

FROM EMPLEADO
ORDER BY 3 DESC; -- TAMBIEN SE PUEDE TOMAR EL ALIAS O LA FORMULA PARA ORDENAR

--CASO 4

SELECT
nro_propiedad NUMERO_PROPIEDAD,
numrut_prop RUN,
direccion_propiedad DIRECCION,
valor_arriendo VALOR_ARRIENDO,
valor_arriendo * 0.054 COMPENSACION

FROM PROPIEDAD
ORDER BY RUN;

-- CASO 5

SELECT numrut_emp || '-' || dvrut_emp RUN,
nombre_emp || ' ' || appaterno_emp || ' ' || apmaterno_emp NOMBRE_EMPLEADO,
sueldo_emp SUELDO_ACTUAL,
sueldo_emp * 0.135 BONO,
sueldo_emp * 1.135 SUELDO_FINAL,
sueldo_emp + (sueldo_emp * 0.135)SUELDO_FINAL_2

FROM EMPLEADO
ORDER BY BONO, appaterno_emp ASC;