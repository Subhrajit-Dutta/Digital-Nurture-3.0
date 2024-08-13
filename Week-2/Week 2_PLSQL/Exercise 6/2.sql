DECLARE
    CURSOR c_Accounts IS
        SELECT AccountID, Balance
        FROM Accounts;

    v_AccountID Accounts.AccountID%TYPE;
    v_Balance Accounts.Balance%TYPE;
    v_AnnualFee CONSTANT NUMBER := 50; 
BEGIN
    OPEN c_Accounts;
    LOOP
        FETCH c_Accounts INTO v_AccountID, v_Balance;
        EXIT WHEN c_Accounts%NOTFOUND;

        UPDATE Accounts
        SET Balance = Balance - v_AnnualFee
        WHERE AccountID = v_AccountID;
    END LOOP;
    CLOSE c_Accounts;

    COMMIT;
END;