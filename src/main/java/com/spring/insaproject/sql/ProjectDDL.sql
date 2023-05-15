drop table employee cascade constraints;
drop table department cascade constraints;
drop table evaluation cascade constraints;

CREATE TABLE employee (
    empno   NUMBER NOT NULL,
    deptno  NUMBER NOT NULL,
    eval_grade VARCHAR2(10 BYTE) NOT NULL,
    ename  VARCHAR2(40 BYTE) NOT NULL,
    age NUMBER NOT NULL,
    gender VARCHAR2(10 BYTE) NOT NULL,
    position VARCHAR2(30 BYTE) NOT NULL,
    status VARCHAR2(10 BYTE) NOT NULL,
    sal NUMBER NOT NULL
);

ALTER TABLE employee
    ADD CONSTRAINT empl_pk PRIMARY KEY (empno);


CREATE TABLE department (
    deptno   NUMBER NOT NULL,
    dname VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE department
    ADD CONSTRAINT dept_pk PRIMARY KEY (deptno);


CREATE TABLE evaluation (
    eval_grade VARCHAR2(10 BYTE) NOT NULL,
    sal_change NUMBER NOT NULL,
    promotion VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE evaluation
    ADD CONSTRAINT eval_pk PRIMARY KEY (eval_grade);


alter table employee
add constraint employee_deptno_fk foreign key(deptno) references department(deptno);

alter table employee
add constraint employee_eval_grade_fk foreign key(eval_grade) references evaluation(eval_grade);


commit;