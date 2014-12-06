/* relations */

-- In the real world, a cat can be stray & 
-- a car can be sitting by the side of the road but 
-- in SQLand...   

CREATE TABLE person ( 
	id INTEGER PRIMARY KEY, 
	first_name TEXT, 
	last_name TEXT, 
	age INTEGER 
	-- no foreign key, a person owns everything & 
	-- nothing owns a person -- 
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY, 
	name TEXT, 
	breed TEXT, 
	age INTEGER, 
	dead INTEGER, 
	person_id INTEGER -- foreign key, cat lady has many cats   
);

CREATE TABLE car (
	id INTEGER PRIMARY KEY, 
	make TEXT, 
	model TEXT, 
	color TEXT, 
	person_id INTEGER -- foreign key, bastard has many cars 
);

-- NOTE TO SELF: weirdly, .schema in sqlite shell  
-- shows fairly well just 
-- the exact contents of this file, 
-- newlines & all.