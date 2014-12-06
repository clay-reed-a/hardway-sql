/* reset db */

DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet; 

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

INSERT INTO person (id, first_name, last_name, age) 
  VALUES (2, "Zed", "Shaw", 37); -- Zed is older than Clayton 

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "The Bee", "Bee", 2, 0);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (1, "The Little Bee", "Bee", 1, 0);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (2, "Fritz", "Weimaraner", 98, 1);

INSERT INTO pet (id, name, breed, age, dead) 
  VALUES (3, "Gigantor", "Robot", 1, 1);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (4, "Fluffy", "Unicorn", 1000, 0);


/* now both Cheryl & Clayton can own the Bees */

INSERT INTO person_pet (person_id, pet_id) 
	VALUES (0, 0);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 0); 

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (0, 1);

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 1); 

/* more pets */

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 2); -- Cheryl never got to meet Fritz 

-- Zed's pets -- 

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (2, 3);

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (2, 4); 

/* select from the tables */

SELECT * FROM person; 
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead = 0;
SELECT * FROM person WHERE first_name != "Zed";
SELECT * FROM pet WHERE age > 10; -- all pets older than 10 
SELECT * FROM person WHERE age < 26; 
SELECT * FROM person WHERE first_name = "Zed" AND age > 30; 
SELECT name FROM pet WHERE breed = "Bee" AND dead = 0 OR name = "Fluffy";
