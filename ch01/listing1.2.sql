-- pre listing 1.2 - Creating the schema

CREATE SCHEMA ch01

-- Begin listing 1.2

CREATE TABLE ch01.lu_franchises (
    id char(3) PRIMARY KEY,
    franchise varchar(30)
);

INSERT INTO ch01.lu_franchises(id, franchise)
VALUES
    ('BKG', 'Burger King'),
    ('CJR', 'Carl''s Jr'),
    ('HDE', 'Hardee'),
    ('INO', 'In-N-Out'),
    ('JIB', 'Jack in the Box'),
    ('KFC', 'Kentucy Fried Chicken'),
    ('MCD', 'McDonald'),
    ('PZH', 'Pizza Hut'),
    ('TCB', 'Taco Bell'),
    ('WDY', 'Wendy''s')