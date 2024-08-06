CREATE OR REPLACE PACKAGE CustomerManagement AS
  PROCEDURE AddCustomer(p_name VARCHAR2, p_age NUMBER, p_balance NUMBER);
  PROCEDURE UpdateCustomer(p_customer_id NUMBER, p_name VARCHAR2, p_age NUMBER, p_balance NUMBER);
  FUNCTION GetCustomerBalance(p_customer_id NUMBER) RETURN NUMBER;
END CustomerManagement;
/

CREATE OR REPLACE PACKAGE BODY CustomerManagement AS

  PROCEDURE AddCustomer(p_name VARCHAR2, p_age NUMBER, p_balance NUMBER) IS
  BEGIN
    INSERT INTO customers (customer_id, name, age, balance)
    VALUES (customers_seq.NEXTVAL, p_name, p_age, p_balance);
  END AddCustomer;

  PROCEDURE UpdateCustomer(p_customer_id NUMBER, p_name VARCHAR2, p_age NUMBER, p_balance NUMBER) IS
  BEGIN
    UPDATE customers
    SET name = p_name,
        age = p_age,
        balance = p_balance
    WHERE customer_id = p_customer_id;
  END UpdateCustomer;

  FUNCTION GetCustomerBalance(p_customer_id NUMBER) RETURN NUMBER IS
    v_balance NUMBER;
  BEGIN
    SELECT balance INTO v_balance
    FROM customers
    WHERE customer_id = p_customer_id;
    RETURN v_balance;
  END GetCustomerBalance;

END CustomerManagement;
/
