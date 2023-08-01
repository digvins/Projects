-- JOINS

INSERT INTO branch VALUES(4,'Buffalo',NULL,NULL);

select * from branch;

-- FIND ALL BRANCHES AND THE NAMES OF THE MANAGERS
SELECT employee.emp_id ,employee.first_name,branch.branch_name
FROM employee
JOIN branch ON employee.emp_id = branch.mgr_id;

--  left and right join
SELECT employee.emp_id ,employee.first_name,branch.branch_name
FROM employee
LEFT JOIN branch ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id ,employee.first_name,branch.branch_name
FROM employee
RIGHT JOIN branch ON employee.emp_id = branch.mgr_id;