-- Codewars <6 kyu> "SQL Basics: Simple table totaling."
-- https://www.codewars.com/kata/5809575e166583acfa000083
-- My first 6kyu thingy that taught me the existence of RANK() OVER and COALESCE() (though I didn't need to use that one)
-- PostgreSQL syntax
SELECT
  RANK() OVER (
    ORDER BY COUNT(points) DESC
  ) rank,
  CASE WHEN clan = '' THEN '[no clan specified]' ELSE clan END,
  COUNT(points) AS total_points,
  COUNT(*) AS total_people
FROM people
GROUP BY clan
ORDER BY total_points DESC;
