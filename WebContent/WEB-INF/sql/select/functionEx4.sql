-- date to char
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(9956789, '999,999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999.999') FROM dual;

-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT 
TO_CHAR(
TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS')
, 'YYYY-MM-DD HH:MI:SS')
FROM dual;

-- char to number
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;





