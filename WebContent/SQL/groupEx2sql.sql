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