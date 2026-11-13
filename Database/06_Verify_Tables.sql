
-- =========================================
-- UniVerse: Verify All Table Structures
-- =========================================

USE universe_db;

-- 1. Department
DESCRIBE department;

-- 2. Student
DESCRIBE student;

-- 3. Faculty
DESCRIBE faculty;

-- 4. Course
DESCRIBE course;

-- 5. Semester
DESCRIBE semester;

-- 6. Enrollment
DESCRIBE enrollment;

-- 7. Teaching Assignment
DESCRIBE teaching_assignment;

-- 8. Attendance
DESCRIBE attendance;

-- 9. Examination
DESCRIBE examination;

-- 10. Result
DESCRIBE result;

-- 11. Fee
DESCRIBE fee;

-- 12. Classroom
DESCRIBE classroom;

-- 13. Timetable
DESCRIBE timetable;


-- =========================================
-- Verify All Tables
-- =========================================

SHOW TABLES;


-- =========================================
-- Verify Foreign Key Relationships
-- =========================================

SELECT
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'universe_db'
AND REFERENCED_TABLE_NAME IS NOT NULL
ORDER BY TABLE_NAME;


-- =========================================
-- View Complete Student Table Definition
-- =========================================

SHOW CREATE TABLE student;
   