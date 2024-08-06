CREATE OR REPLACE PACKAGE EmployeeManagement AS
  PROCEDURE HireEmployee(p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER);
  PROCEDURE UpdateEmployee(p_employee_id NUMBER, p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER);
  FUNCTION CalculateAnnualSalary(p_employee_id NUMBER) RETURN NUMBER;
END EmployeeManagement;
/

CREATE OR REPLACE PACKAGE BODY EmployeeManagement AS

  PROCEDURE HireEmployee(p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER) IS
  BEGIN
    INSERT INTO employees (employee_id, name, position, salary)
    VALUES (employees_seq.NEXTVAL, p_name, p_position, p_salary);
  END HireEmployee;

  PROCEDURE UpdateEmployee(p_employee_id NUMBER, p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER) IS
  BEGIN
    UPDATE employees
    SET name = p_name,
        position = p_position,
        salary = p_salary
    WHERE employee_id = p_employee_id;
  END UpdateEmployee;

  FUNCTION CalculateAnnualSalary(p_employee_id NUMBER) RETURN NUMBER IS
    v_salary NUMBER;
  BEGIN
    SELECT salary * 12 INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;
    RETURN v_salary;
  END CalculateAnnualSalary;

END EmployeeManagement;
/
