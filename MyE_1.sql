USE myemployees;

#1. select single 
SELECT last_name FROM employees;

#2. select multiple
SELECT last_name, salary, email FROM employees;

#3. select all
SELECT * FROM employees;

#4. select constant
SELECT 'A';

#5. select functioms
SELECT VERSION();

#6. select expressions
SELECT 100%98;

#7. select nick name
SELECT last_name AS 'last', first_name AS 'first' FROM employees;

SELECT last_name 'last', first_name 'first' FROM employees;

#8. remove repitation
SELECT DISTINCT department_id FROM employees;

#9. combine strings together
SELECT CONCAT('a', 'b');

SELECT CONCAT(last_name, " ", first_name) AS 'name' FROM employees;

#10.
SELECT IFNULL(`commission_pct`, 0), `commission_pct` FROM employees;

SELECT 
	CONCAT(`first_name`, ',', `last_name`, ',', IFNULL(`commission_pct`, 0)) AS output
FROM 
	employees;




