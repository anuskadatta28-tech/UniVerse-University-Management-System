
USE universe_db;

-- 1. STUDENT DETAILS WITH DEPARTMENT
CREATE OR REPLACE VIEW v_student_details AS
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    s.email,
    s.phone,
    d.department_name,
    d.department_code,
    d.hod_name
FROM student s
INNER JOIN department d
ON s.department_id = d.department_id;


-- 2. FACULTY DETAILS WITH DEPARTMENT
CREATE OR REPLACE VIEW v_faculty_details AS
SELECT
    f.faculty_id,
    f.faculty_name,
    f.email,
    f.designation,
    f.salary,
    d.department_name
FROM faculty f
INNER JOIN department d
ON f.department_id = d.department_id;


-- 3. COURSE DETAILS WITH DEPARTMENT
CREATE OR REPLACE VIEW v_course_details AS
SELECT
    c.course_id,
    c.course_name,
    c.course_code,
    c.credits,
    c.course_type,
    d.department_name
FROM course c
INNER JOIN department d
ON c.department_id = d.department_id;


-- 4. STUDENT ENROLLMENT DETAILS
CREATE OR REPLACE VIEW v_enrollment_details AS
SELECT
    e.enrollment_id,
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    c.course_name,
    c.course_code,
    sem.semester_number,
    sem.academic_year,
    e.enrollment_date,
    e.enrollment_status
FROM enrollment e
INNER JOIN student s
ON e.student_id = s.student_id
INNER JOIN course c
ON e.course_id = c.course_id
INNER JOIN semester sem
ON e.semester_id = sem.semester_id;


-- 5. STUDENT FEE DETAILS
CREATE OR REPLACE VIEW v_fee_details AS
SELECT
    f.payment_id,
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    sem.semester_number,
    f.amount,
    f.payment_date,
    f.payment_method,
    f.payment_status
FROM fee f
INNER JOIN student s
ON f.student_id = s.student_id
INNER JOIN semester sem
ON f.semester_id = sem.semester_id;


-- 6. STUDENT ATTENDANCE SUMMARY
CREATE OR REPLACE VIEW v_attendance_summary AS
SELECT
    e.enrollment_id,
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    c.course_name,
    COUNT(a.attendance_id) AS total_classes,
    SUM(CASE
        WHEN a.attendance_status = 'Present' THEN 1
        ELSE 0
    END) AS present_classes,
    ROUND(
        100.0 * SUM(CASE
            WHEN a.attendance_status = 'Present' THEN 1
            ELSE 0
        END) / NULLIF(COUNT(a.attendance_id), 0),
        2
    ) AS attendance_percentage
FROM enrollment e
INNER JOIN student s
ON e.student_id = s.student_id
INNER JOIN course c
ON e.course_id = c.course_id
LEFT JOIN attendance a
ON e.enrollment_id = a.enrollment_id
GROUP BY
    e.enrollment_id,
    s.first_name,
    s.last_name,
    c.course_name;


-- 7. STUDENT RESULT DETAILS
CREATE OR REPLACE VIEW v_result_details AS
SELECT
    r.result_id,
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    c.course_name,
    ex.exam_name,
    r.marks_obtained,
    ex.maximum_marks,
    r.grade,
    r.result_status
FROM result r
INNER JOIN enrollment e
ON r.enrollment_id = e.enrollment_id
INNER JOIN student s
ON e.student_id = s.student_id
INNER JOIN course c
ON e.course_id = c.course_id
INNER JOIN examination ex
ON r.exam_id = ex.exam_id;


-- 8. TIMETABLE DETAILS
CREATE OR REPLACE VIEW v_timetable_details AS
SELECT
    t.timetable_id,
    c.course_name,
    f.faculty_name,
    ta.section,
    t.day_of_week,
    t.start_time,
    t.end_time,
    cl.building_name,
    cl.room_number
FROM timetable t
INNER JOIN teaching_assignment ta
ON t.assignment_id = ta.assignment_id
INNER JOIN faculty f
ON ta.faculty_id = f.faculty_id
INNER JOIN course c
ON ta.course_id = c.course_id
INNER JOIN classroom cl
ON t.classroom_id = cl.classroom_id;

SHOW FULL TABLES
WHERE Table_type = 'VIEW';

SELECT * FROM v_student_details;
SELECT * FROM v_faculty_details;
SELECT * FROM v_course_details;
SELECT * FROM v_enrollment_details;
SELECT * FROM v_fee_details;
SELECT * FROM v_attendance_summary;
SELECT * FROM v_result_details;
SELECT * FROM v_timetable_details;