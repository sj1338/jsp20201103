-- 14개 행, 8개 열
select * from employee;
-- 4개 행, 3개 열
select * from department;

select * from employee, department;

select eno, ename, dname from employee, department;
select eno, ename, employee.dno edno, department.dno ddno, dname from employee, department;

select eno, ename, employee.dno edno, department.dno ddno, dname from employee, department where eno = 7369;


select eno, ename, employee.dno edno, department.dno ddno, dname from employee, department where eno = 7369 and employee.dno = department.dno;


---


select * from employee, department where employee.dno = department.dno;

select eno, ename, dname from employee, department where employee.dno = department.dno and eno = 7788;

select employee.eno, employee.ename, department.dname, employee.dno from employee, department where employee.dno = department.dno and employee.eno = 7788;

select eno, ename, dname, employee.dno from employee, department where employee.dno = department.dno and eno = 7788;

-- equi join 같은 걸 묶는것
select * from employee, department where employee.dno = department.dno;

select e.eno, e.ename, d.dname, e.dno from employee e, department d where e.dno = d.dno and eno = 7788;

select e.ename, e.dno, d.dname from employee e, dEpartment d where e.dno = d.dno and e.ename = 'SCOTT';

SELECT E.ENAME, D.DNaME FROM employee E, department D = WHERE E.DNO = D.DNO AND E.ENAME LIKE '%A%';

select * from employee natural join department;
select * from employee natural join department where eno = 7782;
-- natural은 타입도 같아야함 int string 등
SELECT e.eno, d.dname FROM employee e NATURAL JOIN department d;
-- using 은 안같아도됨
select * from employee join department using(dno);

