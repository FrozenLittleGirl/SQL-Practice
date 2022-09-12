USE myemployees;

# Q1
SELECT 
	last_name, salary
FROM 
	employees
WHERE 
	salary < 18000 && commission_pct IS NULL;

# Q2
SELECT
	*
FROM 
	employees
WHERE
	jpb_id <> 'IT' || salary = 12000;
	
# Q3
DESC departments;
	
# Q4
SELECT DISTINCT location_id FROM departments;

# Q5
/*
'%%' does not contain null
*/