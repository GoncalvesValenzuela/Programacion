--NIVEL 1
--Obtenga el identificador del empleado, nombre, apellido y salario mensual desde la tabla EMPLOYEES. Asigne los alias "ID Empleado", "Nombre", "Apellido" y "Salario Mensual" respectivamente.
SELECT  
employee_id     ID_EMPLEADO,
first_name      NOMBRE,
last_name       APELLIDO,
salary          SALARIO_MENSUAL

FROM EMPLOYEES;

--Desde la tabla EMPLOYEES, liste el apellido del empleado, su salario actual y una proyección de su salario anual (multiplicado por 12). Etiquete esta última columna como "Salario Anual".
SELECT

last_name,
salary,
salary * 12  SALARIO_ANUAL

FROM EMPLOYEES;

--La gerencia evalúa otorgar un bono fijo de 350 mensuales a todos los empleados antes de calcular su ingreso anual. 
--Muestre el identificador del empleado, su salario base y el ingreso anual proyectado con el bono incluido, usando el alias "Ingreso Anual con Bono".

SELECT
employee_id,
salary,
(salary+350)*12 INGRESO_ANUAL_CON_BONO
FROM EMPLOYEES;

--Genere un listado de contacto desde la tabla EMPLOYEES que muestre en una sola columna llamada "Empleado y Contacto"
--el nombre y apellido separados por un espacio, seguidos del texto ' - Tel: ' y su número telefónico.

SELECT 
first_name || ' ' || last_name || ' -Tel: ' || phone_number "EMPLEADO Y CONTACTO"
FROM EMPLOYEES;


--Muestre en una única columna titulada "Detalle Salarial" la siguiente estructura para cada trabajador: 'El empleado [Apellido] percibe actualmente $[Salario]'.
SELECT 
'El empleado ' || last_name || ' percibe actualmente $' ||salary  "DETALLE SALARIAL"
FROM EMPLOYEES;

-- Obtenga un listado sin valores duplicados de todos los códigos de cargo (JOB_ID) que actualmente tienen empleados asignados en la tabla EMPLOYEES. Asigne el alias "Cargos Activos".
SELECT DISTINCT
job_id  "CARGOS ACTIVOS"

FROM EMPLOYEES;

--Liste las combinaciones únicas de identificador de departamento (DEPARTMENT_ID) y código de cargo (JOB_ID) presentes en la tabla EMPLOYEES.

SELECT DISTINCT
department_id,
job_id
FROM EMPLOYEES;

--NIVEL 2

--Muestre el identificador del departamento, nombre del departamento e identificador de ubicación de la tabla DEPARTMENTS, 
--ordenados alfabéticamente de forma ascendente por el nombre del departamento.

SELECT
department_id,department_name,location_id

FROM DEPARTMENTS
ORDER BY department_name ASC;

--Liste el código de cargo, título del cargo y salario máximo de la tabla JOBS. Ordene los resultados de mayor a menor según el salario máximo.

SELECT
job_id "ID TRABAJO" ,job_title "TITULO TRABAJO",max_salary "SALARIO MAXIMO"
FROM JOBS
ORDER BY max_salary DESC;

--Obtenga el título del cargo, salario mínimo, salario máximo y la diferencia entre el salario máximo y mínimo (brecha salarial) de cada puesto en la tabla JOBS.
--Ordene de forma descendente por dicha brecha salarial.

SELECT 
job_title,min_salary,max_salary
FROM JOBS
ORDER BY (max_salary-min_salary) DESC;

--Muestre el identificador de departamento, apellido y salario de todos los empleados.
--Ordene primero por identificador de departamento de forma ascendente y, dentro de cada departamento, por salario de forma descendente.

SELECT 
department_id,last_name,salary
FROM EMPLOYEES
ORDER BY department_id ASC,salary DESC;

--Liste el código de cargo, el nombre completo concatenado ("Nombre Completo") y la fecha de contratación (HIRE_DATE) de los empleados.
--Ordene ascendentemente por código de cargo y luego descendentemente por fecha de contratación.

SELECT
job_id, first_name || ' ' || last_name "NOMBRE COMPLETO",hire_date
FROM EMPLOYEES
ORDER BY job_id ASC,hire_date DESC;

--Obtenga el identificador, nombre, apellido y correo electrónico (email@HR.com) de todos los empleados que pertenecen al departamento número 90.
SELECT 
employee_id, first_name, last_name, email 
FROM EMPLOYEES
WHERE department_id = 90;

--Liste el nombre completo (concatenado), código de cargo y salario de los empleados cuyo salario mensual supere los 12000, ordenados de mayor a menor salario.
SELECT
first_name || ' ' || last_name "NOMBRE COMPLETO", job_id, salary
FROM EMPLOYEES
WHERE salary > 12000
ORDER BY salary DESC

--Muestre los títulos de cargo y salarios mínimos de la tabla JOBS para aquellos puestos cuyo salario mínimo sea igual o superior a 8000.









































