USE myemployees;

SELECT
	last_name, department_id, salary * 12 * (1 + IFNULL(commission_pct, 0)) AS "annual salary"
FROM 
	employees
WHERE
	job_id = 176;