
USE universe_db;

-- 1. START TRANSACTION
START TRANSACTION;

-- 2. CHECK ORIGINAL FEE AMOUNT
SELECT payment_id, amount
FROM fee
WHERE payment_id = 1;

-- 3. TEMPORARILY UPDATE FEE AMOUNT
UPDATE fee
SET amount = amount + 100
WHERE payment_id = 1;

-- 4. CHECK TEMPORARY UPDATED AMOUNT
SELECT payment_id, amount
FROM fee
WHERE payment_id = 1;

-- 5. UNDO THE CHANGE
ROLLBACK;

-- 6. VERIFY ORIGINAL AMOUNT
SELECT payment_id, amount
FROM fee
WHERE payment_id = 1;
