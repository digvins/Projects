-- Find names of all employees who have sold over 50,000
SELECT employee.first_name,employee.last_name FROM employee
WHERE employee.emp_id IN(
	SELECT works_with.emp_id FROM works_with
	WHERE total_sales>50000)
;

-- Find all clients who are handles by the branch that Michael Scott manages
 -- Assume you DONT'T know Michael's ID

SELECT client_name FROM client
WHERE branch_id = (
    SELECT branch_id FROM branch 
	WHERE mgr_id = (
		SELECT emp_id FROM employee
		WHERE first_name = 'Michael' AND last_name = 'Scott'
        LIMIT 1)
        LIMIT 1);