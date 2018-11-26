/*
TRIGGERS
department(dept_id,dept_name)
employee(emp_id,name,dob,doj,sal,dept_id)
emp_backup(emp_id,name,dob,doj,sal,dept_id,date_of_op,type_of_op)
income_tax(emp_id,name,dob,doj,sal,dept_id,tax_amount)
*/

--1) Write a trigger which converts employee name in toupper case if it is entered in lowercase.
--2) Write a trigger that stores that data of empolyee table in emp_backup for every delete operation and store the old data for every update operation
--3) Write a trigger which displays the message 'updating', 'deleting' or 'inserting' when the corresponding operation is performed on the employee table.
--4) Write a trigger that ensures that the emp_id is of the form 'E_____'. If the inserted id is not in this form convert it and then inserted
--5) Write a trigger that checks the age of the employee while inserting the record in employee table. If age is negative generate error and display proper message.
--6) Create and execute a trigger that allows updation only if the new salary is 80% morethan the original salary.
--7)Write a trigger to calculate income tax and insert it into income_taxtable. Calculate income tax as follows if the annual income is:
	--a) Greater than 15000 but lessthan 100000 tax is 10% of annual salary.
	--b) Greater than 100000 but lessthan 200000 tax is 15% of annual salary.
	--c) Greater than 200000 tax is 20$ of annual salary.
  
===========================================================================================================================
--1)

create or replace function trigger11()
returns trigger as
$$
begin
  UPDATE employee SET name = UPPER(NEW.name) WHERE emp_id = NEW.emp_id;
  return new;
end;
$$
language plpgsql;

create trigger trigger1 after insert on employee
for each row execute PROCEDURE trigger11();

=======================
OUTPUT:
=======================
INSERT INTO employee VALUES
(8,'abhilash','1996-09-07','2015-11-06',150000,40);

    name       
-----------
  ABHILASH 

===========================================================================================================================
--2)

create or replace function trigger22()
returns trigger as
$$
begin
  INSERT INTO emp_backup(emp_id,name,dob,doj,sal,dept_id,date_of_op,type_of_op)
 VALUES(OLD.emp_id,OLD.name,OLD.dob,OLD.doj,OLD.sal,OLD.dept_id,CURRENT_TIMESTAMP,TG_OP);
  return old;
end;
$$
language plpgsql;

create trigger trigger2 before update or delete on employee
for each row execute PROCEDURE trigger22();

=======================
OUTPUT:
=======================
UPDATE employee SET name='Abhi' WHERE emp_id=5;
5;"Abhins";"1997-07-15";"2016-12-20";30000;30;"2018-11-27 00:00:00";"UPDATE"

===========================================================================================================================
--3)

create or replace function trigger33()
returns trigger as
$$
begin
  
  RAISE NOTICE  '% OCCURRED',TG_OP;
  return 0;
end;
$$
language plpgsql;

create trigger trigger3 before update or delete or insert on employee
for each row execute PROCEDURE trigger33();

=======================
OUTPUT:
=======================
INSERT INTO employee VALUES
(8,'abhilash','1996-09-07','2015-11-06',150000,40);

NOTICE:  INSERT OCCURRED

===========================================================================================================================
--4)

create or replace function trigger44()
returns trigger as
$$
begin
  UPDATE employee SET emp_id = CONCAT('E0000',NEW.emp_id) WHERE emp_id = NEW.emp_id and New.emp_id NOT LIKE 'E_____';
  return new;
end;
$$
language plpgsql;

create trigger trigger4 after insert on employee
for each row execute PROCEDURE trigger44();

=======================
OUTPUT:
=======================
select * from employee where emp_id='E00007';

"E00007";"Abhilash";"1996-09-07";"2015-06-01";150000;40

===========================================================================================================================
--5)

create or replace function trigger55()
returns trigger as
$$
begin
  IF(AGE(CURRENT_DATE,NEW.dob) < AGE(CURRENT_DATE,CURRENT_DATE)) THEN
		RAISE NOTICE  'ERROR!!!, AGE IS NEGATIVE : %',AGE(CURRENT_DATE,NEW.dob);
	ELSE
		RAISE NOTICE   'AGE IS : %',AGE(CURRENT_DATE,NEW.dob);
	END IF;
  return 0;
end;
$$
language plpgsql;

create trigger trigger5 before insert on employee
for each row execute PROCEDURE trigger55();




=======================
OUTPUT:
=======================
INSERT INTO employee VALUES
('E00008','abhi','1996-09-07','2015-11-06',150000,40);


NOTICE:  AGE IS : 22 years 2 mons 20 days
or

INSERT INTO employee VALUES
('E00008','abhi','2018-12-07','2015-11-06',150000,40);

NOTICE:  ERROR!!!, AGE IS NEGATIVE : -10 days

===========================================================================================================================
--6)

create or replace function trigger66()
returns trigger as
$$
begin
	IF(NEW.sal>= ((OLD.sal/100)*80)+OLD.sal) THEN
		RAISE NOTICE 'More than 80 percentage';
	ELSE
		RAISE NOTICE 'Not more than 80 percentage';
	END IF;
		return 0;
end;
$$
language plpgsql;

create trigger trigger6 before update on employee
for each row execute PROCEDURE trigger66();

=======================
OUTPUT:
=======================
UPDATE employee SET sal = 4000000 WHERE emp_id = 'E00004';

NOTICE:  More than 80 percentage

===========================================================================================================================
--7)

create or replace function trigger77()
returns trigger as
$$
begin
	IF(NEW.sal >=15000 OR NEW.sal<100000) THEN
	
		 INSERT INTO income_tax VALUES(NEW.emp_id,NEW.name,NEW.dob,NEW.doj,NEW.sal,NEW.dept_id,(NEW.sal/100)*10);
		 
	ELSIF(NEW.sal >=100000 OR NEW.sal<200000) THEN
		
		 INSERT INTO income_tax VALUES(NEW.emp_id,NEW.name,NEW.dob,NEW.doj,NEW.sal,NEW.dept_id,(NEW.sal/100)*15);
		 
	ELSIF(NEW.sal >=200000) THEN
	
		 INSERT INTO income_tax VALUES(NEW.emp_id,NEW.name,NEW.dob,NEW.doj,NEW.sal,NEW.dept_id,1416.50);
		 
	END IF;
		return new;
end;
$$
language plpgsql;

create trigger trigger7 after insert or update on employee
for each row execute PROCEDURE trigger77();

=======================
OUTPUT:
=======================
INSERT INTO employee VALUES
('E00008','abhi','1995-12-07','2015-11-06',150000,40);

SELECT * FROM income_tax where emp_id='E00008';

"E00008";"abhi";"1995-12-07";"2015-11-06";150000;40;15000.0000000000000000

===========================================================================================================================
CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE employee(
    emp_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    dob DATE,
    doj DATE,
    sal NUMERIC,
    dept_id INT REFERENCES department(dept_id)
);

CREATE TABLE emp_backup(
    emp_id VARCHAR(20) NOT NULL,
    name VARCHAR(30) NOT NULL,
    dob DATE,
    doj DATE,
    sal NUMERIC,
    dept_id INT NOT NULL,
    date_of_op DATE,
    type_of_op VARCHAR(20)
);

CREATE TABLE income_tax(
    emp_id VARCHAR(20) REFERENCES employee(emp_id),
    name VARCHAR(30) NOT NULL,
    dob DATE,
    doj DATE,
    sal NUMERIC,
    dept_id INT REFERENCES department(dept_id),
    tax_amount NUMERIC
 );
INSERT INTO department VALUES
(10,'Production'),
(20,'Finance'),
(30,'Sales'),
(40,'IT'),
(50,'Service');

INSERT INTO employee VALUES
('E00001','Rahul','1995-11-10','2017-06-01',50000,40),
('E00002','Vishnu','1996-10-03','2017-07-02',45000,20),
('E00003','Ram','1995-02-01','2017-09-05',40000,10),
('E00004','Krishna','1995-10-03','2017-10-01',30000,50),
('E00005','Abhins','1997-07-15','2016-12-20',30000,30);
