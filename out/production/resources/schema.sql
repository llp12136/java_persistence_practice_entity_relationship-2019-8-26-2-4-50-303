CREATE TABLE employee (

  employeeID VARCHAR(64) PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  age   int(4) NOT NULL,
  companyID INTEGER FOREIGN KEY(companyID) references company(companyID)
);

CREATE TABLE company (

  companyID INTEGER PRIMARY KEY,
  CompanyName VARCHAR(64) NOT NULL,
  companyAdminID INTEGER FOREIGN KEY(companyAdminID) references company_Administrator(companyAdminID) ,
  SysAdmID  VARCHAR(64) NOT NULL
);

CREATE TABLE System_Administrator (

  SysAdmID INTEGER PRIMARY KEY,
  userName VARCHAR(64) NOT NULL,
  password  VARCHAR(64) NOT NULL
);

CREATE TABLE company_Administrator (

  companyAdminID INTEGER PRIMARY KEY,
  companyAdminName VARCHAR(64) NOT NULL,
  employeeID  VARCHAR(64) FOREIGN KEY(employeeID) references employee(employeeID)
);