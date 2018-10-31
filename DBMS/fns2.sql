#1)--INCREMENT
***********************

CREATE OR REPLACE FUNCTION inc(n INT)
RETURNS INT AS
$$
BEGIN
    RETURN n+1;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
fn2=# select inc(20);
 inc 
-----
  21
(1 row)
===================================================================================================================

#2)--SUM
***********************

CREATE OR REPLACE FUNCTION sum_(n1 INT, n2 INT)
RETURNS INT AS
$$
BEGIN
    RETURN n1+n2;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
fn2=# select sum_(20,30);
 sum_ 
------
   50
(1 row)
===================================================================================================================

#3)--SUM OF NATURAL NO.
***********************

CREATE OR REPLACE FUNCTION sum_nat(n INT)
RETURNS INT AS
$$
DECLARE
    c INT=1;
    s INT=0;
BEGIN
    LOOP
    EXIT WHEN c>n;
        s=s+c;
        c=c+1;
    END LOOP;     
    RETURN s;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
 select sum_nat(5);
 sum_nat 
---------
      15
(1 row)

===================================================================================================================

#4)--DIVISION
***********************

CREATE OR REPLACE FUNCTION div_(n1 INT, n2 INT)
RETURNS INT AS
$$
BEGIN
    RETURN n1/n2;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
fn2=# select ROUND(div_(20,5),2);
 round 
-------
  4.00
(1 row)

===================================================================================================================


#5)--EXECPTIONS
***********************

CREATE OR REPLACE FUNCTION ediv(n1 INT, n2 INT)
RETURNS INT AS
$$
BEGIN
    RETURN n1/n2;
    EXCEPTION
    WHEN division_by_zero THEN
    RAISE NOTICE 'Caught Division by Zero';
    RETURN 0;
    WHEN others THEN
    RAISE NOTICE 'An exception has occured';
    RETURN 0;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
fn2=# select ROUND(ediv(20,0),2);
NOTICE:  Caught Division by Zero
 round 
-------
  0.00
(1 row)


===================================================================================================================


#6)--FIBONACCI
***********************
CREATE OR REPLACE FUNCTION fib(f INT) 
RETURNS INT AS
$$
BEGIN
    WITH RECURSIVE t(a,b) AS (
        VALUES(0,1)
    UNION ALL
        SELECT greatest(a,b), a + b AS a FROM t
        WHERE b < $1
   )
SELECT a FROM t;
$$;

CREATE OR REPLACE FUNCTION ediv(n1 INT, n2 INT)
RETURNS INT AS
$$
BEGIN
    RETURN n1/n2;
    EXCEPTION
    WHEN division_by_zero THEN
    RAISE NOTICE 'Caught Division by Zero';
    RETURN 0;
    WHEN others THEN
    RAISE NOTICE 'An exception has occured';
    RETURN 0;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================


===================================================================================================================



#7)--PRIME OR NOT
***********************

=======================
OUTPUT:
=======================


===================================================================================================================


#8)--PRIME OR NOT
***********************

=======================
OUTPUT:
=======================


===================================================================================================================

#9)--Largest and Smallet in 3 numbers
***********************

CREATE OR REPLACE FUNCTION hi_low(n1 INT, n2 INT, n3 INT,OUT high INT, OUT low INT )
AS
$$
BEGIN
    --GREATEST() returns the largest value
    high = GREATEST(n1,n2,n3);
    --LEAST() returns the smallest value
    low = LEAST(n1,n2,n3); 
END;
$$
LANGUAGE plpgsql;

=======================
OUTPUT:
=======================
fn2=# select hi_low(7,4,9);
 hi_low 
--------
 (9,4)
(1 row)


===================================================================================================================


#10)--Funtion to test user defined exception
***********************

CREATE OR REPLACE FUNCTION texcep1()
RETURNS VOID AS
$$
DECLARE
    v INT=1;
BEGIN
    RAISE EXCEPTION 'Custom made exception'--excep1()
    USING HINT= 'For exception testing purpose';--excep1()
    --RAISE NOTICE 'The value of v is %',v; //excep()
END;
$$
LANGUAGE plpgsql;

=======================
OUTPUT:
=======================

excep():
~~~~~~~~~
fn2=# select texcep();
NOTICE:  The value of v is 1
 texcep 
--------
 
(1 row)

excep1():
~~~~~~~~~
fn2=# select texcep1();
ERROR:  Custom made exception
HINT:  For exception testing purpose


===================================================================================================================

#11)--QUERY WITH FUNCTION
***********************

CREATE OR REPLACE FUNCTION lst(n INT)
RETURNS TABLE(
c_name VARCHAR,
divs VARCHAR,
cnt INT
)
AS
$$
BEGIN
    RETURN QUERY SELECT *
    FROM class_
    WHERE st_cnt>n;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================

abhi_student=# select * from lst(5);
 c_name | divs | cnt 
--------+------+-----
 Ten    | D    |   6
 Ten    | E    |   7
 Ten    | F    |   8
(3 rows)

===================================================================================================================
 
      

