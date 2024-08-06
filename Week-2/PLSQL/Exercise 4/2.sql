CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
    p_LoanAmount NUMBER,
    p_AnnualInterestRate NUMBER,
    p_DurationYears NUMBER
) RETURN NUMBER IS
    v_MonthlyInterestRate NUMBER;
    v_TotalMonths NUMBER;
    v_MonthlyInstallment NUMBER;
BEGIN
    v_MonthlyInterestRate := p_AnnualInterestRate / 100 / 12;
    v_TotalMonths := p_DurationYears * 12;

    IF v_MonthlyInterestRate = 0 THEN
        v_MonthlyInstallment := p_LoanAmount / v_TotalMonths;
    ELSE
        v_MonthlyInstallment := p_LoanAmount * v_MonthlyInterestRate / 
            (1 - POWER(1 + v_MonthlyInterestRate, -v_TotalMonths));
    END IF;

    RETURN v_MonthlyInstallment;
END CalculateMonthlyInstallment;