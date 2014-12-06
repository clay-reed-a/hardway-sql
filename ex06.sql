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

/* Which pets are Clayton's? */ 

SELECT pet.id, pet.name, pet.age, pet.dead -- show pet data  
  FROM pet, person_pet, person -- use data about a person, a pet & their relationship 
  WHERE 
  pet.id = person_pet.pet_id AND
-- the pet's id must be a pet_id in person_pet & 
  person_pet.person_id = person.id AND 
-- the person's id must be a person_id in person_pet & 
  person.id = 1; 
-- the person's id must be 1 

/* Who owns The Bee? */ 

SELECT person.first_name, person.last_name
  FROM person, person_pet, pet 
  WHERE 
  pet.id = 0 AND 
  person.id = person_pet.person_id AND 
  pet.id = person_pet.pet_id;


/* How old is the person who owns Gigantor? */

SELECT person.age 
  FROM person, pet, person_pet 
  WHERE 
  pet.id = 3 AND 
  person.id = person_pet.person_id AND 
  person_pet.pet_id = pet.id; 
