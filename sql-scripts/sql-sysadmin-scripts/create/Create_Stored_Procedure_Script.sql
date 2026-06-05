CREATE PROCEDURE get_employee_by_id (IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE employee_id = emp_id;
END;
