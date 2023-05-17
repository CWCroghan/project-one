-- Database: toxic_site_hazards_db

-- DROP DATABASE IF EXISTS toxic_site_hazards_db;

CREATE DATABASE toxic_site_hazards_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE toxic_site_hazards_db
    IS 'Project 1';