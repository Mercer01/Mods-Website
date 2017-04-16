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
	modID SERIAL FOREIGN KEY,
	fileID SERIAL FOREIGN KEY,
	createddate DATE,
	modPackID SERIAL FOREIGN KEY
	);

  
INSERT INTO mods (modname, shortname,TYPE, size)
	VALUES ('Red Hammer Studios:USAF','RHS:USAF','Content','10000000');