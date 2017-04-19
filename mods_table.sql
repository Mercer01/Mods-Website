--TO CREATE TABLE command IS "psql -f mods_table.sql -u postgres"

DROP DATABASE IF EXISTS modsdb;
CREATE DATABASE modsdb;

\c modsdb;

CREATE TABLE mods (
  ID SERIAL PRIMARY KEY,
  mod_name VARCHAR,
  short_name VARCHAR,
  type VARCHAR,
  size INTEGER,
  assets_added Text[],
  creator_name VARCHAR,
  lastupdated date,
  createddate date,
  url Text,
  requires_update BOOLEAN,
  version Text,
  required_mods Text[],
  in_use BOOLEAN
);

CREATE TABLE files (
	ID	SERIAL PRIMARY KEY,
	filename VARCHAR,
	file_size INTEGER,
	location VARCHAR,
<<<<<<< HEAD
	createddate DATE	
);
=======
	created_date DATE,
	requires_update BOOLEAN
	);
>>>>>>> origin/master

CREATE TABLE mod_packs (
	ID SERIAL PRIMARY KEY,
	name VARCHAR,
	size INT,
	created_date DATE,
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
	modPackId SERIAL,
	created_date DATE
	);

  
INSERT INTO mods (mod_name, short_name,TYPE, SIZE,assets_added,creator_name,lastupdated,createddate,url,requires_update,version, required_mods,in_use)
	VALUES ('Red Hammer Studios:USAF','RHS:USAF','Content','10000000','{"lots of them","more"}','bob', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'ww.com',FALSE,'alpha 1.2','{"CBA"}',true);

INSERT INTO mod_packs (name, size,Info,created_date)
	VALUES ('@taw_am2_core','1000','core',current_timestamp);
INSERT INTO mod_packs (name, size,Info,created_date)
	VALUES ('@taw_am2_corev2','1000','corev2',current_timestamp);
	
	
insert into files (filename, file_size, location ,created_date)
Values ('testfile','1000','A Path',current_timestamp);