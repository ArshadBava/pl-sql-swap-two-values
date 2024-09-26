DELIMITER $$

CREATE PROCEDURE swap_values(
    INOUT value1 INT,
    INOUT value2 INT
)
BEGIN
    DECLARE temp INT; 
    
    -- Swap logic
    SET temp = value1;
    SET value1 = value2;
    SET value2 = temp;
END $$

DELIMITER ;
SET @a = 50;
SET @b = 100;

SELECT @a AS OriginalValue1, @b AS OriginalValue2;

CALL swap_values(@a, @b);

SELECT @a AS SwappedValue1, @b AS SwappedValue2;
