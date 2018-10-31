--*) List the details of student with st_fname like Aiswarya

SELECT CONCAT(st_fname,' ',st_lname) AS "Name" 
FROM student WHERE st_fname LIKE 'Aiswarya';
      Name       
-----------------
 Aiswarya A S
 Aiswarya Ramdas
(2 rows)


SELECT CONCAT(st_fname,' ',st_lname) AS "Name", class_name,division
FROM student NATURAL JOIN class_ WHERE st_fname LIKE 'Aiswarya';
      Name       | class_name | division 
-----------------+------------+----------
 Aiswarya A S    | Ten        | B
 Aiswarya Ramdas | Ten        | B
(2 rows)


/*STUDENTDATABASE
class_(class_id,class_name,division,st_cnt)
student(st_id,st_fname,st_lname,addr,phone,email,class_id)
teacher(teacher_id,fname,lname,phone,subject)
student_class(st_id,class_id,teacher_id)

1)create the tables and insert the values.
2)list all classes where strength is greater than 5.
3)list the names of students of Lina teacher.
4)list the names of all the english teachers.
5)list the names of teachers who teach standard 9.
6)find out all the classes that are taught by jaya teacher.
7)list the names and details of all students in standard 10.
8)list all the students whose first name is the same along with their student id.
9)list the name of students whose name starts with 's'
*/

2) SELECT class_name,division FROM class_ WHERE st_cnt>5;

3) SELECT CONCAT(S.st_fname,' ',S.st_lname) AS "Name" FROM student as S, teacher as T,stud_class as C
    WHERE T.tr_fname='Lina'and T.tr_id=C.tr_id and S.st_id=C.st_id;
    
4) SELECT CONCAT(tr_fname,' ',tr_lname) AS "Name" FROM teacher WHERE subject='English';

5) SELECT DISTINCT CONCAT(T.tr_fname,' ',T.tr_lname) AS "Name" FROM  teacher as T,stud_class as S,class_ as C
    WHERE C.class_name='Nine'and T.tr_id=S.tr_id and S.class_id=C.class_id;
    
6) SELECT DISTINCT class_name FROM teacher as T,stud_class as S,class_ as C
    WHERE T.tr_fname='Jaya'and T.tr_id=S.tr_id and S.class_id=C.class_id;
    
7) SELECT CONCAT(S.st_fname,' ',S.st_lname) AS "Name" FROM student as S,stud_class as A,class_ as C 
    WHERE C.class_name='Ten'and S.st_id=A.st_id and A.class_id=C.class_id;

CREATE TABLE class_(
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(30) NOT NULL,
    division VARCHAR(2) NOT NULL DEFAULT 'A',
    st_cnt INT NOT NULL CHECK(st_cnt>=0),
    UNIQUE(class_name,division)
);


CREATE TABLE student(
    st_id SERIAL PRIMARY KEY,
    st_fname VARCHAR(30) NOT NULL,
    st_lname VARCHAR(30) NOT NULL,
    addr VARCHAR(50) NOT NULL,
    phone VARCHAR(13),
    email VARCHAR(30),
    class_id INT REFERENCES class_(class_id)
);

CREATE TABLE teacher(tr_id SERIAL PRIMARY KEY,
                tr_fname VARCHAR(30) NOT NULL,
                tr_lname VARCHAR(30) NOT NULL,
                phone VARCHAR(13),
                subject VARCHAR(30) NOT NULL 
);

CREATE TABLE stud_class(st_id INT REFERENCES student(st_id),
                    class_id  INT REFERENCES class_(class_id),
                    tr_id  INT REFERENCES teacher(tr_id),
                    UNIQUE(st_id,class_id,tr_id)
);

INSERT INTO class_(class_name, st_cnt)
VALUES('Ten',65),
      ('Nine',65),
      ('Five',65);

INSERT INTO student(st_fname,st_lname,addr,phone,email,class_id)
VALUES('Abhilash1','R1','address1','+910000000001','email1@a.com',3),
      ('Abhilash2','R2','address2','+910000000002','email2@a.com',2),
      ('Abhilash3','R3','address3','+910000000003','email3@a.com',3),
      ('Abhilash4','R4','address4','+910000000004','email4@a.com',2),
      ('Abhilash5','R5','address5','+910000000005','email5@a.com',1),
      ('Abhilash6','R6','address6','+910000000006','email6@a.com',1),
      ('Abhilash7','R7','address7','+910000000007','email7@a.com',3),
      ('Abhilash8','R8','address8','+910000000008','email8@a.com',2),
      ('Abhilash9','R9','address9','+910000000009','email9@a.com',1),
      ('Abhilash10','R10','address10','+910000000010','email10@a.com',2);

INSERT INTO teacher(tr_fname,tr_lname,phone,subject)
VALUES('Dhanya','C K','+910000000021','TOC'),
      ('Balu','John','+910000000012','CN'),
      ('Beena','Stuwert','+910000000032','MPC');
      
INSERT INTO stud_class(st_id,class_id,tr_id)
VALUES
      (1,3,1),
      (3,2,3),
      (2,3,1),
      (4,2,3),
      (5,1,2),
      (6,1,2),
      (7,3,1),
      (8,2,3),
      (9,1,2),
      (10,2,3);
      
 UPDATE teacher SET subject = 'Science'   WHERE tr_id=1;     
      

#2)--Funtion to find the list of class with strength greater than n
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
    RETURN QUERY SELECT class_name,division, st_cnt
    FROM class_
    WHERE st_cnt>n;
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

#3)--List the details of student with st_fname like n
***********************

CREATE OR REPLACE FUNCTION fname1(name VARCHAR)
RETURNS TABLE(
s_fname VARCHAR,
s_lname VARCHAR,
c_name VARCHAR,
divs VARCHAR
)
AS
$$
BEGIN
    RETURN QUERY SELECT st_fname,st_lname,class_name,division
    FROM student NATURAL JOIN class_
    WHERE st_fname LIKE name;
END;
$$
LANGUAGE plpgsql;
=======================
OUTPUT:
=======================
abhi_student=# select * from fname('Ashwin');
 s_fname | s_lname | c_name | divs 
---------+---------+--------+------
 Ashwin  | Das     | Ten    | D
 Ashwin  | Titus   | Ten    | D
 Ashwin  | Pradeep | Ten    | D
(3 rows)


===================================================================================================================
 
      
