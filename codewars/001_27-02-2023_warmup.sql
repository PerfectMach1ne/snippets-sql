-- My baby level warmup
-- <8 kyu> Adults only (SQL for Beginners #1)
-- https://www.codewars.com/kata/590a95eede09f87472000213
SELECT name, age
FROM users
WHERE age >= 18;
-- <8 kyu> On the Canadian Border (SQL for Beginners #2)
-- https://www.codewars.com/kata/590ba881fe13cfdcc20001b4
SELECT name, country
FROM travelers
WHERE country NOT IN ('USA', 'Mexico', 'Canada');
-- <8 kyu> Register for the Party (SQL for Beginners #3)
-- https://www.codewars.com/kata/590ba881fe13cfdcc20001b4
INSERT INTO participants
VALUES ('Luka', 203, true);

SELECT * FROM participants;
-- <8 kyu> Collect Tuition (SQL for Beginners #4)
-- https://www.codewars.com/kata/5910b0d378cc2ba91400000b
SELECT *
FROM students
WHERE NOT tuition_received
-- <7 kyu> Best-Selling Books (SQL for Beginners #5)
-- https://www.codewars.com/kata/591127cbe8b9fb05bd00004b
SELECT name, author, copies_sold
FROM books
ORDER BY copies_sold DESC
LIMIT 5;
-- <7 kyu> Countries Capitals for Trivia Night (SQL for Beginners #6)
-- https://www.codewars.com/kata/5e5f09dc0a17be0023920f6f
SELECT capital
FROM countries
WHERE continent LIKE 'Afri_a' AND country like 'E%'
ORDER BY capital
LIMIT 3;