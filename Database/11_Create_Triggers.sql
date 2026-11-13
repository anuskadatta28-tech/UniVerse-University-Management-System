
USE universe_db;

DELIMITER $$

-- 1. VALIDATE MARKS BEFORE INSERT
CREATE TRIGGER Validate_Result_Before_Insert
BEFORE INSERT ON result
FOR EACH ROW
BEGIN
    DECLARE v_max_marks INT;

    SELECT MAX(maximum_marks)
    INTO v_max_marks
    FROM examination
    WHERE exam_id = NEW.exam_id;

    IF v_max_marks IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid examination ID';

    ELSEIF NEW.marks_obtained < 0
       OR NEW.marks_obtained > v_max_marks THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Marks must be between 0 and maximum marks';
    END IF;
END $$


-- 2. VALIDATE MARKS BEFORE UPDATE
CREATE TRIGGER Validate_Result_Before_Update
BEFORE UPDATE ON result
FOR EACH ROW
BEGIN
    DECLARE v_max_marks INT;

    SELECT MAX(maximum_marks)
    INTO v_max_marks
    FROM examination
    WHERE exam_id = NEW.exam_id;

    IF v_max_marks IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid examination ID';

    ELSEIF NEW.marks_obtained < 0
       OR NEW.marks_obtained > v_max_marks THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Marks must be between 0 and maximum marks';
    END IF;
END $$

DELIMITER ;

SHOW TRIGGERS FROM universe_db;