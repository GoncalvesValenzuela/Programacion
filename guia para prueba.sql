                                                                            --NIVEL 1--

--1
--Obtenga el identificador del empleado, nombre, apellido y salario mensual desde la tabla EMPLOYEES. Asigne los alias "ID Empleado", "Nombre", "Apellido" y "Salario Mensual" respectivamente.
SELECT  
employee_id     ID_EMPLEADO,
first_name      NOMBRE,
last_name       APELLIDO,
salary          SALARIO_MENSUAL

FROM EMPLOYEES;

--2
--Desde la tabla EMPLOYEES, liste el apellido del empleado, su salario actual y una proyección de su salario anual (multiplicado por 12). Etiquete esta última columna como "Salario Anual".
SELECT

last_name,
salary,
salary * 12  SALARIO_ANUAL

FROM EMPLOYEES;

--3
--La gerencia evalúa otorgar un bono fijo de 350 mensuales a todos los empleados antes de calcular su ingreso anual. 
--Muestre el identificador del empleado, su salario base y el ingreso anual proyectado con el bono incluido, usando el alias "Ingreso Anual con Bono".

SELECT
employee_id,
salary,
(salary+350)*12 INGRESO_ANUAL_CON_BONO
FROM EMPLOYEES;

--4
--Genere un listado de contacto desde la tabla EMPLOYEES que muestre en una sola columna llamada "Empleado y Contacto"
--el nombre y apellido separados por un espacio, seguidos del texto ' - Tel: ' y su número telefónico.

SELECT 
first_name || ' ' || last_name || ' -Tel: ' || phone_number "EMPLEADO Y CONTACTO"
FROM EMPLOYEES;

--5
--Muestre en una única columna titulada "Detalle Salarial" la siguiente estructura para cada trabajador: 'El empleado [Apellido] percibe actualmente $[Salario]'.
SELECT 
'El empleado ' || last_name || ' percibe actualmente $' ||salary  "DETALLE SALARIAL"
FROM EMPLOYEES;

--6
-- Obtenga un listado sin valores duplicados de todos los códigos de cargo (JOB_ID) que actualmente tienen empleados asignados en la tabla EMPLOYEES. Asigne el alias "Cargos Activos".
SELECT DISTINCT
job_id  "CARGOS ACTIVOS"

FROM EMPLOYEES;

--7
--Liste las combinaciones únicas de identificador de departamento (DEPARTMENT_ID) y código de cargo (JOB_ID) presentes en la tabla EMPLOYEES.

SELECT DISTINCT
department_id,
job_id
FROM EMPLOYEES;

                                                                            --NIVEL 2--

--8
--Muestre el identificador del departamento, nombre del departamento e identificador de ubicación de la tabla DEPARTMENTS, 
--ordenados alfabéticamente de forma ascendente por el nombre del departamento.

SELECT
department_id,department_name,location_id

FROM DEPARTMENTS
ORDER BY department_name ASC;

--9
--Liste el código de cargo, título del cargo y salario máximo de la tabla JOBS. Ordene los resultados de mayor a menor según el salario máximo.

SELECT
job_id "ID TRABAJO" ,job_title "TITULO TRABAJO",max_salary "SALARIO MAXIMO"
FROM JOBS
ORDER BY max_salary DESC;

--10
--Obtenga el título del cargo, salario mínimo, salario máximo y la diferencia entre el salario máximo y mínimo (brecha salarial) de cada puesto en la tabla JOBS.
--Ordene de forma descendente por dicha brecha salarial.

SELECT 
job_title,min_salary,max_salary
FROM JOBS
ORDER BY (max_salary-min_salary) DESC;

--11
--Muestre el identificador de departamento, apellido y salario de todos los empleados.
--Ordene primero por identificador de departamento de forma ascendente y, dentro de cada departamento, por salario de forma descendente.

SELECT 
department_id,last_name,salary
FROM EMPLOYEES
ORDER BY department_id ASC,salary DESC;

--12
--Liste el código de cargo, el nombre completo concatenado ("Nombre Completo") y la fecha de contratación (HIRE_DATE) de los empleados.
--Ordene ascendentemente por código de cargo y luego descendentemente por fecha de contratación.

SELECT
job_id, first_name || ' ' || last_name "NOMBRE COMPLETO",hire_date
FROM EMPLOYEES
ORDER BY job_id ASC,hire_date DESC;

                                                                            --NIVEL 3--
--13
--Obtenga el identificador, nombre, apellido y correo electrónico (email@HR.com) de todos los empleados que pertenecen al departamento número 90.
SELECT 
employee_id, first_name, last_name, email 
FROM EMPLOYEES
WHERE department_id = 90;

--14
--Liste el nombre completo (concatenado), código de cargo y salario de los empleados cuyo salario mensual supere los 12000, ordenados de mayor a menor salario.
SELECT
first_name || ' ' || last_name "NOMBRE COMPLETO", job_id, salary
FROM EMPLOYEES
WHERE salary > 12000
ORDER BY salary DESC;

--15
--Muestre los títulos de cargo y salarios mínimos de la tabla JOBS para aquellos puestos cuyo salario mínimo sea igual o superior a 8000.

SELECT
job_title, min_salary
FROM JOBS
WHERE min_salary >= 8000;

--16
--Identifique a los empleados con remuneraciones bajas listando su identificador, apellido, salario actual y salario anual proyectado, siempre que su salario mensual sea inferior a 2500.

SELECT
employee_id "ID EMPLEADO",last_name "APELLIDO",salary "SALARIO MENSUAL",(salary*12) "SALARIO ANUAL"
FROM employees
WHERE salary < 2500;

--17
--Muestre el identificador de ubicación, ciudad y código postal de la tabla LOCATIONS para aquellas oficinas cuyo LOCATION_ID sea menor o igual a 1500.

SELECT 
location_id "ID UBICACION",city "CIUDAD",postal_code "CODIGO POSTAL"
FROM locations
WHERE location_id <= 1500;

--18
--Obtenga el nombre, apellido y código de cargo de todos los empleados cuyo cargo sea distinto a 'SA_REP', ordenados alfabéticamente por apellido.
SELECT
first_name "NOMBRE",last_name "APELLIDO",job_id "CODIGO DE CARGO"
FROM employees
WHERE job_id != 'SA_REP'
ORDER BY job_id ASC;

                                                                            --NIVEL 4--
--19
--Liste el apellido, código de cargo y salario de los empleados cuyo salario se encuentre entre $7,000 y $10,000 (ambos inclusive), ordenados de menor a mayor salario.
SELECT
last_name "APELLIDO", job_id "ID TRABAJO",salary "SALARIO"
FROM employees
WHERE salary BETWEEN 7000 AND 10000;

--20
--Obtenga el identificador, nombre completo y fecha de contratación de los empleados que ingresaron a la compañía entre el 1 de enero de 2005 y el 31 de diciembre de 2005.
SELECT
employee_id "ID EMPLEADO",first_name || ' ' ||last_name "NOMBRE COMPLETO",hire_date "FECHA CONTRATACION"
FROM employees
WHERE hire_date BETWEEN '01/01/2005' AND '31/12/2005';

--21
--Muestre el apellido, salario y código de departamento de los empleados que trabajan en los departamentos 30, 50 u 80. Ordene por departamento ascendente y apellido ascendente.
SELECT
last_name "APELLIDO",salary "SALARIO", department_id "ID DEPARTAMENTO"
FROM employees
WHERE department_id IN (30,50,80)
ORDER BY department_id ASC, last_name ASC;

--22
--Busque en la tabla EMPLOYEES a todos los trabajadores cuyo nombre (FIRST_NAME) comience con la letra 'S'. Muestre su identificador, nombre, apellido y correo electrónico.
SELECT
employee_id,first_name,last_name,email || '@gmail.com'
FROM employees
WHERE first_name LIKE 'S%';

--23
--Obtenga el apellido y código de cargo de los empleados cuya segunda letra del apellido sea la vocal 'o' (por ejemplo, Lorentz, Popp). Ordene alfabéticamente por apellido.

SELECT 
last_name,job_id
FROM employees
WHERE last_name LIKE '_o%';

--24
--Liste el identificador, nombre completo y código de cargo de los empleados que aún no tienen un porcentaje de comisión asignado (COMMISSION_PCT nulo).

SELECT 
employee_id,first_name || ' ' || last_name "NOMBRE COMPLETO", job_id
FROM employees
WHERE commission_pct IS NULL
ORDER BY last_name ASC;


                                                                            --NIVEL 5--
--25
--Muestre el apellido, código de cargo y salario de los empleados que se desempeñan como programadores ('IT_PROG') y que además ganan más de 5000 mensuales.

SELECT 
last_name, job_id,salary
FROM employees
WHERE job_id = 'IT_PROG' AND salary > 5000;

--26
--Obtenga el identificador de ubicación, ciudad y código de país (COUNTRY_ID) de la tabla LOCATIONS para aquellas sedes ubicadas en Canadá ('CA') o en el Reino Unido ('UK').

SELECT 
location_id,city, country_id
FROM locations
WHERE country_id = 'CA' OR country_id = 'UK';

--27
--Liste el apellido, departamento y porcentaje de comisión de los empleados que pertenecen a los departamentos 50 y 80, y cuya comisión NO sea nula. Ordene por comisión descendente.

SELECT
last_name "APELLIDO",department_id "ID DEPARTAMENTO",commission_pct "PORCENTAJE DE COMISION"
FROM employees
WHERE department_id IN (50,80) AND commission_pct IS NOT NULL;

--28
--Muestre el nombre completo, código de cargo y salario de los empleados cuyo cargo sea representante de ventas ('SA_REP') o presidente ('AD_PRES'), y que además perciban un salario superior a 10000.

SELECT
first_name,last_name,job_id,salary
FROM employees
WHERE job_id = 'SA_REP' AND salary >10000 OR job_id = 'AD_PRES' AND salary > 10000;

--29
--Calcule el monto de comisión mensual en dinero (SALARY * COMMISSION_PCT) y el salario total mensual (SALARY + (SALARY * COMMISSION_PCT))
--para los empleados que tienen comisión asignada, cuyo código de cargo comience con 'SA_' y cuyo salario base esté entre 6000 y 12000.

SELECT
salary*commission_pct "COMISION MENSUAL",salary + (salary*commission_pct) "SALARIO TOTAL MENSUAL"
FROM employees
WHERE commission_pct IS NOT NULL AND job_id LIKE 'SA%' AND salary BETWEEN 6000 AND 12000;

--30
--La gerencia desea auditar qué cargos distintos existen en los departamentos 20, 50, 60 u 80 donde existan empleados contratados fuera del rango salarial de $4,000 a $9,000
--(es decir, menores a 4,000 o mayores a 9,000),
--excluyendo aquellos cargos que contengan la palabra 'CLERK'. Muestre el departamento y el cargo sin duplicados, ordenados por departamento ascendente y cargo descendente.

SELECT DISTINCT
department_id,job_id
FROM employees
WHERE job_id NOT LIKE '%CLERK%' AND (salary < 4000 OR salary > 9000) AND (department_id in(20,50,80))
ORDER BY department_id ASC, job_id DESC;

                                                                            --NIVEL 6--
--31
--Inserte una nueva región en la tabla REGIONS con el identificador 5 y el nombre 'Oceania', omitiendo la lista explícita de columnas (inserción posicional).

INSERT INTO regions (region_id,region_name)VALUES (5,'Oceania');

--32
--Registre un nuevo país en la tabla COUNTRIES indicando explícitamente los nombres de sus columnas: código 'CL', nombre 'Chile' e identificador de región 2 (Americas).

INSERT INTO countries (country_id,country_name,region_id) VALUES ('CL','Chile',2);

--33
--Cree un nuevo puesto laboral en la tabla JOBS con código 'DA_SPEC', título 'Data Analytics Specialist', salario mínimo de 6500 y salario máximo de 12500.
INSERT INTO jobs (job_id,job_title,min_salary,max_salary) VALUES ('DA_SPEC','Data Analytics Specialist',6500,12500);

--34
--Agregue una nueva oficina en la tabla LOCATIONS únicamente con sus columnas obligatorias y básicas: LOCATION_ID = 3300,
--CITY = 'Santiago' y COUNTRY_ID = 'CL' (dejando dirección, código postal y estado/provincia como nulos de forma implícita).

INSERT INTO locations (location_id,city,country_id) VALUES (3300,'Santiago','CL');

--35
--Registre un nuevo departamento en la tabla DEPARTMENTS con identificador 280, nombre 'Data Science', sin gerente asignado (NULL explícito) y ubicado en la sede 1700.

INSERT INTO departments VALUES(280,'Data Science',NULL,1700);

--36
--Incorpore a un nuevo empleado en la tabla EMPLOYEES con ID 207, nombre 'Camila', apellido 'Valdes', correo 'CVALDES', teléfono '569.555.0199',
--fecha de contratación '15-MAR-24', cargo 'IT_PROG', salario calculado como 5000 + 800, sin comisión (NULL), jefe directo 103 y departamento 60.

INSERT INTO employees VALUES (207,'Camila','Valdes','CVALDES','569.555.0199','15-MAR-24','IT_PROG',(5000+800),NULL,103,60);

--37
--Registre al empleado número 208 llamado 'Mateo Rojas'
--(correo 'MROJAS', teléfono '515.123.9988'), contratado con la fecha actual del sistema (SYSDATE), en el cargo 'SA_REP', con salario 7200, comisión 0.15, jefe 145 y departamento 80.

INSERT INTO employees VALUES (208,'Mateo','Rojas','MROJAS','515.123.9988',SYSDATE,'SA_REP',7200,0.15,145,60);

--38
--Inserte un nuevo cargo en la tabla JOBS con código 'CLOUD_ARCH',
--construyendo el título mediante concatenación de 'Cloud' || ' ' || 'Architect', con salario mínimo 9000 y salario máximo calculado como 9000 * 1.8.
INSERT INTO jobs VALUES ('CLOUD_ARCH','Cloud' || ' ' || 'Architect',9000,(9000*1.8));

--39
--Crear una tabla histórica de respaldo con la misma estructura de la tabla
--EMPLOYEES, llamada EMPLOYEES_HISTORY, copie en una sola sentencia todos los empleados del departamento 90 que perciben un salario superior a 15000.

DROP TABLE employees_history;
CREATE TABLE employees_history AS SELECT * FROM employees
WHERE DEPARTMENT_ID = 90 AND SALARY > 15000;













































