/* reset db */

DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet; 

/* Schema */

-- people -- 

CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT, 
	age INTEGER  
);

-- pets -- 

CREATE TABLE pet (
	id INTEGER PRIMARY KEY, 
	name TEXT, 
	breed TEXT, 
	age INTEGER, 
	dead INTEGER
);

-- ownership -- 

CREATE TABLE person_pet ( 
	person_id INTEGER,
	pet_id INTEGER 
);


/* People Data */

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Cheryl", "Wu", 21);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (1, "Clayton", "Albachten", 26);

INSERT INTO person (id, first_name, last_name, age) 
  VALUES (2, "Zed", "Shaw", 37);  

/* Pets Data */

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

/* Ownership Data */

INSERT INTO person_pet (person_id, pet_id) 
	VALUES (0, 0);

INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 0); 

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (0, 1);

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 1); 

INSERT INTO person_pet (person_id, pet_id)
  VALUES (1, 2); 

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (2, 3);

INSERT INTO person_pet (person_id, pet_id) 
  VALUES (2, 4); 

-- Don't talk about Gigantor in front of Zed --

SELECT * FROM pet; 

UPDATE pet SET name = "Zed's Dead Pet"
  WHERE id IN (
    SELECT person_pet.pet_id FROM person_pet 
    WHERE person_id = 2 
) AND 
  dead = 1;

SELECT * FROM pet; 
