CREATE OR REPLACE FUNCTION etstcur()
RETURNS VOID AS
$$
DECLARE
    rec RECORD;
    cur CURSOR FOR SELECT st_fname FROM student LIMIT 5;
BEGIN
    FOR rec IN cur
    LOOP
        RAISE NOTICE 'fname : % , lname : %', rec.st_fname, rec.st_lname;
    END LOOP;
END;
$$
LANGUAGE plpgsql;
