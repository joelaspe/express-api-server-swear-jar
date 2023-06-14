DROP DATABASE IF EXISTS swearjar;
CREATE DATABASE swearjar;
DROP USER IF EXISTS swearjarapi;
CREATE USER swearjarapi PASSWORD 'swearjarapi';
\c swearjar

CREATE TABLE people (
  person_id SERIAL PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE swears (
  id SERIAL PRIMARY KEY,
  date_created TIMESTAMP,
  person_id integer REFERENCES people(person_id) ON DELETE CASCADE
);
GRANT SELECT, UPDATE, DELETE, INSERT ON people TO swearjarapi;
GRANT UPDATE ON SEQUENCE people_person_id_seq TO swearjarapi;
GRANT SELECT, UPDATE, DELETE, INSERT ON swears TO swearjarapi;
GRANT UPDATE ON SEQUENCE swears_id_seq TO swearjarapi;

