-- 모든 직원과 연봉만 조회
SELECT name, salary FROM employees;

-- Frontend 직책 중 연봉이 90,000 이하인 직원 조회
SELECT name, salary
FROM employees
WHERE position = 'Frontend' AND salary <= 90000;

-- PM 직책 직원 조회 
SELECT * FROM employees
WHERE position = 'PM';

-- 직책별 평균 연봉 계산, GPT 힘을 빌림
SELECT position, AVG(salary) AS average_salary
FROM employees
GROUP BY position;
