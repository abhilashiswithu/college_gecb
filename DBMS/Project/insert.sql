CREATE OR REPLACE FUNCTION c_insert(id INT,name VARCHAR(50),mail VARCHAR(100),pass VARCHAR(50),ph VARCHAR(20))
RETURNS void
AS
$$
BEGIN
	insert into customer values (id,name,mail,pass,ph);
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION booking(cid INT,tid INT,pid INT,bid INT,mid INT,tamt INT,btic INT)
RETURNS void
AS
$$
BEGIN
	insert into transaction values (tid,CURRENT_DATE,tamt);
	insert into payment values (pid,tid,CURRENT_DATE);
	insert into booking values (bid,cid,pid,mid,btic,CURRENT_DATE);

END;
$$
LANGUAGE plpgsql;

select c_insert(1,'Ram','ram@gmail.com','ram','9468233115');

DROP FUNCTION c_insert(INT,VARCHAR(50),VARCHAR(100),VARCHAR(50),VARCHAR(20));

create or replace function c_in_tri()
returns trigger as
$$
begin
	insert into customer_backup values (NEW.c_id,NEW.c_id,NEW.c_name,NEW.c_email,NEW.c_password,NEW.c_ph,TG_OP,NOW());
	
	insert into active_log values (NEW.c_id,NEW.c_id,CURRENT_DATE,CURRENT_DATE);
		return new;
end;
$$
language plpgsql;

create trigger c_intri after insert or update on customer
for each row execute PROCEDURE c_in_tri();

DROP TRIGGER c_intri on customer;
DROP FUNCTION c_in_tri();


create table cust_backup(
id serial primary key,
name varchar(50)
);


create or replace function customer_back()
returns void as
$$
declare
rec record;
cur CURSOR for select * from customer;
begin
		for rec in cur
		loop
			insert into cust_backup(name) values(rec.c_name);
		end loop;
end;
$$
language plpgsql;
select customer_back();
select * from cust_backup;

create or replace function cursor1()
returns void as
$$
declare
rec record;
cur CURSOR for select * from customer;
begin
		for rec in cur
		loop
			raise notice '%',rec.c_name;
		end loop;
end;
$$
language plpgsql;
select cursor1();

select * from customer;