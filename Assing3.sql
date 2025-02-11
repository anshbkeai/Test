USE DbAssing3;

CREATE TABLE Emp (
    empno  INTEGER,
    ename VARCHAR(30) NOT NULL,
    job  VARCHAR(30) NOT NULL,
    MgrNo  INT NOT NULL,
    Hiredate  DATE,
    sal  INT,
    comm  INT
);

CREATE TABLE dept (
    deptno INT PRIMARY KEY,
    dname VARCHAR(30),
    loc VARCHAR(30)
);

ALTER TABLE Emp ADD PRIMARY KEY(empno);

INSERT INTO Emp (empno, ename, job, MgrNo, Hiredate, sal, comm, dept_no) VALUES
    (101, 'Amit Kumar', 'Manager', 201, '2022-01-15', 75000, NULL, 10),
    (102, 'Ravi Sharma', 'Developer', 101, '2023-03-22', 60000, 5000, 20),
    (103, 'Sneha Patel', 'HR', 101, '2021-07-10', 55000, NULL, 30),
    (104, 'Vikas Mehta', 'Developer', 102, '2022-09-01', 62000, 3000, 20),
    (105, 'Priya Singh', 'Sales Executive', 101, '2023-05-18', 50000, 7000, 40),
    (106, 'Rahul Joshi', 'Accountant', 103, '2020-11-25', 58000, NULL, 30),
    (107, 'Deepak Verma', 'Analyst', 102, '2021-08-05', 67000, 4500, 20),
    (108, 'Anjali Gupta', 'HR', 101, '2022-04-12', 53000, NULL, 30),
    (109, 'Sunil Yadav', 'Developer', 104, '2023-02-28', 59000, 2500, 20),
    (110, 'Neha Reddy', 'Manager', 201, '2020-06-15', 80000, NULL, 10);

INSERT INTO dept (deptno, dname, loc) VALUES
    (10, 'HR', 'New York'),
    (20, 'Finance', 'Los Angeles'),
    (30, 'IT', 'San Francisco'),
    (40, 'Marketing', 'Chicago'),
    (50, 'Sales', 'Miami'),
    (60, 'Operations', 'Dallas'),
    (70, 'Support', 'Seattle'),
    (80, 'Logistics', 'Denver'),
    (90, 'Legal', 'Boston'),
    (100, 'Research', 'Houston');

SELECT e.ename, e.sal, e.dept_no, d.dname 
FROM Emp e, dept d 
WHERE e.dept_no = d.deptno 
ORDER BY d.deptno;

SELECT empno, ename, sal FROM Emp ORDER BY sal LIMIT 5;

SELECT * FROM Emp WHERE sal > 99;

