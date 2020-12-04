-- NOT NULL
-- CHECK
-- UNIQUE
-- FOREIGN KEY
-- PRIMARY KEY

SELECT * FROM user_constraints;

-- 책 (252 쪽)
CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100));

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';


-- 책 (253쪽)
DROP TABLE customer;
CREATE TABLE customer (
  id VARCHAR2(20) ,
  pwd VARCHAR2(20) CONSTRAINT customer_pwd NOT NULL,
  name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
  phone VARCHAR2(30),
  address VARCHAR2(100),
  CONSTRAINT customer_id_pk PRIMARY KEY (id)
);
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

-- 책 (255쪽)
-- 책 (256쪽)







