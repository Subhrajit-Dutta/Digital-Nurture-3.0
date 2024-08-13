DECLARE
    CURSOR c_Transactions IS
        SELECT c.CustomerID, c.Name, t.TransactionDate, t.Amount, t.TransactionType
        FROM Customers c
        JOIN Accounts a ON c.CustomerID = a.CustomerID
        JOIN Transactions t ON a.AccountID = t.AccountID
        WHERE EXTRACT(MONTH FROM t.TransactionDate) = EXTRACT(MONTH FROM SYSDATE)
        AND EXTRACT(YEAR FROM t.TransactionDate) = EXTRACT(YEAR FROM SYSDATE);
    
    v_CustomerID Customers.CustomerID%TYPE;
    v_Name Customers.Name%TYPE;
    v_TransactionDate Transactions.TransactionDate%TYPE;
    v_Amount Transactions.Amount%TYPE;
    v_TransactionType Transactions.TransactionType%TYPE;
BEGIN
    OPEN c_Transactions;
    LOOP
        FETCH c_Transactions INTO v_CustomerID, v_Name, v_TransactionDate, v_Amount, v_TransactionType;
        EXIT WHEN c_Transactions%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Customer ID: ' || v_CustomerID);
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_Name);
        DBMS_OUTPUT.PUT_LINE('Date: ' || TO_CHAR(v_TransactionDate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('Amount: ' || v_Amount);
        DBMS_OUTPUT.PUT_LINE('Type: ' || v_TransactionType);
        DBMS_OUTPUT.PUT_LINE('------------------------');
    END LOOP;
    CLOSE c_Transactions;
END;