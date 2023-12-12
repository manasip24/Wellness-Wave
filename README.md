# WellnessWave Database Management System (DBMS)

## Introduction
Welcome to the WellnessWave Database Management System (DBMS) project. Our aim is to provide a robust platform for managing and analyzing health and wellness data, empowering individuals on their journey to optimal health. This README provides an overview of the project's mission, structure, and key components.

## Mission Statement
At WellnessWave, the mission is clear: I am dedicated to empowering individuals on their path to optimal health and wellness. Through the use of personalized, data-driven insights and support, we seek to revolutionize how people manage their well-being. This DBMS, WellnessWave, plays a pivotal role in achieving this mission by centralizing and analyzing critical health and wellness data.

## Database Structure
Our DBMS comprises several key tables that organize and store essential data for a comprehensive health and wellness management experience:
- **User_T Table (30):** This table houses user profiles and details.
- **Health_Data Table (30):** It contains individual health metrics and records.
- **Wellness_Advice Table (20):** This table provides wellness tips and information.
- **Exercise_Routine Table (20):** Here, you'll find details of various exercise routines.
- **Meal_Plan Table (25):** This table stores nutritional plans and dietary information.
- **Health_Buddy Table (25):** It facilitates connections among users for mutual health support.
- **Professional_Advisor Table (10):** This table contains information about health professionals.

## Normalization
In my database design, I prioritize data integrity and efficiency. I have confirmed that all tables adhere to the second normal form (2NF) standard by having single-column primary keys. Additionally, I am actively working on transitioning to the third normal form (3NF) to eliminate transitive dependencies and further enhance data integrity while reducing redundancy.

## Project Content
Project content includes various aspects of our DBMS:
- **Data Volume:** 
The WellnessWave Database Management System (DBMS) encompasses 150 records distributed among seven tables, including user profiles, health metrics, wellness advice, exercise routines, meal plans, support connections, and information about health professionals.
- **Normalization:** During the normalization process, we confirmed 2NF compliance by ensuring single-column primary keys for all tables, initiated the transition to 3NF by removing transitive dependencies, and strategically created new tables to enhance data integrity and reduce redundancy, such as User_Contact for emails and Meal_Plan_Details for plan descriptions, all while maintaining referential integrity with foreign keys..
- **Users with High Interaction Frequency:** We identified users who are highly active in the Health Buddy program, potentially indicating a strong commitment to their health and wellness journey.
- **Health Data by Age Group:** Designed a query to give a summarized view of health data categorized by different age groups. It is particularly useful for understanding health trends across different age demographics.Categorized users into age groups ('20s', '30s', or '40+').Calculated the average weight, heart rate, and steps count for each age group.
- **Most Popular Meal Plan:** Found the most popular types of meal plans among users based on their dietary restrictions. This could help in tailoring more focused nutritional advice or meal plans in future. Counted the number of users for each unique dietary restriction. Sorted the results in descending order, showing the most common dietary restrictions first.
- **Correlation between Age & Wellness Activity Participation:** Investigated the relationship between age and participation in various wellness activities, such as exercise routines and wellness advice categories. Understanding this correlation can help tailor wellness programs more effectively to different age groups. Query counts how many exercise routines and wellness advice records are associated with users of each age in the User_T table.
- **Health Data Trends Over Time:** Focused on observing the trends in health data (like weight, blood pressure, and heart rate) over time. Calculated the average weight, heart rate, and steps count for each date on which health data was recorded. Grouped and ordered the results by the date the data was recorded.


## Contributor
- Manasi H. Patil

I invite you to explore our project, contribute to its development, and leverage our DBMS for your health and wellness analysis needs. WellnessWave is more than just a database; it's a commitment to enhancing the well-being of individuals through the power of data-driven insights and support.
