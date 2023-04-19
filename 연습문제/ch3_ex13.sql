-- department table ����
CREATE TABLE department (
depno NUMBER(10) NOT NULL PRIMARY KEY,
deptname VARCHAR2(20),
manager VARCHAR2(20)
);

-- employee table ����
CREATE TABLE employee (
empno NUMBER(10) NOT NULL PRIMARY KEY,
name VARCHAR2(20),
phoneno NUMBER(10),
address VARCHAR2(20),
sex VARCHAR2(20),
position VARCHAR2(20),
deptno NUMBER(10),
FOREIGN KEY (deptno) REFERENCES department(depno)
);

-- project table ����
CREATE TABLE project (
projno NUMBER(10) NOT NULL PRIMARY KEY,
projname VARCHAR2(20),
deptno NUMBER(10),
FOREIGN KEY (deptno) REFERENCES department(depno)
);

-- works table ����
CREATE TABLE works (
projno NUMBER(10) NOT NULL,
empno NUMBER(10) NOT NULL,
hoursworked NUMBER(10),
PRIMARY KEY (projno, empno),
FOREIGN KEY (projno) REFERENCES project(projno),
FOREIGN KEY (empno) REFERENCES employee(empno)
);

-- department table ������
INSERT INTO department (depno, deptname, manager) VALUES
(1, 'IT', '����');
INSERT INTO department (depno, deptname, manager) VALUES
(2, 'Marketing', 'ȫ�浿');

-- employee table ������
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES
(1, '�����', 01012341232, '����', '��', 'Programmer', 1);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES
(2, '�̼���', 01012323122, '����', '��', 'Programmer', 1);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES
(3, '�ڿ���', 01076851231, '����', '��', 'Salesperson', 2);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES
(4, 'ȫ�浿', 01012341546, '����', '��', 'Manager', 2);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES
(5, '����', 01012311112, '����', '��', 'Manager', 1);

-- project table ������
INSERT INTO project (projno, projname, deptno) VALUES
(1, '�����ͺ��̽�', 1);
INSERT INTO project (projno, projname, deptno) VALUES
(2, '��������', 2);

-- works table ������
INSERT INTO works (projno, empno, hoursworked) VALUES
(1, 3, 3);
INSERT INTO works (projno, empno, hoursworked) VALUES
(1, 2, 1);
INSERT INTO works (projno, empno, hoursworked) VALUES
(2, 3, 1);
INSERT INTO works (projno, empno, hoursworked) VALUES
(2, 4, 5);
INSERT INTO works (projno, empno, hoursworked) VALUES
(1, 5, 1);