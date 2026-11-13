
-- =========================================
-- UniVerse: Management Tables - Part 4
-- =========================================

USE universe_db;


-- 11. ATTENDANCE TABLE
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_status VARCHAR(20) NOT NULL,

    CONSTRAINT chk_attendance_status
        CHECK (attendance_status IN ('Present', 'Absent', 'Late')),

    CONSTRAINT uq_enrollment_attendance
        UNIQUE (enrollment_id, attendance_date),

    CONSTRAINT fk_attendance_enrollment
        FOREIGN KEY (enrollment_id)
        REFERENCES enrollment(enrollment_id)
) ENGINE=InnoDB;


-- 12. RESULT TABLE
CREATE TABLE result (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT NOT NULL,
    exam_id INT NOT NULL,
    marks_obtained DECIMAL(6,2) NOT NULL,
    grade VARCHAR(5),
    result_status VARCHAR(20) DEFAULT 'Declared',

    CONSTRAINT chk_marks_obtained
        CHECK (marks_obtained >= 0),

    CONSTRAINT uq_enrollment_exam
        UNIQUE (enrollment_id, exam_id),

    CONSTRAINT fk_result_enrollment
        FOREIGN KEY (enrollment_id)
        REFERENCES enrollment(enrollment_id),

    CONSTRAINT fk_result_exam
        FOREIGN KEY (exam_id)
        REFERENCES examination(exam_id)
) ENGINE=InnoDB;


-- 13. TIMETABLE TABLE
CREATE TABLE timetable (
    timetable_id INT AUTO_INCREMENT PRIMARY KEY,
    assignment_id INT NOT NULL,
    classroom_id INT NOT NULL,
    day_of_week VARCHAR(15) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,

    CONSTRAINT chk_timetable_time
        CHECK (end_time > start_time),

    CONSTRAINT chk_timetable_day
        CHECK (day_of_week IN
        ('Monday', 'Tuesday', 'Wednesday', 'Thursday',
         'Friday', 'Saturday', 'Sunday')),

    CONSTRAINT fk_timetable_assignment
        FOREIGN KEY (assignment_id)
        REFERENCES teaching_assignment(assignment_id),

    CONSTRAINT fk_timetable_classroom
        FOREIGN KEY (classroom_id)
        REFERENCES classroom(classroom_id)
) ENGINE=InnoDB;


-- Verify all tables
SHOW TABLES;
