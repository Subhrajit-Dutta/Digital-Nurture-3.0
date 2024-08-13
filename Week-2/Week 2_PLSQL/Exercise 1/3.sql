BEGIN
    FOR loan IN (SELECT l.LoanID, l.CustomerID, c.Name, l.EndDate
        FROM Loans l
        JOIN Customers c ON l.CustomerID = c.CustomerID
        WHERE l.EndDate BETWEEN SYSDATE AND SYSDATE + 30)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID ' || loan.LoanID || ' for customer ' || loan.Name || ' is due on ' || TO_CHAR(loan.EndDate, 'YYYY-MM-DD') || '.');
    END LOOP;
END;