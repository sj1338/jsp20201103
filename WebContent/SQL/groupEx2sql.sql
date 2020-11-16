select * from employee;
select max(salary) from employee;
select job, max(salary) from employee
GROUP BY job;
select max(salary) from employee 
group by job;

select ename, max(salary) from employee GROUP BY ename;

select dno as "부서번호", avg(salary) as "급여평균" from employee group by dno;
select avg(salary) as "급여평균" from employee group by dno;
select dno, job, count(*), sum(salary) from employee group by dno, job
order by dno, job;

SELECT JOB, AVG(SALARY) FROM employee GROUP BY JOB;

SELECT DNO, MAX(SALARY) FROM employee GROUP BY DNO HAVING MAX(SALARY) >= 3000;

SELECT JOB, COUNT(*), SUM(SALARY) FROM employee WHERE JOB NOT LIKE '%MANAGER%' GROUP BY JOB HAVING SUM(SALARY) >= 5000 ORDER BY SUM(SALARY);

SELECT MAX(AVG(SALARY)) FROM employee GROUP BY DNO;

SELECT MAX(SALARY) AS "MAXIMUM", MIN(SALARY) AS "MINIMUM", SUM(SALARY) AS "SUM", ROUND(AVG(SALARY)) AS "AVERAGE" FROM employee;

SELECT JOB AS "JOB", MAX(SALARY) AS "MAXIMUM", MIN(SALARY) AS "MINIMUM", SUM(SALARY) AS "SUM", ROUND(AVG(SALARY)) AS "AVERAGE" FROM employee GROUP BY JOB;

SELECT JOB, COUNT(*) FROM employee GROUP BY JOB;

SELECT COUNT(MANAGER) FROM employee;

SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE FROM employee;

SELECT JOB, MIN(SALARY) FROM employee GROUP BY JOB HAVING NOT MIN(SALARY) < 2000 ORDER BY MIN(SALARY) DESC;

SELECT DNO, COUNT(*) AS "NUMBER OF PEOPLE", ROUND(AVG(SALARY),2) AS "SALARY" FROM employee GROUP BY DNO ORDER BY DNO ASC;

SELECT DECODE(DNO, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERATIONS') AS "DNAME",
DECODE(DNO, 10, 'NEWYORK', 20, 'DALLAS', 30, 'CHICAGO', 40, 'BOSTON') AS "LOCATION",
COUNT(*) AS "NUMBER OF PEOPLE", ROUND(AVG(SALARY)) AS "SALARY" FROM employee GROUP BY DNO;