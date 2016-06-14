CREATE TABLE ch01.highways (
    gid integer NOT NULL,
    feature character varying(80),
    name character varying(120),
    state character varying(2),
    geom geometry(multilinestring, 2163),
    CONSTRAINT pk_highways PRIMARY KEY (gid)
);

CREATE INDEX idx_highways ON ch01.highways USING gist(geom);

-- SSH to vagrant machine to load highways shapefile

-- vagrant ssh
-- shp2pgsql -s 4269:2163 -g geom -I roadtrl020.shp ch01.highways_staging | \
--    psql -h localhost -U postgis -d postgis_in_action


-- Copy from highways_staging to highways

-- INSERT INTO ch01.highways (gid, feature, name, state, geom)
-- SELECT gid, feature, name, state, ST_Transform(geom, 2163)
-- FROM ch01.highways_staging
-- WHERE feature LIKE 'Principal Highway%';