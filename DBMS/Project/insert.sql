CREATE OR REPLACE FUNCTION c_insert(id INT,name VARCHAR(50),mail VARCHAR(100),pass VARCHAR(50),ph VARCHAR(20))
RETURNS void
AS
$$
BEGIN
	insert into customer values (id+2,name,mail,pass,ph);
END;
$$
LANGUAGE plpgsql;

select c_insert(1,'Ram','ram@gmail.com','ram','9468233115');

DROP FUNCTION c_insert(INT,VARCHAR(50),VARCHAR(100),VARCHAR(50),VARCHAR(20));

create or replace function c_in_tri()
returns trigger as
$$
begin
	insert into customer_backup values (1,NEW.c_id,NEW.c_name,NEW.c_email,NEW.c_password,NEW.c_ph,TG_OP,NOW());
	
	insert into active_log values (1,NEW.c_id,NOW(),'');
		return new;
end;
$$
language plpgsql;

create trigger c_intri after insert or update on customer
for each row execute PROCEDURE c_in_tri();

DROP TRIGGER c_intri on customer;
DROP FUNCTION c_in_tri();