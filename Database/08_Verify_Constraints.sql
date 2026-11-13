USE universe_db;

SELECT * FROM department;
SELECT * FROM semester;
SELECT * FROM classroom;
SELECT * FROM student;
SELECT * FROM faculty;
SELECT * FROM course;

SELECT
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'universe_db'
AND REFERENCED_TABLE_NAME IS NOT NULL;

-- 1. CHECK PRIMARY KEY
SHOW KEYS FROM student
WHERE Key_name = 'PRIMARY';

-- 2. CHECK UNIQUE CONSTRAINTS AND INDEXES
SHOW INDEX FROM student;

-- 3. CHECK STUDENT TABLE STRUCTURE AND FOREIGN KEY
SHOW CREATE TABLE student;

-- 4. CHECK NOT NULL CONSTRAINTS
DESCRIBE student;

-- 5. CHECK DUPLICATE STUDENT EMAILS
SELECT
    email,
    COUNT(*) AS total
FROM student
GROUP BY email
HAVING COUNT(*) > 1;

-- 6. CHECK INVALID DEPARTMENT REFERENCES
SELECT s.*
FROM student s
LEFT JOIN department d
ON s.department_id = d.department_id
WHERE d.department_id IS NULL;

-- 7. CHECK INVALID FACULTY DEPARTMENT REFERENCES
SELECT f.*
FROM faculty f
LEFT JOIN department d
ON f.department_id = d.department_id
WHERE d.department_id IS NULL;

-- 8. CHECK INVALID ENROLLMENT REFERENCES
SELECT e.*
FROM enrollment e
LEFT JOIN student s ON e.student_id = s.student_id
LEFT JOIN course c ON e.course_id = c.course_id
LEFT JOIN semester sem ON e.semester_id = sem.semester_id
WHERE s.student_id IS NULL
   OR c.course_id IS NULL
   OR sem.semester_id IS NULL;

-- 9. CHECK DUPLICATE ENROLLMENTS
SELECT
    student_id,
    course_id,
    semester_id,
    COUNT(*) AS total
FROM enrollment
GROUP BY student_id, course_id, semester_id
HAVING COUNT(*) > 1;
