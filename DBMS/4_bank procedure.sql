-- QUESTION 4 - PROCEDURE
/*
BANK DATABASE
branch(b_id, bname, city)
customer(c_id, cname, city)
deposit(acc_no, c_id, b_id, amount, date)
borrow(loan_no, c_id, b_id, amount, date)
*/

-- 1) Find the number of customers who have loan in each branch

-- 2)List all details of all customers

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


