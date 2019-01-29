DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Gábor Budai');
INSERT INTO people (name) VALUES ('Abigaila Ekiert');
INSERT INTO people (name) VALUES ('Nuno Farinha');
INSERT INTO people (name) VALUES ('Ruben Franco Sanchez');
INSERT INTO people (name) VALUES ('Richard Haigh');
INSERT INTO people (name) VALUES ('Chika Kanu');
INSERT INTO people (name) VALUES ('Aaron McFaull');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('John Polson');
INSERT INTO people (name) VALUES ('Kiran Qureshi');
INSERT INTO people (name) VALUES ('Ethan Radcliffe');
INSERT INTO people (name) VALUES ('Janapoles Ramos');
INSERT INTO people (name) VALUES ('Gordon Renfrew');
INSERT INTO people (name) VALUES ('Pauline Rudge');
INSERT INTO people (name) VALUES ('Martin Selis');
INSERT INTO people (name) VALUES ('Alex Shing');
INSERT INTO people (name) VALUES ('Anita Squires');
INSERT INTO people (name) VALUES ('Anthatony Starkes');
INSERT INTO people (name) VALUES ('Elisa Sveinsdottir');
INSERT INTO people (name) VALUES ('Hamish Whyte');
INSERT INTO people (name) VALUES ('Matthew Woodley');
INSERT INTO people (name) VALUES ('Emil Zacharczuk');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:00');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '17:10');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '13:05');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '19:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Infinity War', 2018, '18:50');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man and the Wasp', 2018, '19:55');


Return ALL the data in the 'movies' table.
-- SELECT * FROM  movies;
-- SELECT * FROM people;
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:10
 2 | The Incredible Hulk                 | 2008 | 15:55
 3 | Iron Man 2                          | 2010 | 14:05
 4 | Thor                                | 2011 | 12:25
 5 | Captain America: The First Avenger  | 2011 | 14:00
 6 | Avengers Assemble                   | 2012 | 12:45
 7 | Iron Man 3                          | 2013 | 12:05
 8 | Thor: The Dark World                | 2013 | 21:25
 9 | Batman Begins                       | 2005 | 17:10
10 | Captain America: The Winter Soldier | 2014 | 19:30
11 | Guardians of the Galaxy             | 2014 | 12:55
12 | Avengers: Age of Ultron             | 2015 | 23:40
13 | Ant-Man                             | 2015 | 19:45
14 | Captain America: Civil War          | 2016 | 12:45
15 | Doctor Strange                      | 2016 | 19:05
16 | Guardians of the Galaxy 2           | 2017 | 21:55
17 | Spider-Man: Homecoming              | 2017 | 14:05
18 | Thor: Ragnarok                      | 2017 | 13:05
19 | Black Panther                       | 2018 | 19:55
20 | Avengers Infinity War               | 2018 | 18:50
21 | Ant-Man and the Wasp                | 2018 | 19:55
(21 rows)


----+----------------------
 1 | Gábor Budai
 2 | Abigaila Ekiert
 3 | Nuno Farinha
 4 | Ruben Franco Sanchez
 5 | Richard Haigh
 6 | Chika Kanu
 7 | Aaron McFaull
 8 | Craig Morton
 9 | John Polson
10 | Kiran Qureshi
11 | Ethan Radcliffe
12 | Janapoles Ramos
13 | Gordon Renfrew
14 | Pauline Rudge
15 | Martin Selis
16 | Alex Shing
17 | Anita Squires
18 | Anthatony Starkes
19 | Elisa Sveinsdottir
20 | Hamish Whyte
21 | Matthew Woodley
22 | Emil Zacharczuk

Return ONLY the name column from the 'people' table
SELECT name FROM people;
name
----------------------
Gábor Budai
Abigaila Ekiert
Nuno Farinha
Ruben Franco Sanchez
Richard Haigh
Chika Kanu
Aaron McFaull
Craig Morton
John Polson
Kiran Qureshi
Ethan Radcliffe
Janapoles Ramos
Gordon Renfrew
Pauline Rudge
Martin Selis
Alex Shing
Anita Squires
Anthatony Starkes
Elisa Sveinsdottir
Hamish Whyte
Matthew Woodley
:
--


-- Oops! Someone at CodeClan spelled Anthony's name wrong! Change it to reflect the proper spelling ('Anthatony Starkes' should be 'Anthony Starke').

UPDATE people SET name = 'Anthony Starke' WHERE name = 'Anthatony Starkes';
SELECT * FROM people;

UPDATE 1
 id |         name
----+----------------------
  1 | Gábor Budai
  2 | Abigaila Ekiert
  3 | Nuno Farinha
  4 | Ruben Franco Sanchez
  5 | Richard Haigh
  6 | Chika Kanu
  7 | Aaron McFaull
  8 | Craig Morton
  9 | John Polson
 10 | Kiran Qureshi
 11 | Ethan Radcliffe
 12 | Janapoles Ramos
 13 | Gordon Renfrew
 14 | Pauline Rudge
 15 | Martin Selis
 16 | Alex Shing
 17 | Anita Squires
 19 | Elisa Sveinsdottir
 20 | Hamish Whyte
 21 | Matthew Woodley
 22 | Emil Zacharczuk
 18 | Anthony Starke
(22 rows)


DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
UPDATE 1


Return ONLY your name from the 'people' table.

SELECT * FROM people WHERE name = 'Chika Kanu';
-- id |    name
-- ----+------------
--  6 | Chika Kanu
-- (1 row)

-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;
id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 23:10
  2 | The Incredible Hulk                 | 2008 | 15:55
  3 | Iron Man 2                          | 2010 | 14:05
  4 | Thor                                | 2011 | 12:25
  5 | Captain America: The First Avenger  | 2011 | 14:00
  6 | Avengers Assemble                   | 2012 | 12:45
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 21:25
 10 | Captain America: The Winter Soldier | 2014 | 19:30
 11 | Guardians of the Galaxy             | 2014 | 12:55
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 19:45
 14 | Captain America: Civil War          | 2016 | 12:45
 15 | Doctor Strange                      | 2016 | 19:05
 16 | Guardians of the Galaxy 2           | 2017 | 21:55
 17 | Spider-Man: Homecoming              | 2017 | 14:05
 18 | Thor: Ragnarok                      | 2017 | 13:05
 19 | Black Panther                       | 2018 | 19:55
 20 | Avengers Infinity War               | 2018 | 18:50
 21 | Ant-Man and the Wasp                | 2018 | 19:55
(20 rows)


Create a new entry in the 'people' table with the name of one of the instructors.

    INSERT INTO people(name)
		VALUES ('Sandy Mcmillan');

		SELECT * FROM people;

		id |         name
		----+----------------------
		  1 | Gábor Budai
		  2 | Abigaila Ekiert
		  3 | Nuno Farinha
		  4 | Ruben Franco Sanchez
		  5 | Richard Haigh
		  6 | Chika Kanu
		  7 | Aaron McFaull
		  8 | Craig Morton
		  9 | John Polson
		 10 | Kiran Qureshi
		 11 | Ethan Radcliffe
		 12 | Janapoles Ramos
		 13 | Gordon Renfrew
		 14 | Pauline Rudge
		 15 | Martin Selis
		 16 | Alex Shing
		 17 | Anita Squires
		 18 | Anthatony Starkes
		 19 | Elisa Sveinsdottir
		 20 | Hamish Whyte
		 21 | Matthew Woodley
		 22 | Emil Zacharczuk
		 23 | Sandy Mcmillan
		(23 rows)


Craig Morton has decided to hijack our movie evening, remove him from the table of people.

DELETE FROM people WHERE name = 'Craig Morton';

SELECT * FROM people;

DELETE 1
 id |         name
----+----------------------
  1 | Gábor Budai
  2 | Abigaila Ekiert
  3 | Nuno Farinha
  4 | Ruben Franco Sanchez
  5 | Richard Haigh
  6 | Chika Kanu
  7 | Aaron McFaull
  9 | John Polson
 10 | Kiran Qureshi
 11 | Ethan Radcliffe
 12 | Janapoles Ramos
 13 | Gordon Renfrew
 14 | Pauline Rudge
 15 | Martin Selis
 16 | Alex Shing
 17 | Anita Squires
 18 | Anthatony Starkes
 19 | Elisa Sveinsdottir
 20 | Hamish Whyte
 21 | Matthew Woodley
 22 | Emil Zacharczuk
(21 rows)


-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Captain Marvel'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2010, '22:10');

SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:10
 2 | The Incredible Hulk                 | 2008 | 15:55
 3 | Iron Man 2                          | 2010 | 14:05
 4 | Thor                                | 2011 | 12:25
 5 | Captain America: The First Avenger  | 2011 | 14:00
 6 | Avengers Assemble                   | 2012 | 12:45
 7 | Iron Man 3                          | 2013 | 12:05
 8 | Thor: The Dark World                | 2013 | 21:25
 9 | Batman Begins                       | 2005 | 17:10
10 | Captain America: The Winter Soldier | 2014 | 19:30
11 | Guardians of the Galaxy             | 2014 | 12:55
12 | Avengers: Age of Ultron             | 2015 | 23:40
13 | Ant-Man                             | 2015 | 19:45
14 | Captain America: Civil War          | 2016 | 12:45
15 | Doctor Strange                      | 2016 | 19:05
16 | Guardians of the Galaxy 2           | 2017 | 21:55
17 | Spider-Man: Homecoming              | 2017 | 14:05
18 | Thor: Ragnarok                      | 2017 | 13:05
19 | Black Panther                       | 2018 | 19:55
20 | Avengers Infinity War               | 2018 | 18:50
21 | Ant-Man and the Wasp                | 2018 | 19:55
22 | Captain Marvel                      | 2010 | 22:10
(22 rows)



The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

UPDATE movies SET show_time = '14:55' WHERE title = 'Guardians of the Galaxy 2';

SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:10
 2 | The Incredible Hulk                 | 2008 | 15:55
 3 | Iron Man 2                          | 2010 | 14:05
 4 | Thor                                | 2011 | 12:25
 5 | Captain America: The First Avenger  | 2011 | 14:00
 6 | Avengers Assemble                   | 2012 | 12:45
 7 | Iron Man 3                          | 2013 | 12:05
 8 | Thor: The Dark World                | 2013 | 21:25
 9 | Batman Begins                       | 2005 | 17:10
10 | Captain America: The Winter Soldier | 2014 | 19:30
11 | Guardians of the Galaxy             | 2014 | 12:55
12 | Avengers: Age of Ultron             | 2015 | 23:40
13 | Ant-Man                             | 2015 | 19:45
14 | Captain America: Civil War          | 2016 | 12:45
15 | Doctor Strange                      | 2016 | 19:05
17 | Spider-Man: Homecoming              | 2017 | 14:05
18 | Thor: Ragnarok                      | 2017 | 13:05
19 | Black Panther                       | 2018 | 19:55
20 | Avengers Infinity War               | 2018 | 18:50
21 | Ant-Man and the Wasp                | 2018 | 19:55
16 | Guardians of the Galaxy 2           | 2017 | 14:55
(21 rows)

Deklete multiple data from the database:

DELETE FROM movies WHERE id > 15;

SELECT * FROM movies;

DELETE 6
 id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 23:10
  2 | The Incredible Hulk                 | 2008 | 15:55
  3 | Iron Man 2                          | 2010 | 14:05
  4 | Thor                                | 2011 | 12:25
  5 | Captain America: The First Avenger  | 2011 | 14:00
  6 | Avengers Assemble                   | 2012 | 12:45
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 21:25
  9 | Batman Begins                       | 2005 | 17:10
 10 | Captain America: The Winter Soldier | 2014 | 19:30
 11 | Guardians of the Galaxy             | 2014 | 12:55
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 19:45
 14 | Captain America: Civil War          | 2016 | 12:45
 15 | Doctor Strange                      | 2016 | 19:05
(15 rows)
