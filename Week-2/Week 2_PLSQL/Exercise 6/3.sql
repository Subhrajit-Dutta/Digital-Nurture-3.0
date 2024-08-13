DECLARE
    CURSOR c_Loans IS
        SELECT LoanID, InterestRate
        FROM Loans;

    v_LoanID Loans.LoanID%TYPE;
    v_InterestRate Loans.InterestRate%TYPE;
BEGIN
    OPEN c_Loans;
    LOOP
        FETCH c_Loans INTO v_LoanID, v_InterestRate;
        EXIT WHEN c_Loans%NOTFOUND;

        UPDATE Loans
        SET InterestRate = v_InterestRate + 0.5
        WHERE LoanID = v_LoanID;
    END LOOP;
    CLOSE c_Loans;

    COMMIT;
END;