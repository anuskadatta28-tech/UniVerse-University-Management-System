
-- =========================================
-- UniVerse: Core Tables - Part 2
-- =========================================

USE universe_db;


-- 4. STUDENT TABLE
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    date_of_birth DATE,
    gender VARCHAR(20),
    admission_date DATE NOT NULL,
    department_id INT NOT NULL,

    CONSTRAINT fk_student_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;


-- 5. FACULTY TABLE
CREATE TABLE faculty (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    designation VARCHAR(50),
    joining_date DATE,
    salary DECIMAL(10,2),
    department_id INT NOT NULL,

    CONSTRAINT chk_faculty_salary
        CHECK (salary IS NULL OR salary >= 0),

    CONSTRAINT fk_faculty_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;


-- 6. COURSE TABLE
CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    credits INT NOT NULL,
    course_type VARCHAR(30),
    department_id INT NOT NULL,

    CONSTRAINT chk_course_credits
        CHECK (credits BETWEEN 1 AND 10),

    CONSTRAINT fk_course_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;


-- Verify table creation
SHOW TABLES;
