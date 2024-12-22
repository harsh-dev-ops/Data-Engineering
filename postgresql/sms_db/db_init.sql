CREATE USER sms_user WITH ENCRYPTED PASSWORD 'Sms123';

ALTER ROLE sms_user SET client_encoding TO 'utf8';
ALTER ROLE sms_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE sms_user SET timezone TO 'Asia/Kolkata';

CREATE DATABASE sms_db;
GRANT ALL ON DATABASE sms_db TO sms_user;
ALTER DATABASE sms_db OWNER TO sms_user;