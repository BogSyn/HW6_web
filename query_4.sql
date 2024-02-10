-- Знайти середній бал на потоці (по всій таблиці оцінок) --
SELECT
  ROUND(AVG(grades.grade), 1) AS average_grade
FROM grades;
