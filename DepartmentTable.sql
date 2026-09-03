DROP TABLE IF EXISTS dept;

CREATE TABLE dept (

deptno int(2) not NULL,

dname varchar(20) not NULL,emp

loc varchar(20) not NULL,

primary key(deptno)

);

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');

INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');

INSERT INTO dept VALUES ('30','SALES','CHICAGO');

INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');