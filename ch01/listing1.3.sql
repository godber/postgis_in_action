
-- Austin's Note: geom is a bad name here, I would use location instead.

CREATE TABLE ch01.restaurants (
    id serial PRIMARY KEY,
    franchise char(3) NOT NULL,
    geom geometry(point, 2163)
);

-- Indexes and foreign key relationship created after listing 1.3

CREATE INDEX idx_code_restaurants_geom ON ch01.restaurants USING gist(geom);

ALTER TABLE ch01.restaurants
    ADD CONSTRAINT fk_restaurants_lu_franchises FOREIGN KEY (franchise)
    REFERENCES ch01.lu_franchises (id) ON UPDATE CASCADE ON DELETE RESTRICT;

CREATE INDEX fki_restaurants_franchises ON ch01.restaurants (franchise);