CREATE TABLE ch01.lu_franchises (
    id char(3) PRIMARY KEY,
    franchises varchar(30)
);

INSERT INTO ch01.lu_franchises(id, franchises)
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