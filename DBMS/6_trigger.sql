/*
TRIGGERS
department(dept_id,dept_name)
employee(emp_id,name,dob,doj,sal,dept_id)
emp_backup(emp_id,name,dob,doj,sal,dept_id,date_of_op,type_of_op)
income_tax(emp_id,name,dob,doj,sal,dept_id,tax_amount)
*/

--1) Write a trigger which converts employee name in toupper case if it is entered in lowercase.
--2) Write a trigger that stores that data of emplyee table in emp_backup for every delete operation and store the old data for every update operation
--3) Write a trigger which displays the message 'updating', 'deleting' or 'inserting' when the corresponding operation is performed on the employee table.
--4)Writeatriggerthatensuresthattheemp_idisoftheform'E_____'.Iftheinsertedidisnotinthisformconvertitandtheninserted
--5) Write a trigger that checks the age of the employee while inserting the record in employee table. If age is negative generate error and display proper message.
--6) Create and execute a trigger that allows updation only if the new salary is 80% morethan the original salary.
--7)Write a trigger to calculate income tax and insert it into income_taxtable. Calculate income tax as follows if the annual income is:
	--a) Greater than 15000 but lessthan 100000 tax is 10% of annual salary.
	--b) Greater than 100000 but lessthan 200000 tax is 15% of annual salary.
	--c) Greater than 200000 tax is 20$ of annual salary.
  
  
