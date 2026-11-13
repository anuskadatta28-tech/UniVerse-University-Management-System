
-- =========================================
-- UniVerse: Table Creation - Part 1
-- =========================================

USE universe_db;

-- 1. DEPARTMENT TABLE
CREATE TABLE department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    department_code VARCHAR(10) NOT NULL UNIQUE,
    office_location VARCHAR(100),
    hod_name VARCHAR(100)
) ENGINE=InnoDB;


-- 2. SEMESTER TABLE
CREATE TABLE semester (
    semester_id INT AUTO_INCREMENT PRIMARY KEY,
    semester_number INT NOT NULL,
    academic_year VARCHAR(9) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,

    CONSTRAINT chk_semester_number
        CHECK (semester_number BETWEEN 1 AND 8),

    CONSTRAINT chk_semester_dates
        CHECK (end_date > start_date),

    CONSTRAINT uq_semester_year
        UNIQUE (semester_number, academic_year)
) ENGINE=InnoDB;


-- 3. CLASSROOM TABLE
CREATE TABLE classroom (
    classroom_id INT AUTO_INCREMENT PRIMARY KEY,
    building_name VARCHAR(100) NOT NULL,
    room_number VARCHAR(20) NOT NULL,
    capacity INT NOT NULL,

    CONSTRAINT chk_classroom_capacity
        CHECK (capacity > 0),

    CONSTRAINT uq_classroom
        UNIQUE (building_name, room_number)
) ENGINE=InnoDB;


-- Verify table creation
SHOW TABLES;
