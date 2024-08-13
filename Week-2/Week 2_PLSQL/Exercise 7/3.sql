CREATE OR REPLACE PACKAGE AccountOperations AS
  PROCEDURE OpenAccount(p_customer_id NUMBER, p_account_type VARCHAR2, p_balance NUMBER);
  PROCEDURE CloseAccount(p_account_id NUMBER);
  FUNCTION GetTotalBalance(p_customer_id NUMBER) RETURN NUMBER;
END AccountOperations;
/

CREATE OR REPLACE PACKAGE BODY AccountOperations AS

  PROCEDURE OpenAccount(p_customer_id NUMBER, p_account_type VARCHAR2, p_balance NUMBER) IS
  BEGIN
    INSERT INTO accounts (account_id, customer_id, account_type, balance)
    VALUES (accounts_seq.NEXTVAL, p_customer_id, p_account_type, p_balance);
  END OpenAccount;

  PROCEDURE CloseAccount(p_account_id NUMBER) IS
  BEGIN
    DELETE FROM accounts
    WHERE account_id = p_account_id;
  END CloseAccount;

  FUNCTION GetTotalBalance(p_customer_id NUMBER) RETURN NUMBER IS
    v_total_balance NUMBER;
  BEGIN
    SELECT SUM(balance) INTO v_total_balance
    FROM accounts
    WHERE customer_id = p_customer_id;
    RETURN v_total_balance;
  END GetTotalBalance;

END AccountOperations;
/
