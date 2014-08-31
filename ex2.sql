-- relations --

CREATE TABLE person_pet (person_id INTEGER, pet_id INTEGER);

CREATE TABLE person (
	id INTEGER PRIMARY KEY, 
	first_name TEXT, 
	last_name TEXT, 
	age INTEGER 
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY, 
	name TEXT, 
	breed TEXT, 
	age INTEGER, 
	dead INTEGER  
);

/* curiously, entering the .schema command 
inside the sqlite shell 
shows fairly well the exact contents of this file */