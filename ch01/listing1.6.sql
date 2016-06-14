--Final Query

SELECT f.franchise, COUNT(DISTINCT r.id) AS total
FROM
    ch01.restaurants AS r INNER JOIN
    ch01.lu_franchises AS f on r.franchise = f.id INNER JOIN
    ch01.highways AS h on ST_DWithin(r.geom, h.geom, 1609)
GROUP BY f.franchise
ORDER BY total DESC;

-- Returns

--        franchise       | total
-- -----------------------+-------
--  McDonald              |  5343
--  Burger King           |  3049
--  Pizza Hut             |  2920
--  Wendy's               |  2446
--  Taco Bell             |  2428
--  Kentucy Fried Chicken |  2371
--  Hardee                |  1077
--  Jack in the Box       |   509
--  Carl's Jr             |   224
--  In-N-Out              |    44
-- (10 rows)