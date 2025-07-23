-- PM 연봉 10% 인상
UPDATE employees
SET salary = salary * 1.10
WHERE position = 'PM';

-- Backend 연봉 5% 인상
UPDATE employees
SET salary = salary * 1.05
WHERE position = 'Backend';