CREATE TABLE student (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  major VARCHAR(20) UNIQUE,
  fee INT DEFAULT 20000
  
);
SELECT * FROM student;
DESCRIBE student;
DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(1,1);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES('Mike', 'Computer Science',default);

INSERT INTO student(name,major) VALUES('Kate', 'GIS');
INSERT INTO student VALUES(3, 'Alex', 'Mathematics');
