-- Знайти 5 студентів із найбільшим середнім балом з усіх предметів --
SELECT
  students.fullname,
  ROUND(AVG(grades.grade), 1) AS average_grade
FROM grades
JOIN students ON students.id = grades.student_id
GROUP BY students.id
ORDER BY average_grade DESC
LIMIT 5;