# search
#1.
USE myemployees;

SELECT 
	*
FROM 
	employees
WHERE
	salary > 12000;
	
#2.
SELECT
	first_name, department_id
FROM 
	employees
WHERE
	department_id != 90; # <> is better
	
#3.
SELECT 
	`first_name`,salary,`commission_pct`
FROM
	employees
WHERE
	salary >= 10000 && salary <= 20000;
	
#4.
SELECT
	*
FROM
	employees
WHERE
	!(`department_id` >= 90 && department_id <= 110) || salary >= 15000;
	
#5. vague search
/*
like:
	% for any character >= 0
	_ for any single character
	
between and
in
is null | is not null
*/

SELECT 
	*
FROM 
	employees
WHERE
	last_name LIKE '%a%';
#---
SELECT 
	*
FROM 
	employees
WHERE
	last_name LIKE '__n_l%';
#---
SELECT 
	*
FROM 
	employees
WHERE
	last_name LIKE '_\_%';

# similarly
SELECT 
	*
FROM 
	employees
WHERE
	last_name LIKE '_$_%' ESCAPE '$'; # $ here is same as \
	
#6. between and 
/*
requires:
- values inclusive
- between a and b, a <= b
*/
SELECT 
	*
FROM 
	employees
WHERE
	employee_id BETWEEN 100 AND 120;

#7. in
/*
requires:
- IN(A, B, C), ABC must have the same type
- same as filter(list, '=')
*/
SELECT 
	last_name, `job_id`
FROM
	employees
WHERE
	job_id IN ('IT_PROG', 'AD_VP', 'AD_PRES');
	
#8. is null
/*
requires:
- "=" cannot be used to check null
*/
SELECT 
	last_name, `commission_pct` 
FROM
	employees
WHERE
	commission_pct IS NULL;
	
#9. safe equal <=>
/*
not recommended though
*/
SELECT 
	last_name, `commission_pct` 
FROM
	employees
WHERE
	commission_pct <=> NULL;
	
# ---
SELECT 
	last_name, `salary` 
FROM
	employees
WHERE
	salary <=> 12000;


 