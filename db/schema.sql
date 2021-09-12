DROP TABLE IF EXISTS department
DROP TABLE IF EXISTS role
DROP TABLE IF EXISTS employee



-- need to make the department table first / then > role table / then > employee table  due to constraints

-- create department table
CREATE TABLE department(
    -- make data fields
    id INTEGER(11) AUTO_INCREMENT NOT NULL, 
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- create role table
CREATE TABLE role(
    -- make data fields
    id INTEGER(11) AUTO_INCREMENT NOT NULL, 
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

-- create employee table
CREATE TABLE employee(
    -- make data fields
    id INTEGER(11) AUTO_INCREMENT NOT NULL, 
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER(11) NOT NULL,
    manager_id INTEGER(11) NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);