


create table Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(255) NOT NULL
);


create table Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    BirthDate DATE,
    PhoneNumber NVARCHAR(50),
    NationalID NVARCHAR(50),
    Nationality NVARCHAR(50),
    MaritalStatus NVARCHAR(50),
    Password NVARCHAR(255), 
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


create table Tasks (
    TaskID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    StartDate DATE,
    DueDate DATE,
    TaskDescription NVARCHAR(MAX),
    ImportanceLevel NVARCHAR(50),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


    create table Feedback (
    FeedbackID INT IDENTITY(1,1) PRIMARY KEY,
    SenderEmail NVARCHAR(255) NOT NULL,
    FeedbackMessage NVARCHAR(MAX),
    SubmissionDate DATETIME DEFAULT GETDATE()
);


INSERT INTO Departments (DepartmentName) 
VALUES ('Haneen Sobeeh'), ('IT'), ('Jordan'), ('software Enginner');

INSERT INTO Employees (Name, BirthDate, PhoneNumber, NationalID, Nationality, MaritalStatus, PersonalPhoto, EntryDate, Password, DepartmentID)
VALUES 
('Haneen', '1990-05-15', '123456789', 'ABC12345', 'Jordan', 'Single', NULL, '2020-01-01', 'hashed_password', 1),
('Sobeeh', '1985-10-20', '987654321', 'XYZ98765', 'Lebonan', 'Married', NULL, '2019-05-10', 'hashed_password', 2);


INSERT INTO Tasks (Title, StartDate, DueDate, TaskDescription, ImportanceLevel, EmployeeID)
VALUES 
('Complete Financial Report', '2024-10-01', '2024-10-15', 'Prepare the financial report for Q3', 'High', 1),
('Update Software', '2024-10-05', '2024-10-20', 'Update the company software to the latest version', 'Medium', 2);


INSERT INTO Feedback (SenderEmail, FeedbackMessage)
VALUES 
('customer1@example.com', 'Great service! Keep it up!'),
('customer2@example.com', 'Please improve your customer support.');
