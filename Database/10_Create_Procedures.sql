
USE universe_db;

DELIMITER $$

-- 1. GET STUDENT DETAILS BY STUDENT ID
CREATE PROCEDURE GetStudentByID(
    IN p_student_id INT
)
BEGIN
    SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        s.email,
        s.phone,
        d.department_name
    FROM student s
    INNER JOIN department d
    ON s.department_id = d.department_id
    WHERE s.student_id = p_student_id;
END $$


-- 2. GET ALL STUDENTS OF A DEPARTMENT
CREATE PROCEDURE GetStudentsByDepartment(
    IN p_department_id INT
)
BEGIN
    SELECT
        student_id,
        first_name,
        last_name,
        email
    FROM student
    WHERE department_id = p_department_id
    ORDER BY first_name ASC;
END $$


-- 3. GET STUDENTS WITH PENDING FEES
CREATE PROCEDURE GetPendingFees()
BEGIN
    SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        f.amount,
        f.payment_status
    FROM student s
    INNER JOIN fee f
    ON s.student_id = f.student_id
    WHERE f.payment_status = 'Pending';
END $$

DELIMITER ;
