/*
1)create the tables and insert the values.
2)list all classes where strength is greater than 50.
3)list the names of students of Lina teacher.
4)list the names of all the english teachers.
5)list the names of teachers who teach standard 9.
6)find out all the classes that are taught by jaya teacher.
7)list the names and details of all students in standard 10.
8)list all the students whose first name is the same along with their student id.
9)list the name of students whose name starts with 's'
*/

CREATE TABLE class_(
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(30) NOT NULL,
    division VARCHAR(2) NOT NULL DEFAULT 'A',
    st_cnt INT NOT NULL CHECK(st_cnt>=0),
    UNIQUE(class_name,division)
);

INSERT INTO class_(class_name, st_cnt)
VALUES('Ten',65);

CREATE TABLE student(
    st_id SERIAL PRIMARY KEY,
    st_fname VARCHAR(30) NOT NULL,
    st_lname VARCHAR(30) NOT NULL,
    addr VARCHAR(50) NOT NULL,
    phone VARCHAR(13),
    email VARCHAR(30),
    class_id INT REFERENCES class_(class_id)
);

INSERT INTO student(st_fname,st_lname,addr,phone,email,class_id)
VALUES('Abhilash1','R1','address1','+910000000001','email1@a.com',1),
      ('Abhilash2','R2','address2','+910000000002','email2@a.com',1),
      ('Abhilash3','R3','address3','+910000000003','email3@a.com',1),
      ('Abhilash4','R4','address4','+910000000004','email4@a.com',1),
      ('Abhilash5','R5','address5','+910000000005','email5@a.com',1),
      ('Abhilash6','R6','address6','+910000000006','email6@a.com',1),
      ('Abhilash7','R7','address7','+910000000007','email7@a.com',1),
      ('Abhilash8','R8','address8','+910000000008','email8@a.com',1),
      ('Abhilash9','R9','address9','+910000000009','email9@a.com',1),
      ('Abhilash10','R10','address10','+910000000010','email10@a.com',1);
      
      
      
####################################################################################################################################################
####################################################################################################################################################     
CREATE TABLE company(
    emp_id INT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    age SMALLINT NOT NULL CHECK(age>=18),
    address VARCHAR(50),
    salary REAL,
    join_date DATE
);

CREATE TABLE department(
    id INT PRIMARY KEY NOT NULL,
    dept VARCHAR(50) NOT NULL,
    emp_id INT NOT NULL
); 

INSERT INTO company(emp_id,name,age,address,salary,join_date)
VALUES(1,'A1',30,'ADD1',20000.00,'2001-02-01'),
      (2,'A2',31,'ADD2',500000.00,'2005-04-11'),
      (3,'A3',32,'ADD3',44000.00,'2007-12-21'),
      (4,'A4',33,'ADD4',20000.00,'2014-09-07'),
      (5,'A5',34,'ADD5',200000.00,'2004-02-13');
      
INSERT INTO department(id,dept,emp_id)
VALUES(1,'IT Billing',1),
      (2,'Engineering',2),
      (3,'Finance',7);  

####################################################################################################################################################
####################################################################################################################################################
1. SELECT st_id AS "Roll No", CONCAT(st_fname,' ',st_lname) AS 'Name' FROM student;

2. SELECT class_name, division FROM class_ 
   WHERE st_cnt>50;
