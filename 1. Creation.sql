CREATE TABLE User_T (
    User_ID INT AUTO_INCREMENT PRIMARY KEY,
    U_Name VARCHAR(255),
    U_Email VARCHAR(255) UNIQUE,
    U_Age INT,
    U_Gender VARCHAR(50),
    -- Email is unique for each user
    CONSTRAINT UC_User UNIQUE (U_Email)
);

 
CREATE TABLE Health_Data (
    Health_Data_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID INT,
    Weight DECIMAL(5,2),
    Blood_Pressure VARCHAR(50),
    Heart_Rate INT,
    Steps_Count INT,
    Date_Recorded DATE,
    FOREIGN KEY (User_ID) REFERENCES User_T(User_ID)
    -- Links each health record to a specific user
);

CREATE TABLE Wellness_Advice (
    Advice_ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    W_Description TEXT,
    Category VARCHAR(100)
    -- General wellness advice, not user-specific
);

CREATE TABLE Exercise_Routine (
    Routine_ID INT AUTO_INCREMENT PRIMARY KEY,
    E_Description TEXT,
    Difficulty_Level VARCHAR(50),
    Duration INT
    -- Details about various exercise routines
);

CREATE TABLE Meal_Plan (
    Meal_Plan_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID INT,
    Plan_Details TEXT,
    Calories INT,
    Dietary_Restrictions VARCHAR(255),
    Plan_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES User_T(User_ID)
    -- Each meal plan is linked to a user
);

CREATE TABLE Health_Buddy (
    Buddy_ID INT AUTO_INCREMENT PRIMARY KEY,
    User1_ID INT,
    User2_ID INT,
    Connection_Date DATE,
    Interaction_Frequency VARCHAR(100),
    FOREIGN KEY (User1_ID) REFERENCES User_T(User_ID),
    FOREIGN KEY (User2_ID) REFERENCES User_T(User_ID)
    -- Facilitates connections between users for health support
);

CREATE TABLE Professional_Advisor (
    Advisor_ID INT AUTO_INCREMENT PRIMARY KEY,
    P_Name VARCHAR(255),
    Specialty VARCHAR(100),
    Contact_Info VARCHAR(255),
    Availability VARCHAR(255)
    -- Information about health professionals available to users
);

