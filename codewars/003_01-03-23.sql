// <7 kyu> SQL Basics: Raise to the Power
// https://www.codewars.com/kata/594a8f653b5b4e8f3d000035
SELECT POW(number1, number2) AS result FROM decimals;
// <8 kyu> Is n divisible by x and y?
// https://www.codewars.com/kata/5545f109004975ea66000086
SELECT id,
CASE WHEN (n % x = 0) AND (n % y = 0) THEN true
ELSE false 
END AS res
FROM kata;
// <7 kyu> SQL with Sailor Moon: Thinking about JOINs..
// https://www.codewars.com/kata/5ab7a736edbcfc8e62000007
SELECT
  senshi_name AS sailor_senshi,
  real_name_jpn AS real_name,
  (CASE WHEN c.name = '' THEN '' ELSE c.name END) AS cat, -- case when unnecessary thanks to left join
  (CASE WHEN sc.school = '' THEN '' ELSE sc.school END) AS school -- case when unnecessary thanks to left join
FROM sailorsenshi s LEFT JOIN cats c
ON c.id = s.cat_id
LEFT JOIN schools sc
ON sc.id = s.school_id