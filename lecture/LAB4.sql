-- 1
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE DEPARTMENT_ID =(  SELECT DEPARTMENT_ID
                        FROM EMPLOYEES
                        WHERE LAST_NAME = 'Zlotkey'
                      );
                      
--2
SELECT EMPLOYEE_ID, LAST_NAME
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
ORDER BY SALARY;

--3
SELECT EMPLOYEE_ID, LAST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE LAST_NAME LIKE '%U%');

--4
SELECT LAST_NAME, DEPARTMENT_ID, JOB_ID
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID ;


--5
 ]


