--TO CREATE TABLE command IS "psql -f mods_table.sql -u postgres"

DROP DATABASE IF EXISTS modsdb;
CREATE DATABASE modsdb;

\c modsdb;

CREATE TABLE mods (
  ID SERIAL PRIMARY KEY,
  mod_name VARCHAR,
  short_name VARCHAR,
  type VARCHAR,
  size INTEGER
);

CREATE TABLE files (
	ID	SERIAL PRIMARY KEY,
	filename VARCHAR,
	file_size INTEGER,
	location VARCHAR,
	createddate DATE	
);

CREATE TABLE mod_packs (
	ID SERIAL PRIMARY KEY,
	name VARCHAR,
	size INT,
	createddate DATE,
	Info Text
);
	
CREATE TABLE repositories ( 
	ID SERIAL PRIMARY KEY,
	repository_name VARCHAR,
	repository_size INT,
	info Text,
	
	createddate DATE,
	lastupdateddate DATE
);

CREATE TABLE repository_modpacks (
	ID SERIAL PRIMARY KEY,
	repository_id SERIAL,
	modpack_id SERIAL
);

CREATE TABLE mod_files (
	ID SERIAL PRIMARY KEY,
	modID SERIAL,
	fileID SERIAL,
	createddate DATE,
	modPackID SERIAL
	);

  
INSERT INTO mods (mod_name, short_name,TYPE, size)
	VALUES ('Red Hammer Studios:USAF','RHS:USAF','Content','10000000');

INSERT INTO mod_packs (name, size,Info,created_date)
	VALUES ('@taw_am2_core','1000','core',current_timestamp);
INSERT INTO mod_ packs (name, size,Info,created_date)
	VALUES ('@taw_am2_corev2','1000','corev2',current_timestamp);