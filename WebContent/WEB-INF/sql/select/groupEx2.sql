SELECT * FROM employee;
desc employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;


SELECT job, avg(salary) FROM employee
GROUP BY job;

SELECT job, avg(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;

-- �׷��Լ��� where���� �Ұ�
SELECT job, avg(salary) FROM employee
WHERE avg(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job
HAVING avg(salary) >= 3000;


select * from employee where dno=30 and ename like '%A%';





