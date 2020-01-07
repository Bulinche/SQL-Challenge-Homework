CREATE TABLE "Departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

DROP TABLE "Departments";

CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(35)   NOT NULL,
    "last_name" VARCHAR(35)   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

DROP TABLE "Employees";

CREATE TABLE "Dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" Date   NOT NULL
);

DROP TABLE "Dept_emp";

CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

DROP TABLE "Dept_manager";

CREATE TABLE "Titles" (
    "emp_no" INTEGER   NOT NULL,
    "title"  VARCHAR(35)   NOT NULL,
	"from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

DROP TABLE "Titles";

CREATE TABLE "Salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

DROP TABLE "Salaries";

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departnments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept_emp" ("dept_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departnments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

