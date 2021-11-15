--4 DISTINCT를 ID AGGREGATION FUNCTION 사용 가능
SELECT COUNT (DISTINCT E.MANAGER_ID)
FROM EMPLOYEES E;


--7
SELECT D.DEPARTMENT_NAME, D.LOCATION_ID, COUNT(E.EMPLOYEE_ID), AVG(E.SALARY)
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME, D.LOCATION_ID ; 

SELECT DEPARTMENT_NAME NAME, LOCATION_ID LOCATOIN, COUNT(EMPLOYEE_ID), ROUND(AVG(SALARY),2)
FROM EMPLOYEES E JOIN DEPARTMENTS D USING (DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME, LOCATION_ID;


--8 CASE! GROUP BY 하면 COUNT(*) 불가능함.
SELECT COUNT(*) "TOTAL", COUNT(
                        CASE 
                             WHEN TO_CHAR(HIRE_DATE, 'yyyy') = '2005'
                             THEN 1 ELSE NULL END
                            ) 
                             AS "2005",
                       COUNT(
                        CASE 
                              WHEN TO_CHAR(HIRE_DATE, 'yyyy')= '2006'
                              THEN 1 END
                            ) 
                            AS "2006"
FROM EMPLOYEES E;


SELECT  CASE 
        WHEN TO_CHAR(HIRE_DATE, 'yyyy') = '2005'
        THEN 1 ELSE NULL END
        AS "D",
        HIRE_DATE
FROM EMPLOYEES;

--9
SELECT JOB_ID, SUM( CASE DEPARTMENT_ID
                    WHEN 20 
                    THEN SALARY
                    END
                  ) AS  "DEPT20"
FROM EMPLOYEES
GROUP BY JOB_ID;
