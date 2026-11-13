
-- =========================================
-- UniVerse: Academic Tables - Part 3
-- =========================================

USE universe_db;


-- 7. ENROLLMENT TABLE
CREATE TABLE enrollment (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    enrollment_status VARCHAR(20) DEFAULT 'Enrolled',

    CONSTRAINT uq_student_course_semester
        UNIQUE (student_id, course_id, semester_id),

    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT fk_enrollment_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id)
) ENGINE=InnoDB;


-- 8. TEACHING_ASSIGNMENT TABLE
CREATE TABLE teaching_assignment (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    faculty_id INT NOT NULL,
    course_id INT NOT NULL,
    semester_id INT NOT NULL,
    section VARCHAR(20) NOT NULL,

    CONSTRAINT uq_teaching_assignment
        UNIQUE (faculty_id, course_id, semester_id, section),

    CONSTRAINT fk_assignment_faculty
        FOREIGN KEY (faculty_id)
        REFERENCES faculty(faculty_id),

    CONSTRAINT fk_assignment_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT fk_assignment_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id)
) ENGINE=InnoDB;


-- 9. EXAMINATION TABLE
CREATE TABLE examination (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    semester_id INT NOT NULL,
    exam_name VARCHAR(100) NOT NULL,
    exam_date DATE NOT NULL,
    maximum_marks DECIMAL(6,2) NOT NULL,

    CONSTRAINT chk_maximum_marks
        CHECK (maximum_marks > 0),

    CONSTRAINT fk_exam_course
        FOREIGN KEY (course_id)
        REFERENCES course(course_id),

    CONSTRAINT fk_exam_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id)
) ENGINE=InnoDB;


-- 10. FEE TABLE
CREATE TABLE fee (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    semester_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(20) DEFAULT 'Pending',
    transaction_reference VARCHAR(100) UNIQUE,

    CONSTRAINT chk_fee_amount
        CHECK (amount > 0),

    CONSTRAINT fk_fee_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id),

    CONSTRAINT fk_fee_semester
        FOREIGN KEY (semester_id)
        REFERENCES semester(semester_id)
) ENGINE=InnoDB;


-- Verify tables
SHOW TABLES;
