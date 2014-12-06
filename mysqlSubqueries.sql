-- http://www.mysqltutorial.org/mysql-subquery/

DROP TABLE employees;
DROP TABLE offices; 

CREATE TABLE employees (
  lastname TEXT,
  firstname TEXT,  
  officeCode INTEGER
);

CREATE TABLE offices (
  country TEXT, 
  officeCode INTEGER 
);

INSERT INTO offices(country, officeCode) 
  VALUES('USA', 0);

INSERT INTO offices(country, officeCode)
  VALUES('USA', 1);

INSERT INTO offices(country, officeCode)
  VALUES('UK', 2);

INSERT INTO employees(firstname, lastname, officeCode)
  VALUES('Clayton', 'Albachten', 1);

INSERT INTO employees(firstname, lastname, officeCode)
  VALUES('Cheryl', 'Wu', 0);

INSERT INTO employees(firstname, lastname, officeCode)
  VALUES('Mark', 'Kermode', 2);

INSERT INTO employees(firstname, lastname, officeCode)
  VALUES('Charlie', 'Brooker', 2);

DELETE
FROM employees 
WHERE officeCode IN (SELECT officeCode
                     FROM offices
                     WHERE country = 'USA');

SELECT * FROM employees; 