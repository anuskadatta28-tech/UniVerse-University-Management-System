
-- =====================================================
-- UniVerse - University Management System
-- STEP 9: INSERT SAMPLE DATA
-- First-Time Database Setup
-- =====================================================

USE universe_db;

-- =====================================================
-- 1. DEPARTMENT
-- =====================================================

INSERT INTO department
(department_name, department_code, office_location, hod_name)
VALUES
('Computer Science and Engineering', 'CSE', 'B1', 'Dr Gaurav Bathla'),
('Electronics and Communication Engineering', 'ECE', 'C2', 'Dr Jasneet Kaur'),
('Mechanical Engineering', 'ME', 'B3', 'Dr Ishdeep Singhla'),
('Business Administration', 'MBA', 'B4', 'Dr Manoj Singla');

-- =====================================================
-- 2. SEMESTER
-- Only 2nd Year - 3rd Semester
-- =====================================================

INSERT INTO semester
(semester_number, academic_year, start_date, end_date)
VALUES
(3, '2026-2027', '2026-08-01', '2026-12-15');


-- =====================================================
-- 3. CLASSROOM
-- 5 Classrooms per Block = 20 Classrooms
-- =====================================================

INSERT INTO classroom
(building_name, room_number, capacity)
VALUES
('B1', '101', 60),
('B1', '102', 60),
('B1', '103', 60),
('B1', '104', 60),
('B1', '105', 60),

('C2', '101', 60),
('C2', '102', 60),
('C2', '103', 60),
('C2', '104', 60),
('C2', '105', 60),

('B3', '101', 60),
('B3', '102', 60),
('B3', '103', 60),
('B3', '104', 60),
('B3', '105', 60),

('B4', '101', 60),
('B4', '102', 60),
('B4', '103', 60),
('B4', '104', 60),
('B4', '105', 60);

-- =====================================================
-- 4. STUDENT
-- 25 Students per Department = 100 Students
-- =====================================================

INSERT INTO student
(first_name, last_name, email, phone, date_of_birth,
 gender, admission_date, department_id)
VALUES

-- CSE Students - B1
('Aarav', 'Sharma', 'aarav01@universe.edu', '9000000001', '2006-01-10', 'Male', '2025-08-01', 1),
('Anuska', 'Datta', 'anuska02@universe.edu', '9000000002', '2006-12-28', 'Female', '2025-08-01', 1),
('Bhavya', 'Sharma', 'bhavya03@universe.edu', '9000000003', '2006-05-15', 'Female', '2025-08-01', 1),
('Kanika', 'Saini', 'kanika04@universe.edu', '9000000004', '2006-09-10', 'Female', '2025-08-01', 1),
('Rohan', 'Verma', 'rohan05@universe.edu', '9000000005', '2006-03-12', 'Male', '2025-08-01', 1),
('Priya', 'Gupta', 'priya06@universe.edu', '9000000006', '2006-07-21', 'Female', '2025-08-01', 1),
('Aditya', 'Singh', 'aditya07@universe.edu', '9000000007', '2006-04-18', 'Male', '2025-08-01', 1),
('Ishita', 'Kapoor', 'ishita08@universe.edu', '9000000008', '2006-11-05', 'Female', '2025-08-01', 1),
('Arjun', 'Malhotra', 'arjun09@universe.edu', '9000000009', '2006-02-14', 'Male', '2025-08-01', 1),
('Sneha', 'Roy', 'sneha10@universe.edu', '9000000010', '2006-08-09', 'Female', '2025-08-01', 1),
('Karan', 'Mehta', 'karan11@universe.edu', '9000000011', '2006-06-17', 'Male', '2025-08-01', 1),
('Pooja', 'Shah', 'pooja12@universe.edu', '9000000012', '2006-10-23', 'Female', '2025-08-01', 1),
('Rahul', 'Das', 'rahul13@universe.edu', '9000000013', '2006-01-29', 'Male', '2025-08-01', 1),
('Riya', 'Jain', 'riya14@universe.edu', '9000000014', '2006-09-02', 'Female', '2025-08-01', 1),
('Dev', 'Patel', 'dev15@universe.edu', '9000000015', '2006-05-11', 'Male', '2025-08-01', 1),
('Mehak', 'Kaur', 'mehak16@universe.edu', '9000000016', '2006-12-01', 'Female', '2025-08-01', 1),
('Yash', 'Bansal', 'yash17@universe.edu', '9000000017', '2006-03-19', 'Male', '2025-08-01', 1),
('Tanya', 'Sood', 'tanya18@universe.edu', '9000000018', '2006-07-07', 'Female', '2025-08-01', 1),
('Nikhil', 'Jha', 'nikhil19@universe.edu', '9000000019', '2006-04-22', 'Male', '2025-08-01', 1),
('Simran', 'Kaur', 'simran20@universe.edu', '9000000020', '2006-11-13', 'Female', '2025-08-01', 1),
('Vansh', 'Arora', 'vansh21@universe.edu', '9000000021', '2006-02-25', 'Male', '2025-08-01', 1),
('Aditi', 'Mishra', 'aditi22@universe.edu', '9000000022', '2006-08-15', 'Female', '2025-08-01', 1),
('Sahil', 'Chopra', 'sahil23@universe.edu', '9000000023', '2006-06-04', 'Male', '2025-08-01', 1),
('Nisha', 'Agarwal', 'nisha24@universe.edu', '9000000024', '2006-10-10', 'Female', '2025-08-01', 1),
('Aryan', 'Khanna', 'aryan25@universe.edu', '9000000025', '2006-01-16', 'Male', '2025-08-01', 1),

-- ECE Students - C2
('Aman', 'Kumar', 'aman26@universe.edu', '9000000026', '2006-01-10', 'Male', '2025-08-01', 2),
('Sakshi', 'Rana', 'sakshi27@universe.edu', '9000000027', '2006-02-10', 'Female', '2025-08-01', 2),
('Mohit', 'Yadav', 'mohit28@universe.edu', '9000000028', '2006-03-10', 'Male', '2025-08-01', 2),
('Kritika', 'Sethi', 'kritika29@universe.edu', '9000000029', '2006-04-10', 'Female', '2025-08-01', 2),
('Varun', 'Gill', 'varun30@universe.edu', '9000000030', '2006-05-10', 'Male', '2025-08-01', 2),
('Shreya', 'Nair', 'shreya31@universe.edu', '9000000031', '2006-06-10', 'Female', '2025-08-01', 2),
('Manav', 'Joshi', 'manav32@universe.edu', '9000000032', '2006-07-10', 'Male', '2025-08-01', 2),
('Diya', 'Bhatia', 'diya33@universe.edu', '9000000033', '2006-08-10', 'Female', '2025-08-01', 2),
('Harsh', 'Madan', 'harsh34@universe.edu', '9000000034', '2006-09-10', 'Male', '2025-08-01', 2),
('Aashi', 'Goel', 'aashi35@universe.edu', '9000000035', '2006-10-10', 'Female', '2025-08-01', 2),
('Krish', 'Saxena', 'krish36@universe.edu', '9000000036', '2006-11-10', 'Male', '2025-08-01', 2),
('Navya', 'Bedi', 'navya37@universe.edu', '9000000037', '2006-12-10', 'Female', '2025-08-01', 2),
('Ankit', 'Suri', 'ankit38@universe.edu', '9000000038', '2006-01-11', 'Male', '2025-08-01', 2),
('Muskan', 'Arora', 'muskan39@universe.edu', '9000000039', '2006-02-11', 'Female', '2025-08-01', 2),
('Rishabh', 'Jain', 'rishabh40@universe.edu', '9000000040', '2006-03-11', 'Male', '2025-08-01', 2),
('Palak', 'Saini', 'palak41@universe.edu', '9000000041', '2006-04-11', 'Female', '2025-08-01', 2),
('Abhishek', 'Rao', 'abhishek42@universe.edu', '9000000042', '2006-05-11', 'Male', '2025-08-01', 2),
('Ira', 'Sen', 'ira43@universe.edu', '9000000043', '2006-06-11', 'Female', '2025-08-01', 2),
('Samar', 'Kapoor', 'samar44@universe.edu', '9000000044', '2006-07-11', 'Male', '2025-08-01', 2),
('Tisha', 'Mehra', 'tisha45@universe.edu', '9000000045', '2006-08-11', 'Female', '2025-08-01', 2),
('Rajat', 'Puri', 'rajat46@universe.edu', '9000000046', '2006-09-11', 'Male', '2025-08-01', 2),
('Manya', 'Khanna', 'manya47@universe.edu', '9000000047', '2006-10-11', 'Female', '2025-08-01', 2),
('Deepak', 'Goyal', 'deepak48@universe.edu', '9000000048', '2006-11-11', 'Male', '2025-08-01', 2),
('Aarohi', 'Das', 'aarohi49@universe.edu', '9000000049', '2006-12-11', 'Female', '2025-08-01', 2),
('Laksh', 'Monga', 'laksh50@universe.edu', '9000000050', '2006-01-12', 'Male', '2025-08-01', 2),

-- ME Students - B3
('Ritvik', 'Chauhan', 'ritvik51@universe.edu', '9000000051', '2006-01-10', 'Male', '2025-08-01', 3),
('Khushi', 'Dutta', 'khushi52@universe.edu', '9000000052', '2006-02-10', 'Female', '2025-08-01', 3),
('Siddharth', 'Mishra', 'siddharth53@universe.edu', '9000000053', '2006-03-10', 'Male', '2025-08-01', 3),
('Aanya', 'Sharma', 'aanya54@universe.edu', '9000000054', '2006-04-10', 'Female', '2025-08-01', 3),
('Gaurav', 'Reddy', 'gaurav55@universe.edu', '9000000055', '2006-05-10', 'Male', '2025-08-01', 3),
('Ishita', 'Roy', 'ishita56@universe.edu', '9000000056', '2006-06-10', 'Female', '2025-08-01', 3),
('Pranav', 'Sethi', 'pranav57@universe.edu', '9000000057', '2006-07-10', 'Male', '2025-08-01', 3),
('Mitali', 'Kohli', 'mitali58@universe.edu', '9000000058', '2006-08-10', 'Female', '2025-08-01', 3),
('Tarun', 'Gill', 'tarun59@universe.edu', '9000000059', '2006-09-10', 'Male', '2025-08-01', 3),
('Sanya', 'Bose', 'sanya60@universe.edu', '9000000060', '2006-10-10', 'Female', '2025-08-01', 3),
('Naman', 'Jain', 'naman61@universe.edu', '9000000061', '2006-11-10', 'Male', '2025-08-01', 3),
('Ritika', 'Malik', 'ritika62@universe.edu', '9000000062', '2006-12-10', 'Female', '2025-08-01', 3),
('Kunal', 'Bhatia', 'kunal63@universe.edu', '9000000063', '2006-01-11', 'Male', '2025-08-01', 3),
('Pihu', 'Arora', 'pihu64@universe.edu', '9000000064', '2006-02-11', 'Female', '2025-08-01', 3),
('Yuvraj', 'Saini', 'yuvraj65@universe.edu', '9000000065', '2006-03-11', 'Male', '2025-08-01', 3),
('Tanvi', 'Mehta', 'tanvi66@universe.edu', '9000000066', '2006-04-11', 'Female', '2025-08-01', 3),
('Shivam', 'Verma', 'shivam67@universe.edu', '9000000067', '2006-05-11', 'Male', '2025-08-01', 3),
('Radhika', 'Sen', 'radhika68@universe.edu', '9000000068', '2006-06-11', 'Female', '2025-08-01', 3),
('Parth', 'Kapoor', 'parth69@universe.edu', '9000000069', '2006-07-11', 'Male', '2025-08-01', 3),
('Myra', 'Gupta', 'myra70@universe.edu', '9000000070', '2006-08-11', 'Female', '2025-08-01', 3),
('Akhil', 'Das', 'akhil71@universe.edu', '9000000071', '2006-09-11', 'Male', '2025-08-01', 3),
('Siya', 'Nair', 'siya72@universe.edu', '9000000072', '2006-10-11', 'Female', '2025-08-01', 3),
('Raghav', 'Puri', 'raghav73@universe.edu', '9000000073', '2006-11-11', 'Male', '2025-08-01', 3),
('Navya', 'Jha', 'navya74@universe.edu', '9000000074', '2006-12-11', 'Female', '2025-08-01', 3),
('Dhruv', 'Sood', 'dhruv75@universe.edu', '9000000075', '2006-01-12', 'Male', '2025-08-01', 3),

-- MBA Students - B4
('Aditi', 'Shukla', 'aditi76@universe.edu', '9000000076', '2006-01-10', 'Female', '2025-08-01', 4),
('Vikram', 'Rao', 'vikram77@universe.edu', '9000000077', '2006-02-10', 'Male', '2025-08-01', 4),
('Suhani', 'Kapoor', 'suhani78@universe.edu', '9000000078', '2006-03-10', 'Female', '2025-08-01', 4),
('Aryan', 'Bansal', 'aryan79@universe.edu', '9000000079', '2006-04-10', 'Male', '2025-08-01', 4),
('Rhea', 'Mehta', 'rhea80@universe.edu', '9000000080', '2006-05-10', 'Female', '2025-08-01', 4),
('Kabir', 'Sinha', 'kabir81@universe.edu', '9000000081', '2006-06-10', 'Male', '2025-08-01', 4),
('Ishani', 'Garg', 'ishani82@universe.edu', '9000000082', '2006-07-10', 'Female', '2025-08-01', 4),
('Devansh', 'Jain', 'devansh83@universe.edu', '9000000083', '2006-08-10', 'Male', '2025-08-01', 4),
('Ananya', 'Roy', 'ananya84@universe.edu', '9000000084', '2006-09-10', 'Female', '2025-08-01', 4),
('Sarthak', 'Gill', 'sarthak85@universe.edu', '9000000085', '2006-10-10', 'Male', '2025-08-01', 4),
('Mahi', 'Sethi', 'mahi86@universe.edu', '9000000086', '2006-11-10', 'Female', '2025-08-01', 4),
('Keshav', 'Bose', 'keshav87@universe.edu', '9000000087', '2006-12-10', 'Male', '2025-08-01', 4),
('Tara', 'Khanna', 'tara88@universe.edu', '9000000088', '2006-01-11', 'Female', '2025-08-01', 4),
('Rudra', 'Malik', 'rudra89@universe.edu', '9000000089', '2006-02-11', 'Male', '2025-08-01', 4),
('Nandini', 'Arora', 'nandini90@universe.edu', '9000000090', '2006-03-11', 'Female', '2025-08-01', 4),
('Abeer', 'Saini', 'abeer91@universe.edu', '9000000091', '2006-04-11', 'Male', '2025-08-01', 4),
('Sia', 'Mehra', 'sia92@universe.edu', '9000000092', '2006-05-11', 'Female', '2025-08-01', 4),
('Reyansh', 'Gupta', 'reyansh93@universe.edu', '9000000093', '2006-06-11', 'Male', '2025-08-01', 4),
('Pari', 'Das', 'pari94@universe.edu', '9000000094', '2006-07-11', 'Female', '2025-08-01', 4),
('Atharv', 'Jha', 'atharv95@universe.edu', '9000000095', '2006-08-11', 'Male', '2025-08-01', 4),
('Aarohi', 'Nair', 'aarohi96@universe.edu', '9000000096', '2006-09-11', 'Female', '2025-08-01', 4),
('Ritvik', 'Shah', 'ritvik97@universe.edu', '9000000097', '2006-10-11', 'Male', '2025-08-01', 4),
('Mishka', 'Sen', 'mishka98@universe.edu', '9000000098', '2006-11-11', 'Female', '2025-08-01', 4),
('Arnav', 'Puri', 'arnav99@universe.edu', '9000000099', '2006-12-11', 'Male', '2025-08-01', 4),
('Kiara', 'Sood', 'kiara100@universe.edu', '9000000100', '2006-01-12', 'Female', '2025-08-01', 4);

-- =====================================================
-- 5. FACULTY
-- 5 Faculty per Department = 20
-- =====================================================

INSERT INTO faculty
(faculty_name, email, phone, designation,
 joining_date, salary, department_id)
VALUES
('CSE Faculty 1', 'cse1@universe.edu', '9811100001', 'Professor', '2020-07-01', 85000, 1),
('CSE Faculty 2', 'cse2@universe.edu', '9811100002', 'Associate Professor', '2021-07-01', 75000, 1),
('CSE Faculty 3', 'cse3@universe.edu', '9811100003', 'Assistant Professor', '2022-07-01', 60000, 1),
('CSE Faculty 4', 'cse4@universe.edu', '9811100004', 'Assistant Professor', '2023-07-01', 55000, 1),
('CSE Faculty 5', 'cse5@universe.edu', '9811100005', 'Assistant Professor', '2024-07-01', 50000, 1),

('ECE Faculty 1', 'ece1@universe.edu', '9811100006', 'Professor', '2020-07-01', 85000, 2),
('ECE Faculty 2', 'ece2@universe.edu', '9811100007', 'Associate Professor', '2021-07-01', 75000, 2),
('ECE Faculty 3', 'ece3@universe.edu', '9811100008', 'Assistant Professor', '2022-07-01', 60000, 2),
('ECE Faculty 4', 'ece4@universe.edu', '9811100009', 'Assistant Professor', '2023-07-01', 55000, 2),
('ECE Faculty 5', 'ece5@universe.edu', '9811100010', 'Assistant Professor', '2024-07-01', 50000, 2),

('ME Faculty 1', 'me1@universe.edu', '9811100011', 'Professor', '2020-07-01', 85000, 3),
('ME Faculty 2', 'me2@universe.edu', '9811100012', 'Associate Professor', '2021-07-01', 75000, 3),
('ME Faculty 3', 'me3@universe.edu', '9811100013', 'Assistant Professor', '2022-07-01', 60000, 3),
('ME Faculty 4', 'me4@universe.edu', '9811100014', 'Assistant Professor', '2023-07-01', 55000, 3),
('ME Faculty 5', 'me5@universe.edu', '9811100015', 'Assistant Professor', '2024-07-01', 50000, 3),

('MBA Faculty 1', 'mba1@universe.edu', '9811100016', 'Professor', '2020-07-01', 85000, 4),
('MBA Faculty 2', 'mba2@universe.edu', '9811100017', 'Associate Professor', '2021-07-01', 75000, 4),
('MBA Faculty 3', 'mba3@universe.edu', '9811100018', 'Assistant Professor', '2022-07-01', 60000, 4),
('MBA Faculty 4', 'mba4@universe.edu', '9811100019', 'Assistant Professor', '2023-07-01', 55000, 4),
('MBA Faculty 5', 'mba5@universe.edu', '9811100020', 'Assistant Professor', '2024-07-01', 50000, 4);

-- =====================================================
-- 6. COURSE
-- 4 Courses per Department = 16
-- =====================================================

INSERT INTO course
(course_name, course_code, credits, course_type, department_id)
VALUES
('Database Management Systems', 'CSE301', 4, 'Core', 1),
('Data Structures and Algorithms', 'CSE302', 4, 'Core', 1),
('Java Programming', 'CSE303', 3, 'Core', 1),
('Computer Organization', 'CSE304', 3, 'Core', 1),

('Digital Electronics', 'ECE301', 4, 'Core', 2),
('Signals and Systems', 'ECE302', 4, 'Core', 2),
('Analog Circuits', 'ECE303', 3, 'Core', 2),
('Communication Systems', 'ECE304', 3, 'Core', 2),

('Engineering Mechanics', 'ME301', 4, 'Core', 3),
('Thermodynamics', 'ME302', 4, 'Core', 3),
('Fluid Mechanics', 'ME303', 3, 'Core', 3),
('Manufacturing Processes', 'ME304', 3, 'Core', 3),

('Principles of Management', 'MBA301', 4, 'Core', 4),
('Marketing Management', 'MBA302', 4, 'Core', 4),
('Financial Management', 'MBA303', 3, 'Core', 4),
('Business Communication', 'MBA304', 3, 'Core', 4);

-- =====================================================
-- 7. ENROLLMENT
-- Every student takes all 4 courses of their department
-- 100 x 4 = 400 records
-- =====================================================

INSERT INTO enrollment
(student_id, course_id, semester_id, enrollment_date, enrollment_status)

SELECT
    s.student_id,
    c.course_id,
    1,
    '2026-08-05',
    'Enrolled'
FROM student s
INNER JOIN course c
    ON s.department_id = c.department_id;

-- =====================================================
-- 8. TEACHING ASSIGNMENT
-- 5 Faculty per department
-- Faculty 1-4 teach one course each.
-- Faculty 5 co-teaches the first course.
-- =====================================================

INSERT INTO teaching_assignment
(faculty_id, course_id, semester_id, section)
SELECT
    f.faculty_id,
    ((f.department_id - 1) * 4) +
        CASE
            WHEN f.faculty_id - ((f.department_id - 1) * 5) = 5
                THEN 1
            ELSE f.faculty_id - ((f.department_id - 1) * 5)
        END,
    1,
    CASE f.department_id
        WHEN 1 THEN '601'
        WHEN 2 THEN '801'
        WHEN 3 THEN '701'
        WHEN 4 THEN '901'
    END
FROM faculty f;

-- =====================================================
-- 9. EXAMINATION
-- One MST 1 for each of 16 courses
-- =====================================================

INSERT INTO examination
(course_id, semester_id, exam_name, exam_date, maximum_marks)
SELECT
    course_id,
    1,
    'MST 1',
    CASE
        WHEN department_id = 1 THEN '2026-09-15'
        WHEN department_id = 2 THEN '2026-09-16'
        WHEN department_id = 3 THEN '2026-09-17'
        ELSE '2026-09-18'
    END,
    30
FROM course;

-- =====================================================
-- 10. FEE
-- One fee record per student = 100 records
-- 80 Paid, 20 Pending
-- =====================================================

INSERT INTO fee
(student_id, semester_id, amount, payment_date,
 payment_method, payment_status, transaction_reference)
SELECT
    student_id,
    1,
    45000,
    CASE WHEN student_id % 5 = 0 THEN NULL
         ELSE '2026-08-10' END,
    CASE
        WHEN student_id % 3 = 0 THEN 'Card'
        WHEN student_id % 3 = 1 THEN 'UPI'
        ELSE 'Net Banking'
    END,
    CASE WHEN student_id % 5 = 0 THEN 'Pending'
         ELSE 'Paid' END,
    CONCAT('UVFEE', LPAD(student_id, 5, '0'))
FROM student;

-- =====================================================
-- 11. ATTENDANCE
-- One attendance record per student per course = 400
-- =====================================================

INSERT INTO attendance
(enrollment_id, attendance_date, attendance_status)
SELECT
    enrollment_id,
    '2026-09-01',
    CASE
        WHEN enrollment_id % 10 = 0 THEN 'Absent'
        WHEN enrollment_id % 10 = 1 THEN 'Late'
        ELSE 'Present'
    END
FROM enrollment;

-- =====================================================
-- 12. RESULT
-- One MST 1 result per enrollment = 400 records
-- =====================================================

INSERT INTO result
(enrollment_id, exam_id, marks_obtained, grade, result_status)
SELECT
    e.enrollment_id,
    x.exam_id,
    20 + MOD(e.enrollment_id, 11),
    CASE
        WHEN 20 + MOD(e.enrollment_id, 11) >= 27 THEN 'A'
        WHEN 20 + MOD(e.enrollment_id, 11) >= 24 THEN 'B'
        WHEN 20 + MOD(e.enrollment_id, 11) >= 21 THEN 'C'
        ELSE 'D'
    END,
    'Declared'
FROM enrollment e
INNER JOIN examination x
    ON e.course_id = x.course_id
    AND e.semester_id = x.semester_id;

-- =====================================================
-- 13. TIMETABLE
-- One timetable entry per teaching assignment = 20
-- =====================================================

INSERT INTO timetable
(assignment_id, classroom_id, day_of_week, start_time, end_time)
SELECT
    assignment_id,
    assignment_id,
    CASE MOD(assignment_id - 1, 5)
        WHEN 0 THEN 'Monday'
        WHEN 1 THEN 'Tuesday'
        WHEN 2 THEN 'Wednesday'
        WHEN 3 THEN 'Thursday'
        ELSE 'Friday'
    END,
    MAKETIME(9 + FLOOR((assignment_id - 1) / 5), 0, 0),
    MAKETIME(10 + FLOOR((assignment_id - 1) / 5), 0, 0)
FROM teaching_assignment;

-- =====================================================
-- VERIFY ALL RECORDS
-- =====================================================

SELECT 'Department' AS Table_Name, COUNT(*) AS Total_Records FROM department
UNION ALL
SELECT 'Semester', COUNT(*) FROM semester
UNION ALL
SELECT 'Classroom', COUNT(*) FROM classroom
UNION ALL
SELECT 'Student', COUNT(*) FROM student
UNION ALL
SELECT 'Faculty', COUNT(*) FROM faculty
UNION ALL
SELECT 'Course', COUNT(*) FROM course
UNION ALL
SELECT 'Enrollment', COUNT(*) FROM enrollment
UNION ALL
SELECT 'Teaching Assignment', COUNT(*) FROM teaching_assignment
UNION ALL
SELECT 'Examination', COUNT(*) FROM examination
UNION ALL
SELECT 'Fee', COUNT(*) FROM fee
UNION ALL
SELECT 'Attendance', COUNT(*) FROM attendance
UNION ALL
SELECT 'Result', COUNT(*) FROM result
UNION ALL
SELECT 'Timetable', COUNT(*) FROM timetable;
