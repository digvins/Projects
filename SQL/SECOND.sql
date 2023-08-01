CREATE TABLE student2(
    id INT PRIMARY KEY auto_increment,
	name VARCHAR(20),
    major VARCHAR(20)

);
SELECT * 
FROM student2
WHERE major='Biochemistry' or major = 'Computer Science';
-- < > =< => AND OR  <>(not equal to)



SELECT student2.name,student2.major
FROM student2
ORDER BY name DESC
LIMIT 2;

DELETE from student2
WHERE id=5;

UPDATE student2
SET major ='Biochemistry', name = 'Piyush'
WHERE major = 'Bio' OR major = 'Chemistry';

INSERT INTO student2(name,major) VALUES('Alex','Chemistry')


