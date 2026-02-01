DROP FUNCTION IF EXISTS divide_float;

DELIMITER $$

CREATE FUNCTION divide_float(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN a / b;
END $$

DELIMITER ;

SELECT 
    quantity,
    divide_float(quantity, 2.5) AS divided_quantity
FROM order_details;
