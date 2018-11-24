/
*
EMPLOYEEDATABASE
employee(emp_id,name,dob,doj,sal,dept_id)
department(dept_id,dept_name)
*/

--1) Write a function for updating the salary of employees working in the department with dept_id=10 by 20%
--2) Write a function for employee table which accepts dept_id and return the highest salary in that department. Handle the error if the dept_id doesnot exist or if the query return morethan one maximum
--3) Write a function which accepts emp_id and returns employee experience
===========================================================================
1)

CREATE OR REPLACE FUNCTION salary()
RETURNS TABLE(
id INT,
ename VARCHAR,
salary NUMERIC
)
AS
$$
BEGIN
    
    UPDATE employee SET sal =(sal/100)*10+sal WHERE dept_id=10;
    RETURN QUERY SELECT emp_id,name,sal from  employee WHERE dept_id=10;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
======================= 
employee=# select * from salary();
 id | ename |         salary         
----+-------+------------------------
  3 | Ram   | 44000.0000000000000000
(1 row)

===========================================================================
2)

CREATE OR REPLACE FUNCTION highsal(id INT)
RETURNS TABLE(
salary NUMERIC
)
AS
$$
BEGIN
        IF(id IN (10,20,30,40,50)) THEN
        
         RETURN QUERY SELECT MAX(sal)
            FROM employee NATURAL JOIN department WHERE dept_id=id;
         
        
        ELSE
           RAISE NOTICE 'INVALID DEPARTMENT ID';
        END IF;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
======================= 
employee=# select * from highsal(40);
 salary 
--------
  50000
(1 row)

===========================================================================
3)

CREATE OR REPLACE FUNCTION highsal(id INT)
RETURNS TABLE(
expr INT
)
AS
$$
BEGIN
        IF(id IN (10,20,30,40,50)) THEN
        
        RETURN QUERY SELECT DATEDIFF(year, doj, '2012-01-01'); employee
         WHERE dept_id=id;
        ELSE
           RAISE NOTICE 'INVALID DEPARTMENT ID';
        END IF;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
======================= 


===========================================================================


CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE employee(
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    dob DATE,
    doj DATE,
    sal NUMERIC,
    dept_id INT REFERENCES department(dept_id)
);

INSERT INTO department VALUES
(10,'Production'),
(20,'Finance'),
(30,'Sales'),
(40,'IT'),
(50,'Service');

INSERT INTO employee VALUES
(1,'Rahul','1995-11-10','2017-06-01',50000,40),
(2,'Vishnu','1996-10-03','2017-07-02',45000,20),
(3,'Ram','1995-02-01','2017-09-05',40000,10),
(4,'Krishna','1995-10-03','2017-10-01',30000,50),
(5,'Abhins','1997-07-15','2016-12-20',30000,30);


