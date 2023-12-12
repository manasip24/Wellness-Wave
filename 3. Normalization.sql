--  1. Creating a separate table for user contact information
CREATE TABLE User_Contact (
    User_ID INT PRIMARY KEY,
    Email VARCHAR(255),
    FOREIGN KEY (User_ID) REFERENCES User_T (User_ID)
);

-- Populating the User_Contact table from the existing User table
INSERT INTO User_Contact (User_ID, Email)
SELECT User_ID, U_Email FROM User_T;

select * from User_Contact;

-- Removing the Email column from the original User table
--  ALTER TABLE User DROP COLUMN Email;

-- ---------------------------------------------------------
-- --------------------------------------------------------

-- 2. Creating  New Table for Meal Plan Details:

CREATE TABLE Meal_Plan_Details (
    Meal_Plan_ID INT PRIMARY KEY,
    Plan_Details TEXT,
    FOREIGN KEY (Meal_Plan_ID) REFERENCES Meal_Plan(Meal_Plan_ID)
);

-- Populating the Meal_Plan_Details table from the existing Meal_Plan table
INSERT INTO Meal_Plan_Details (Meal_Plan_ID, Plan_Details)
SELECT Meal_Plan_ID, Plan_Details FROM Meal_Plan;

select * from Meal_Plan_Details;

-- Removing the PlanDetails column from the original Meal_Plan table
-- ALTER TABLE Meal_Plan DROP COLUMN PlanDetails;

