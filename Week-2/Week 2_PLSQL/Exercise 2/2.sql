CREATE OR REPLACE PROCEDURE UpdateSalary(
    p_EmployeeID NUMBER,
    p_PercentageIncrease NUMBER
) IS
    EmployeeNotFound EXCEPTION;
    v_Salary NUMBER;
BEGIN
    SELECT Salary INTO v_Salary
    FROM Employees
    WHERE EmployeeID = p_EmployeeID;
    
    UPDATE Employees
    SET Salary = Salary + (Salary * p_PercentageIncrease / 100)
    WHERE EmployeeID = p_EmployeeID;

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || p_EmployeeID || ' not found.');
        ROLLBACK;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END UpdateSalary;