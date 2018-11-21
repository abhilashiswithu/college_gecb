-- QUESTION 4 - PROCEDURE
/*
BANK DATABASE
branch(b_id, bname, city)
customer(c_id, cname, city)
deposit(acc_no, c_id, b_id, amount, date)
borrow(loan_no, c_id, b_id, amount, date)
*/

-- 1) Find the number of customers who have loan in each branch
--SELECT B.b_name,COUNT(L.c_id) AS no_of_customer
    FROM customer AS C, branch AS B, borrow AS L
    WHERE C.c_id=L.c_id AND B.b_id=L.b_id
    GROUP BY B.b_id;

-- 2)List all details of all customers
===========================================================================
1)

CREATE OR REPLACE FUNCTION loan()
RETURNS TABLE(
id INT,
count BIGINT
)
AS
$$
BEGIN
    RETURN QUERY SELECT b_id,COUNT(*) from borrow GROUP BY b_id;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
======================= 

bank_pro=# select * from loan();
  id  | count 
------+-------
 1005 |     1
 1002 |     1
 1004 |     1
(3 rows)


===========================================================================
2)

CREATE OR REPLACE FUNCTION customer()
RETURNS TABLE(
id INT,
name VARCHAR,
cityy VARCHAR
)
AS
$$
BEGIN
    RETURN QUERY SELECT * FROM customer ;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
======================= 
bank_pro=# select * from customer();
 id |   name   |  cityy   
----+----------+----------
  1 | ABHILASH | MUMBAI
  2 | AJIN     | KOCHI
  3 | VARSHA   | BENGALUR
  4 | ANJALI   | CHENNAI
  5 | VAISHAK  | DELHI
(5 rows)



===========================================================================
CREATE TABLE customer(
    c_id SERIAL PRIMARY KEY,
    c_name VARCHAR(30) NOT NULL,
    city VARCHAR(50) NOT NULL,
    UNIQUE(c_name)
);

CREATE TABLE branch(
    b_id SERIAL PRIMARY KEY,
    b_name VARCHAR(30) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE deposit(
    acc_no INT PRIMARY KEY,
    c_id INT REFERENCES customer(c_id),
    b_id INT REFERENCES branch(b_id),
    amount NUMERIC,
    date_ date 
);

CREATE TABLE borrow(
    loan_no INT PRIMARY KEY,
    c_id INT REFERENCES customer(c_id),
    b_id INT REFERENCES branch(b_id),
    amount NUMERIC,
    date_ date 
);

insert into customer values
(1,'ABHILASH','MUMBAI'),
(2,'AJIN','KOCHI'),
(3,'VARSHA','BENGALUR'),
(4,'ANJALI','CHENNAI'),
(5,'VAISHAK','DELHI');

insert into branch values
(1001,'MUMBAI 1','MUMBAI'),
(1002,'KOCHI','KOCHI'),
(1003,'BENGALUR 4','BENGALUR'),
(1004,'CHENNAI 1','CHENNAI'),
(1005,'DELHI 4','DELHI');

insert into deposit values
(11,2,1002,10000,'2016-07-11'),
(22,4,1004,25000,'2017-01-15'),
(33,1,1001,50000,'2016-09-07'),
(44,3,1003,10000,'2018-01-07'),
(55,5,1005,30000,'2016-10-11');

insert into borrow values
(111,2,1002,50000,'2015-01-22'),
(222,4,1004,10000,'2016-11-06'),
(333,5,1005,10000,'2017-07-07');



