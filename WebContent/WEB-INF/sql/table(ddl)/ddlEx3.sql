-- TABLE 이름 변경
-- RENAME
-- 책(214쪽)
RENAME dept20 TO emp20;
DESC dept20;
DESC emp20;
SELECT * FROM emp20;

-- TABLE 제거
-- DROP TABLE
-- 책(215쪽)
DROP TABLE emp20;
DESC emp20;

-- 테이블의 데이터만 삭제
--TRUNCATE TABLE
--책 (216쪽)
SELECT * FROM dept_second;
TRUNCATE TABLE dept_second;
