ALTER TABLE Customers ADD (IsVIP VARCHAR2(3));
BEGIN
    FOR customer IN (SELECT CustomerID, Balance FROM Customers)
    LOOP
        IF customer.Balance > 10000 THEN
            UPDATE Customers
            SET IsVIP = 'YES'
            WHERE CustomerID = customer.CustomerID;
        ELSE
            UPDATE Customers
            SET IsVIP = 'NO'
            WHERE CustomerID = customer.CustomerID;
        END IF;
    END LOOP;
END;