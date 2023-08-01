-- WILDCARDS
-- % = any number of characters     _ = one character

SELECT * FROM client
WHERE client_name LIKE '%LLC';

SELECT * FROM employee
WHERE birth_day LIKE '____-02%';

SELECT first_name AS Company_name FROM employee
UNION
SELECT branch_name FROM branch
UNION 
SELECT client_name FROM client;

-- LIST OF ALL MONEY SPENT OR EARNED BY THE COMPANY
SELECT SUM(salary) AS Money_Talk
FROM employee
UNION
SELECT SUM(total_sales)
FROM works_with;