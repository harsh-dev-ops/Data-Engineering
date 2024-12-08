CREATE DATABASE retail_db;

CREATE USER retail_user WITH ENCRYPTED PASSWORD 'Retail123';

ALTER ROLE retail_user SET client_encoding TO 'utf8';
ALTER ROLE retail_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE retail_user SET timezone TO 'Asia/Kolkata';
GRANT ALL ON DATABASE retail_db TO retail_user;
ALTER DATABASE retail_db OWNER TO retail_user;

-- GRANT ALL PRIVILEGES ON DATABASE retail_db TO retail_user;
-- GRANT ALL PRIVILEGES ON SCHEMA public TO retail_user;
-- -- \c retail_db postgres
-- GRANT ALL ON SCHEMA public TO retail_user;
-- GRANT USAGE ON SCHEMA public TO retail_user;
