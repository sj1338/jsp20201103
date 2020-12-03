-- KEY : 각 레코드(row)를 유일하게 구분 할 수 있는 컬럼(들)

-- PRIMARY KEY : 각 레코드들을 유일하게 구분하는 컬럼, 변하지 않는 값일 수록 좋음
-- 모든 값이 변할 수는 있으니까, 키 컬럼 새로 만들기 추천
-- 자동으로 1씩 늘어나는 정수를 보통 사용
-- NOT NULL + UNIQUE = PRIMARY KEY

CREATE TABLE const05 (
    email VARCHAR(30),
    name VARCHAR(30),
    ssn VARCHAR(30),
    address VARCHAR(30),
    birth DATE
);
SELECT * FROM const05;

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY,
    name VARCHAR2 (30)
);

INSERT INTO const06 (id, name)
VALUES (1, 'a');
INSERT INTO const06 (id, name)
VALUES (null, 'b');
INSERT INTO const06 (id, name)
VALUES (1, 'c');
INSERT INTO const06 (id, name)
VALUES (2, 'd');

SELECT * FROM const06;
COMMIT;


-- FOREIGN KEY
CREATE TABLE const07_emp
AS
SELECT * FROM employee;
CREATE TABLE const07_dep
AS
SELECT * FROM department;

SELECT eno, ename, dno FROM const07_emp;
SELECT * FROM const07_dep;
INSERT INTO const07_emp (eno, ename, dno)
VALUES (8787, 'ABC', 50);
COMMIT;

DESC department;
CREATE TABLE const08_dep
(
DNO NUMBER(2) PRIMARY KEY,

DNAME VARCHAR2(14),
LOC VARCHAR2(13)
)

INSERT INTO const08_dep
SELECT * FROM department;
