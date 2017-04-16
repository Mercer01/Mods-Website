--TO CREATE TABLE command IS "psql -f mods_table.sql -u postgres"

DROP DATABASE IF EXISTS modsdb;
CREATE DATABASE modsdb;

\c modsdb;

CREATE TABLE mods (
  ID SERIAL PRIMARY KEY,
  modname VARCHAR,
  shortname VARCHAR,
  type VARCHAR,
  size INTEGER
);

CREATE TABLE files (
	ID	SERIAL PRIMARY KEY,
	filename VARCHAR,
	filesize INTEGER,
	location VARCHAR,
	createddate DATE
	
	);

CREATE TABLE modpacks (
	ID SERIAL PRIMARY KEY,
	name VARCHAR,
	size INT,
	createddate DATE,
	Info Text
);
	
CREATE TABLE mod_files (
	ID SERIAL PRIMARY KEY,
	modID SERIAL,
	fileID SERIAL,
	createddate DATE,
	modPackID SERIAL
	);

  
INSERT INTO mods (modname, shortname,TYPE, size)
	VALUES ('Red Hammer Studios:USAF','RHS:USAF','Content','10000000');

INSERT INTO modpacks (name, size,Info,createddate)
	VALUES ('@taw_am2_core','1000','core',current_timestamp);
INSERT INTO modpacks (name, size,Info,createddate)
	VALUES ('@taw_am2_corev2','1000','corev2',current_timestamp);