BEGIN
    FOR customer IN (SELECT CustomerID, TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Age FROM Customers)
    LOOP
        IF customer.Age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = customer.CustomerID;
        END IF;
    END LOOP;
END;