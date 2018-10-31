#1)INCREMENTING
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

#2)SUM
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

#3)SUM OF NATURAL NO.
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

#4)DIVISION
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


#5)EXECPTIONS
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


