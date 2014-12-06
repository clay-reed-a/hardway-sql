/* db schema */

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

-- a seperate relationship table 
-- allows for multiple owners of a pet 

CREATE TABLE person_pet ( 
	person_id INTEGER,
	pet_id INTEGER 
);


/* demo data */

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Cheryl", "Wu", 21);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (1, "Clayton", "Albachten", 26);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "The Bee", "Bee", 2, 0);


/* now both Cheryl & Clayton can own the Bee */

INSERT INTO person_pet (person_id, pet_id) 
	VALUES (0, 0);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 0); 
