  starting 
  ===========




21. Display employee name and salary raised to power 2.

ans>
 
  SELECT ENAME , SAL,POWER(SAL,2) FROM EMP;


 22. Display employee name and modulus of salary divided by 500.
 
 SELECT ENAME , MOD(SAL,500) AS SALARY_DIVIDED FROM EMP;
 
 
 23. Display employee name and their hire date in format DD-MON-YYYY.
 
 SELECT ENAME ,  TO_CHAR(HIREDATE,'DD-MON-YYYY') AS HIREDATE_FORMATE FROM EMP ;
 
 
 24. Display employee name and day name of their hire date.
 
 SELECT ENAME ,  HIREDATE ,TO_CHAR(HIREDATE , 'FMDAY'  ) FROM EMP;
 
 25. Display employee name and month name of their hire date.
 
 SELECT ENAME , HIREDATE, TO_CHAR(HIREDATE,'FMMONTH') AS MONTH_NAME_OF_HIREDATE FROM EMP;
 
 26. Display employee name and next Friday after hire date.
 


SELECT  ENAME , HIREDATE ,TO_CHAR(HIREDATE , 'FMDAY')  FROM EMP WHERE  TO_CHAR(HIREDATE , 'FMDAY')='FRIDAY' ;
 
 SELECT ENAME , HIREDATE FROM EMP WHERE NEXT_DAY(HIREDATE , 'FMDAY')='FRIDAY';
 
 
 27. Display employee name and last day of their joining month.
 
 SELECT ENAME , HIREDATE ,  TO_CHAR( LAST_DAY(HIREDATE) , 'FMDAY') FROM EMP;
 
 
 
 
 28. Display employee name and number of months completed in company.
 
 SELECT ENAME , ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE)) FROM EMP;
 
 SELECT ENAME , ROUND((SYSDATE-HIREDATE)/30) FROM EMP;
 
 29. Display employee name and date after 6 months of hire date.
 
 SELECT ENAME , HIREDATE , ADD_MONTHS(HIREDATE,6) AS AFTER_6_MONTH FROM EMP;
 
 
 30. Display employee hire date using TO_CHAR in format DD/MM/YYYY.
 
 SELECT ENAME , HIREDATE , TO_CHAR(HIREDATE,'DD/MM/YYYY') FROM EMP;
 
 31. Convert a given string '15-DEC-2020' into date using TO_DATE.
  
   SELECT '15-DEC-2020' , TO_DATE('15-DEC-2020','DD-MON-YYYY') FROM DUAL;
 
 
 32. Display employee name and salary in format 99,999.00.
 
 SELECT ENAME , SAL ,  TO_CHAR(SAL,'99,999.00') FROM EMP;
 
 33. Display employee name and commission; if null, show “No Commission”.
 
 SELECT ENAME ,COMM , NVL( TO_CHAR(COMM), 'NO_COMMSSION') FROM DUAL;
 
 SELECT ENAME , COMM , CASE WHEN COMM IS NULL THEN 'NO_COMMSSION' ELSE 'OTHER' END AS RESULT FROM EMP;
 
 34. Display employee name and salary; if salary < 2000 show “Low”, else “High”.
 
 SELECT ENAME , SAL , CASE WHEN SAL < 2000 THEN 'LOW'
                      ELSE 'HIGH' END AS  RESULT FROM EMP;
                      
35. Display first non-null value among commission and salary using COALESCE.

 SELECT ENAME , SAL , COMM , COALESCE(COMM,SAL) AS RESULT FROM EMP;


 36. Display employee name and hire date; show 'Old Employee' if hired before 1985, otherwise
 'New Employee'.
 
 SELECT ENAME , CASE WHEN HIREDATE < TO_DATE('01-JAN-1985', 'DD-MON-YYYY') THEN 'OLD_EMPLOYEE'
                    ELSE 'NEW_EMPLOYEE' END AS RESULT 
                     FROM EMP;
 
 
 37. Display employee name and salary; if commission is null, display salary × 12, otherwise salary
 + commission.
 
 SELECT ENAME , SAL AS SALARY , COMM , NVL2(COMM,SAL+NVL(COMM,0) , SAL*12 ) AS RESULT  FROM EMP;
 
 38. Display employee name and department number; if deptno = 10 then show 'ACCOUNTING', if
 20 then 'RESEARCH', if 30 then 'SALES', otherwise 'OTHER'.
 
 SELECT ENAME , DEPTNO , CASE WHEN DEPTNO=10 THEN 'ACCOUNTING'
                              WHEN DEPTNO=20 THEN 'SALES'
                              ELSE 'OTHER' END
                              FROM EMP;
 
 
 39. Display employee name and first two letters of their job title in uppercase.
 
 SELECT ENAME , SUBSTR(UPPER(JOB) , 1,2) AS RESULT FROM EMP;
 
 40. Display employee name and number of characters in their job title.
 
 SELECT ENAME , LENGTH(JOB)AS RESULT FROM EMP
 
 41. Display employee name and job title; show both together in one column separated by a hyphen
 (–).
 
 SELECT ENAME||'-'||JOB AS RESULT FROM EMP ;
 
 42. Display employee name with all vowels removed from the name.
 
 SELECT ENAME , REPLACE(TRANSLATE(ENAME , 'A,I,O,U,E', ' '),' ') AS RESULT FROM EMP;
 
 43. Display employee name with last three characters only.
 
 SELECT ENAME , SUBSTR(ENAME,-3) AS RESULT FROM EMP
 
 44. Display employee name and their salary increased by 10 %.
 
  SELECT ENAME , SAL , SAL+SAL*0.10 AS INCREASED_SAL FROM EMP;
 
 45. Display employee name and salary after applying tax of 5 %.
 
 SELECT ENAME , SAL , SAL - SAL*0.05 AS TAX FROM EMP;
  
 
 46. Display employee name and the day number of the week they were hired (1–7).
 
 SELECT ENAME , HIREDATE , TO_CHAR(HIREDATE,'FMDAY') ,TO_CHAR(HIREDATE,'WW') FROM EMP;
 
 
 47. Display employee name and hire date formatted as 'Friday, 12th June 1981'.
 
 SELECT ENAME , HIREDATE , TO_CHAR(HIREDATE , ' FMDAY DDTH FMMONTH YYYY') FROM EMP;
 
 SELECT ENAME , HIREDATE ,TO_CHAR(HIREDATE,'DAY') FROM EMP WHERE  TO_CHAR(HIREDATE,'FMDAY')='FRIDAY' ;
 
 
 48. Display employee name and total number of months completed since hire date rounded to the
 nearest whole month.
 
 SELECT ENAME ,    ROUND(MONTHS_BETWEEN(SYSDATE , HIREDATE )) AS RESULT FROM EMP;
 
 
 49. Display employee name and how many days left to complete 1 year from hire date.
 
   SELECT ENAME , SAL , ADD_MONTHS(HIREDATE,12) - SYSDATE FROM EMP;
   


 
 50. Display current date, next Monday’s date, and last day of current month using date functions
 
 
     SELECT SYSDATE ,  NEXT_DAY(SYSDATE,'MONDAY') ,  LAST_DAY(SYSDATE) AS LAST_DAY FROM DUAL;
 
 
 
 
 
 
 
 
 NEXT QUESTION >
 ================
 
                                           Oracle SQL Practice Questions
                                 Topics:( Number Functions, Date Functions, GROUP BY Clause,
                                          and Aggregate Functions)
                             ============================================================================             



1. Display employee names and their salaries rounded to the nearest hundred.

SELECT ENAME , SAL , ROUND(SAL,-2) FROM EMP;
RE> 

2. Display employee names and their commission rounded to 2 decimal places.

SELECT ENAME , COMM , ROUND(COMM,2) AS TWO_DECIMAL_PLACES FROM EMP;



3. Display the square root of each employee"'s salary.

 SELECT ENAME, SAL, SQRT(SAL) FROM EMP;

4. Display the remainder of salary divided by 500 for each employee.

SELECT MOD(SAL,500) AS REMINDER FROM EMP;

5. Display the highest and lowest salary from the EMP table.

SELECT MAX(SAL) AS HIGHEST_SALARY , MIN(SAL) AS LOWEST_SALARY FROM EMP ;

6. Display total salary of all employees working in department 10.

SELECT DEPTNO , SUM(SAL) FROM EMP
WHERE DEPTNO=10
GROUP BY DEPTNO;

OR
===

SELECT SUM(SAL) FROM EMP WHERE DEPTNO=10;

7. Display average salary of employees in each department using GROUP BY.

SELECT DEPTNO ,  ROUND(AVG(SAL)) FROM EMP 
GROUP BY DEPTNO ;

8. Display the number of employees working in each job category.

SELECT JOB , COUNT(*) FROM EMP
GROUP BY JOB ;


9. Display department number and total commission of employees in each department.

SELECT DEPTNO , SUM(NVL(COMM,0)) AS TOTAL_COMMISSION FROM EMP
GROUP BY DEPTNO;

10. Display the maximum, minimum, and average salary in each department.

SELECT DEPTNO , MAX(SAL) AS MAXIMUM_SALARY , MIN(SAL) AS MINIMUM_SAL , ROUND(AVG(SAL))AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO;

11. Display employees who joined in the current year.

SELECT * FROM EMP WHERE HIREDATE BETWEEN '01/JAN/2025' AND '31/DEC/2025'
.

12. Display employees who joined before 1st January 2020.

SELECT * FROM EMP WHERE HIREDATE < TO_DATE('01-JAN-2020','DD-MON-YYYY');

13. Display employees who joined within the last 6 months.

SELECT * FROM EMP WHERE HIREDATE BETWEEN ADD_MONTHS(SYSDATE,-6) AND SYSDATE ;
SELECT * FROM EMP WHERE HIREDATE > ADD_MONTHS(SYSDATE,-6);

14. Display number of employees who joined month-wise using GROUP BY.

SELECT TO_CHAR(HIREDATE , 'FMMONTH'), COUNT(*)  FROM EMP 
GROUP BY TO_CHAR(HIREDATE , 'FMMONTH')  , TO_CHAR(HIREDATE,'MM')
ORDER BY TO_CHAR(HIREDATE , 'MM');

15. Display the name, hire date, and number of months the employee has worked till date.

SELECT NAME , HIREDATE , 

16. Display current date, next Monday’s date, and the last day of this month using date functions.

SELECT SYSDATE AS CURRENT_DATE , NEXT_DAY(SYSDATE , 'MONDAY') AS NEXT_MONDAY  , LAST_DAY(SYSDATE) AS LAST_DAY FROM DUAL;

17. Display employee name and salary increased by 10%.

SELECT ENAME , SAL , SAL+SAL*0.10 AS SALARY_INCREASED FROM EMP;

18. Display department number having more than 5 employees using GROUP BY and HAVING.

SELECT DEPTNO , COUNT(*) FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>5;

19. Display the sum of salaries where the job title contains 'MAN'.

SELECT JOB , SUM(SAL) FROM EMP WHERE SUBSTR(JOB,1,3)='MAN'
GROUP BY JOB;

SELECT JOB,SUM(SAL) FROM EMP WHERE JOB LIKE '%MAN%'
GROUP BY JOB;


20. Display department number, average salary, and total number of employees in each
department. 
 
 
 
  SELECT DEPTNO , ROUND(AVG(SAL)) AS AVERAGE_SALARY  , COUNT(*) AS TOTAL_NUMBER
  FROM EMP
  GROUP BY DEPTNO;
  
  
  
  
  
  
  
  
  
  DT:12/NOV/2025                                        ? Number Function Practice Questions
==================================================================================================================================





1> Display employee name and round salary to nearest thousand.

SQL>
 SELECT ENAME , SAL ,  ROUND(SAL,-3) AS ROUNDED_SALARY FROM EMP;

2> Display employee name and truncate salary to nearest hundred.

SQL>
 SELECR ENAME , TRUNC(SAL,-2) AS TRUNC_SALARY FROM EMP;

3> Display employee name and salary increased by 500 using arithmetic operator.

SELECT ENAME , SAL+500 INCREASED_SALARY FROM EMP;

4> Display employee name and remainder of salary divided by 1000 using MOD.

SELECT ENAME , MOD(SAL,1000) AS MODULUS FROM EMP;


Display employee name and salary raised to power 2 using POWER.

SQL>
 SELECT ENAME , SAL*SAL AS POWER FROM EMP;

SELECT ENAME , POWER(SAL,2) AS POWER FROM EMP;

Display employee name and absolute value of commission using ABS.

SQL>
    SELECT ENAME , ABS(COMM) AS ABSOLUTE FROM EMP ;


Display employee name and square root of salary using SQRT.

SQL>
    SELECT ENAME , ROUND(SQRT(SAL)) AS SQUARE_ROOT_SALARY FROM EMP;

Display employee name and floor value of salary divided by 1000.

SQL>
   SELECT ENAME,  MOD(FLOOR(SAL),1000)  FROM EMP;

Display employee name and ceiling value of salary divided by 1000.

SQL>
 SELECT ENAME , MOD(CEIL(SAL),1000) AS SALARY_DIVIDED FROM EMP;
 

Display employee name and round salary to 2 decimal places using ROUND.

SQL>
  SELECT ENAME , ROUND(SAL,2) AS ROUND_SALARY_IN_2_DECIMAL FROM EMP;
  

                                                        ? Date Function Practice Questions
==================================================================================================================================


Display employee name and current date using SYSDATE.

SQL>
 SELECT ENAME , SYSDATE AS CURRENT_DATE FROM EMP;

Display employee name and number of months since hire date using MONTHS_BETWEEN.

SQL>
  SELECT ENAME  , ROUND(MONTHS_BETWEEN(SYSDATE , HIREDATE)) AS NO_OF_MONTHS FROM EMP;
  

Display employee name and next Friday after hire date using NEXT_DAY.

SQL>
  SELECT ENAME , NEXT_DAY(HIREDATE , 'FRIDAY') AS NEXT_FRIDAY FROM EMP;

Display employee name and last day of hire month using LAST_DAY.


SQL>
 SELECT ENAME , LAST_DAY(HIREDATE ) AS LAST_DAY FROM EMP; 

Display employee name and hire date after 6 months using ADD_MONTHS.

SQL>
 SELECT ENAME , ADD_MONTHS(HIREDATE,6) AS AFTER_6MONTH_OF_HIREDATE FROM EMP;

Display employee name and number of years completed in the company.

SQL>
  SELECT ENAME , TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(HIREDATE,'YYYY') AS RESULT FROM EMP;
  
  SELECT ENAME , MONTHS_BETWEEN(SYSDATE , HIREDATE )/12 AS   NO_OF_MONTHS FROM EMP;

  SELECT ENAME , FLOOR(MONTHS_BETWEEN(SYSDATE , HIREDATE )/12) AS   NO_OF_MONTHS FROM EMP;

  SELECT ENAME , CEIL( MONTHS_BETWEEN(SYSDATE , HIREDATE )/12 )AS   NO_OF_MONTHS FROM EMP;


Display employee name and difference in days between hire date and current date.

SQL>
 SELECT ENAME , ROUND(SYSDATE - HIREDATE) AS DAYS_BETWEEN  FROM EMP;



Display employee name and hire date in DD-MON-YYYY format using TO_CHAR.

SQL>
  SELECT ENAME , HIREDATE , TO_CHAR(HIREDATE , 'DD-MON-YYYY') AS RESULT FROM EMP;



Display employee name and first day of the current month using TRUNC(SYSDATE, 'MM').

SQL>
   SELECT ENAME , TRUNC(SYSDATE,'MM')AS FIRST_DAY_OF_CURRENT_MONTH FROM EMP;


Display employee name and hire date of previous quarter using TRUNC(ADD_MONTHS(SYSDATE, -3), 'Q').

SQL>
  SELECT ENAME , HIREDATE ,  TRUNC(ADD_MONTHS(HIREDATE,-3),'Q')  AS PREVIOUS_QUARTER FROM EMP;

                                 
                                  
                                   ? GROUP BY Clause Practice Questions

============================================================================================================================



Display department number and average salary of employees.

SQL>
SELECT DEPTNO , ROUND(AVG(SAL)) FROM EMP 
GROUP BY DEPTNO;

Display department number and total number of employees.

SQL>
SELECT DEPTNO , COUNT(*) FROM EMP
GROUP BY DEPTNO ;

Display department number and maximum salary in each department.

SQL>
SELECT DEPTNO , MAX(SAL) AS MAXIMUM_SALARY FROM EMP
GROUP BY DEPTNO;

Display job title and minimum salary in each job category.

SQL>
SELECT JOB , MIN(SAL) AS MINIMUM_SALARY FROM EMP
GROUP BY JOB;

Display department number, job title, and average salary grouped by both.

SQL>

SELECT DEPTNO , JOB , AVG(SAL)
FROM EMP
GROUP BY DEPTNO,JOB
ORDER BY DEPTNO;

Display total salary for each department excluding commission.

SQL>

SELECT  DEPTNO ,SUM(SAL+NVL(COMM,0)) AS TOTAL_SALARY FROM EMP
GROUP BY DEPTNO;


Display number of employees hired per year.

SQL>

SELECT TO_CHAR(HIREDATE,'YYYY') , COUNT(*)
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY')
ORDER BY TO_CHAR(HIREDATE,'YYYY')

Display number of employees hired per month.

SQL>

SELECT TO_CHAR(HIREDATE , 'FMMONTH') , COUNT(*) 
FROM EMP 
GROUP BY  TO_CHAR(HIREDATE , 'FMMONTH') , TO_CHAR(HIREDATE,'MM') 
ORDER BY TO_CHAR(HIREDATE , 'MM') ;


Display number of employees whose commission is not null per department.

SQL>
          
          SELECT DEPTNO , COUNT(*) FROM EMP
          WHERE COMM IS NOT NULL
          GROUP BY DEPTNO;

Display total salary for each job where average salary is greater than 2000.

SQL>
 
   SELECT JOB ,SUM(SAL) FROM EMP
   GROUP BY JOB
   HAVING AVG(SAL)>2000;
   
   
   
                                           ? Aggregate Function Practice Questions
=================================================================================================================================



Display total salary of all employees using SUM.

SQL>
SELECT SUM(SAL) AS TOTAL_SALARY FROM EMP;


Display average salary of all employees using AVG.

SQL>
SELECT ROUND(AVG(SAL)) FROM EMP ;


Display highest salary among employees using MAX.

SQL>
SELECT MAX(SAL) AS MAXIMUM_SALARY FROM EMP;


Display lowest commission among employees using MIN.

SQL>
SELECT MIN(SAL) AS LOWEST_SALARY FROM EMP;


Display number of unique job titles using COUNT(DISTINCT job).

SQL>

SELECT   COUNT(DISTINCT JOB) FROM EMP;

Display number of employees having commission using COUNT.

SQL>

SELECT COUNT(COMM) FROM EMP;

Display total number of employees using COUNT(*).

SQL>
SELECT COUNT(*) AS TOTAL_NO_OF_EMPLOYEE FROM EMP;

Display average salary per department using GROUP BY.

SQL>
SELECT AVG(SAL) FROM EMP 
GROUP BY DEPTNO;


Display total commission paid in each department.

SQL>
SELECT DEPTNO , SUM(COMM) AS TOTAL_COMMISSION FROM EMP
GROUP BY DEPTNO;


Display sum of salary and commission per job title.

SQL>

 SELECT JOB , SUM(SAL)TOTAL_SALARY ,  SUM(COMM) AS TOTAL_COMMISSION
 FROM EMP
 GROUP BY JOB;
 

                                            ? Combined Concepts Practice Questions
==============================================  =============================================================================



Display department number, total salary, and average commission.

SQL>

 SELECT DEPTNO , SUM(SAL) AS TOTAL_SALARY , AVG(COMM) AS AVERAGE_COMMISSION 
 FROM EMP
 GROUP BY DEPTNO;

Display job title and number of employees hired before the year 2000.

SQL>

SELECT JOB , COUNT(*) FROM EMP
WHERE HIREDATE < TO_DATE('01/JAN/2000' , 'DD/MON/YYYY')
GROUP  BY JOB;


Display number of employees hired each quarter of the year.

SQL>

SELECT   TO_CHAR(HIREDATE , 'Q') , COUNT(*) 
FROM EMP
GROUP BY TO_CHAR(HIREDATE , 'Q') 
ORDER BY TO_CHAR(HIREDATE , 'Q');

Display total salary of employees whose hire date is in the current year.

SQL>
SELECT  SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE TO_CHAR(HIREDATE,'YYYY')= TO_CHAR(SYSDATE , 'YYYY') ;

Display employee name, hire date, and how many days left to complete one year.

SELECT ENAME AS EMPLOYEE , HIREDATE  , CEIL(ADD_MONTHS(HIREDATE,12)-SYSDATE) AS REMAIN_DAYS FROM EMP;

Display year-wise total salary paid to employees.

SELECT TO_CHAR(HIREDATE,'YYYY') , SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YYYY') 
ORDER BY  TO_CHAR(HIREDATE , 'YYYY');

Display department number and total number of employees having salary > 3000.

SELECT DEPTNO , SAL , COUNT(*)
FROM EMP
GROUP BY DEPTNO,SAL
HAVING SAL >3000;

Display department-wise difference between maximum and minimum salary.

SELECT DEPTNO , MAX(SAL),MIN(SAL) , MAX(SAL)-MIN(SAL)AS DIFFERENCE FROM EMP
GROUP BY DEPTNO;

Display job title and total commission earned by employees.

SELECT JOB , SUM(COMM) AS TOTAL_COMMISSION 
FROM EMP
GROUP  BY JOB;

Display number of employees grouped by year and department.


SELECT DEPTNO , TO_CHAR(HIREDATE,'YYYY'), COUNT(*) AS NO_OF_EMPLOYESS
FROM EMP 
GROUP BY DEPTNO , TO_CHAR(HIREDATE,'YYYY')
ORDER BY DEPTNO , TO_CHAR(HIREDATE,'YYYY');













================================================================= day -3 =============================================
DT:-13/NOV/2025 (THURSDAY)
                                              30 SQL Questions Using GROUP BY and HAVING
                                              ? Basic Level (1–10)
                              =============================================================
                              
                              
                              
Display the total salary paid to each department.


sql>
 SELECT  DEPTNO , SUM(SAL) AS TOTAL_SALARY  FROM EMP
 GROUP BY DEPTNO;




Find the number of employees in each job category.

SQL>
 
  SELECT JOB , COUNT(*)AS NO_OF_EMPLOYEE FROM EMP
  GROUP BY JOB;

Display the average salary of each department.

SQL>
 
  SELECT DEPTNO , ROUND(AVG(SAL)) AS AVERAGE_SALARY FROM EMP
  GROUP BY DEPTNO;

Find the highest salary in each department.

SQL>

 SELECT DEPTNO ,MAX(SAL) AS MAXIMUM_SALARY FROM EMP
 GROUP BY DEPTNO;


Display departments having more than 5 employees.

SQL>
 
  SELECT DEPTNO , COUNT(*) FROM EMP
  GROUP BY DEPTNO
  HAVING COUNT(*)>5;
  

Display jobs where the average salary is greater than 10,000.

SQL>

 SELECT JOB ,  ROUND(AVG(SAL)) AS AVERAGE_SALARY 
 FROM EMP
 GROUP BY JOB
 HAVING AVG(SAL) > 500;


Find total commission given per department.


SQL>

 SELECT DEPTNO , SUM(NVL(COMM,0)) AS TOTAL_COMMISSION 
 FROM EMP
 GROUP BY DEPTNO ;


Display the minimum and maximum salary of each job.


SQL > 
 
 SELECT JOB , MAX(SAL) AS MAXIMUM_SALARY , MIN(SAL) AS MINIMUM_SALARY 
 FROM EMP
 GROUP BY JOB;

Display total employees hired in each year.

SELECT TO_CHAR(HIREDATE, 'YYYY') AS YEARS , COUNT(*) AS TOTAL_EMPLOYEE
FROM EMP
GROUP BY TO_CHAR(HIREDATE , 'YYYY') ;


Show departments where total salary exceeds 50,000.


SQL>
 
  SELECT DEPTNO , SUM(SAL) AS TOTAL_SALARY 
  FROM EMP 
  GROUP BY  DEPTNO 
  HAVING SUM(SAL) > 9000;









                                                  ? Intermediate Level (11–20)
 
                                            ==============================================
                                            
                                            
Find departments having average salary less than 20,000.

SQL>

 SELECT   D.DNAME , AVG(E.SAL) AS AVERAGE_SALARY 
 FROM EMP E , DEPT D
 WHERE D.DEPTNO=E.DEPTNO
 GROUP BY D.DNAME
 HAVING AVG(E.SAL) < 20000 ;
 

Display total employees joined per month.

SQL>

SELECT TO_CHAR(HIREDATE , 'FMMONTH') AS MONTH_WISE , COUNT(*) AS TOTAL_EMOPLOYEE
FROM EMP
GROUP BY TO_CHAR(HIREDATE , 'FMMONTH');




Display departments having both ‘MANAGER’ and ‘CLERK’ roles.

SQL>


SQL>


SELECT E.DEPTNO, D.DNAME , E.JOB
FROM  EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND JOB IN ('MANAGER','CLERK');


IF USING GROUP BY  CLAUSE

SELECT E.DEPTNO, D.DNAME, E.JOB
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.JOB IN ('MANAGER', 'CLERK')
GROUP BY E.DEPTNO, D.DNAME, E.JOB;  --  NOT A GOOD APPROACHES




Find the department with the maximum total salary.


SQL>


SELECT D.DNAME , MAX(E.SAL) AS AMXIMUM_SALARY 
FROM EMP E , DEPT D
WHERE E.DEPTNO=D.DEPTNO
GROUP BY D.DNAME;



Display each job and total number of employees in that job.


SQL >


SELECT JOB , COUNT(*) AS TOTAL_NO_EMPLOYEE 
FROM EMP
GROUP BY JOB;



Display department and job-wise average salary.
SQL>


SELECT D.DNAME , E.JOB  , ROUND(AVG(E.SAL))
FROM EMP E , DEPT D 
WHERE E.DEPTNO=D.DEPTNO
GROUP BY D.DNAME , E.JOB ;



Find jobs where the number of employees is between 3 and 6.

SQL>

 SELECT JOB , COUNT(*) AS NO_OF_EMPLOYEE
 FROM EMP
 GROUP BY JOB
 HAVING COUNT(*) BETWEEN 3 AND 6 ;


Display the departments where maximum salary > 30,000.

SQL>

SELECT  D.DNAME , MAX(E.SAL) AS MAXIMUM_SALARY 
FROM EMP E , DEPT D 
WHERE E.DEPTNO=D.DEPTNO
GROUP BY D.DNAME
HAVING MAX(E.SAL) > 20000;



Find the total experience (in years) per department.


SQL>

 SELECT DEPTNO  , SUM(FLOOR(MONTHS_BETWEEN(SYSDATE , HIREDATE)/12)) AS  EXPERIENCE
 FROM EMP
 GROUP BY DEPTNO;
 

Show each manager and the count of employees they manage.

SQL>


SELECT M.EMPNO AS MANAGER_ID , M.ENAME AS MANAGER_NAME , COUNT(E.EMPNO) AS EMPLOYES_COUNT
FROM EMP E, EMP M
WHERE E.MGR=M.EMPNO
GROUP BY M.EMPNO , M.ENAME ;














=====================================================================================================================

NEXT

                                                combination (question fro chracter and number and aggrigate function)
 ===============================================================================================================================
 
 
 
 
@ 30 SQL query questions that involve character functions, number functions, and aggregate functions
======================================




1. Display each employee’s name in uppercase and the length of the name.

  SQL>
  
   SELECT UPPER(ENAME) AS UPPER_CASE_NAME , LENGTH(ENAME) FROM EMP;
    


2. Show the average salary of all employees, rounded to the nearest whole number.

SQL>

  SELECT  ROUND(AVG(SAL),0 ) AS AVERAGE_SALARY_OF_ALL_EMPLOYEE FROM EMP 


3. List the department numbers and the total salary for each department, using the SUM aggregate.

SQL>

SELECT DEPTNO , SUM(SAL) AS TOTAL_SALARY 
FROM EMP
GROUP BY DEPTNO;


4. For each employee, show the hire date and the number of months worked up to today (use MONTHS_BETWEEN).


SQL>

  SELECT ENAME , HIREDATE , FLOOR(MONTHS_BETWEEN(SYSDATE , HIREDATE)/12) AS NUMBER_OF_MONTH_TO_TODAY
  FROM EMP;


5. Find the maximum salary, the minimum salary, and the difference between them.


SQL>

SELECT MAX(SAL) AS MAXIMUM_SALARY , MIN(SAL) AS MINIMUM_SALARY  , (MAX(SAL) - MIN(SAL) ) AS DIFFERENCE_BETWEEN FROM EMP;


6. Display the employee name with the first three letters in uppercase and the rest in lowercase.

SQL>

  SELECT ENAME AS EMPLOYEE_NAME , UPPER(SUBSTR(ENAME , 1 , 3))|| LOWER(SUBSTR(ENAME ,4 )) AS UPPER_AND_LOWER_CASE
  FROM EMP;



7. Count how many employees have a salary greater than the average salary.


SQL>

  SELECT COUNT(*) AS EMP_COUNT 
  FROM EMP WHERE SAL > (SELECT AVG(SAL) FROM EMP);


8. Show the department name (from a dept table) in lower?case and the count of employees in each department.

SQL>

 SELECT LOWER(D.DNAME) , COUNT(E.EMPNO) AS EMPLOYESS_COUNT
 FROM EMP E, DEPT D
 WHERE E.DEPTNO=D.DEPTNO
 GROUP BY D.DNAME ;


9. Calculate the total commission (comm) for each department, ignoring NULL values, and round the result to two decimals.


SQL>

  SELECT  DEPTNO  ,  ROUND(SUM(NVL(COMM,0)),2) AS TOTAL_COMMISSION 
 FROM EMP
 GROUP BY DEPTNO;




10. List the employee name, salary, and salary rounded to the nearest hundred.

SQL>


 SELECT ENAME AS EMPLOYEE_NAME ,SAL, ROUND(SAL,-2) AS SALARY_ROUNDED 
 FROM EMP;



11. Find the average length of employee names (using LENGTH) and round it to the nearest integer.

SQL>

 SELECT  ROUND(AVG(LENGTH(ENAME))) AS AVERAGE_LENGTH_OF_EMP_NAME  FROM EMP;





12. Display the department with the highest total salary (use SUM and a sub?query).

SQL>


SELECT D.DNAME , D.DEPTNO , E.TOTAL_SALARY 
FROM  DEPT  D , (SELECT DEPTNO , SUM(SAL) AS TOTAL_SALARY FROM EMP
                   GROUP BY DEPTNO) E
WHERE E.DEPTNO=D.DEPTNO
AND E.TOTAL_SALARY = (SELECT MAX(E.TOTAL_SALARY) FROM (SELECT DEPTNO ,  SUM(SAL) AS TOTAL_SALARY FROM EMP
                                                               GROUP BY DEPTNO   )) ;




13. Show each employee’s name and the number of days between their hire date and the current date.

SQL>


SELECT  ENAME AS EMPLOYEE_NAME , FLOOR((SYSDATE - HIREDATE)) AS DAYS_BETWEEN FROM EMP;



  14. Using the MOD function, list employees whose employee number is an even number.


SQL>


     SELECT EMPNO ,  ENAME FROM EMP WHERE MOD(EMPNO,2)=0;

 15. Find the minimum, maximum, and average salary for each job title, and display the job title in uppercase.

 
 SQL>
  
   SELECT UPPER(JOB) , MAX(SAL)AS MAXIMUM_SALARY , MIN(SAL) AS MINIMUM_SALARY , ROUND(AVG(SAL)) AS AVAERAGE_SALARY 
   FROM EMP
   GROUP BY JOB ;
 
 
 16. Count the number of employees whose name starts with ‘A’ (use SUBSTR or LIKE).


SQL>

  SELECT COUNT(*) AS NO_OF_EMPLOYEES FROM EMP WHERE SUBSTR(ENAME , 1 ,1 )='A';


17. Show the total number of employees and the average salary, both rounded to two decimal places.


SQl>

 SELECT     ROUND(COUNT(*),2) AS TOTAL_NO_OF_EMPLOYEE ,  ROUND(AVG(SAL),2) AS ROUND_TWO_DECIMAL_PLACES
 FROM EMP;




18. For each department, display the department name and the concatenated string “Dept?<name> has <n> employees”.

SELECT    D.DNAME ,   'DEPT'||D.DNAME||'HAS' || COUNT(E.EMPNO) || 'EMPLOYEES' AS RESULT 
FROM EMP E, DEPT D 
WHERE D.DEPTNO=E.DEPTNO
GROUP BY D.DNAME , D.DEPTNO ;





19. Using the CEIL function, calculate the number of years (rounded up) each employee has worked.

 ANS>
 
    SELECT  CEIL((HIREDATE-SYSDATE)/365) FROM EMP;

    SELECT  CEIL(SYSDATE-HIREDATE)/365) AS RESULT  FROM EMP;


20. Find the employee with the longest name and display its length.

ANS>
  
  SELECT ENAME AS EMPLOYESS_NAME , LENGTH(ENAME) AS LENGTH_OF_ENAMEE FROM EMP 
  WHERE LENGTH(ENAME) = (SELECT MAX(LENGTH(ENAME)) FROM EMP);
 
  

21. List the sum of salaries for each department, but only for departments where the total exceeds 10,000.

ANS>
 
  SELECT DEPTNO , SUM(SAL) FROM EMP
  GROUP BY DEPTNO
  HAVING SUM(SAL)>10000;
 


22. Show the employee name, salary, and salary after a 5?% raise (use arithmetic and ROUND).

ANS>

 SELECT ENAME , SAL AS SALARY , ROUND(SAL+SAL*0.05) AS SALARY_RAISE FROM EMP;



23. Using the FLOOR function, display the number of full years each employee has worked.


ANS> 
  SELECT FLOOR((SYSDATE-HIREDATE)/365) AS YEAR_EMPLOYEE FROM EMP;
  



24. Count the number of distinct job titles in the emp table.


SELECT  COUNT(DISTINCT(JOB)) FROM EMP;


25. Display the department name and the average salary, formatted to two decimal places, for departments where the average salary is above the overall average.
26. Using the SUBSTR function, extract the last three characters of each employee’s name and count how many employees have the same suffix.
27. Show the maximum salary, minimum salary, and the difference between them for each department.
28. Using the ABS function, list employees whose salary difference from the average salary is greater than 5,000.
29. Find the total number of employees hired in each quarter of the year (use TO_CHAR and COUNT).
30. Display the employee name, hire date, and the number of days left until the employee’s next work anniversary (use ADD_MONTHS and CEIL).

These questions cover a mix of character manipulation, numeric calculations, and aggregation, giving you plenty of practice with the three function families.
 
 
 


