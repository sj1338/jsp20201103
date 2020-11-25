SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;

SELECT 
MONTHS_BETWEEN(SYSDATE, TO_DATE('2019-10-13', 'yyyy-mm-dd'))
FROM dual;

SELECT 
MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE)
FROM dual;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

select * from employee;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;


