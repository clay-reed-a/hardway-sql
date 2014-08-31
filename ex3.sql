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
	dead INTEGER, 
	person_id INTEGER 
);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Clayton", "Albachten", 27); 

INSERT INTO pet (id, name, breed, age, dead, person_id)
	VALUES (0, "Fritz", "Weimaraner", 70, 1, 0); 

-- forgot "person_id" in the parameter parenthesis & so 
-- Error: near line 20: 6 values for 5 columns
-- Thought for nearly half a minute this was because 
-- "sqlite thought the table was too small." 
-- Even went in & looked at .schema
-- Stupid! 