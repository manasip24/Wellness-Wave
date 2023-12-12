-- ------------------ 1. Users with High Interaction Frequency in Health Buddy Program ---------------------
SELECT hb.User1_ID, u1.U_Name AS User1_Name, hb.User2_ID, u2.U_Name AS User2_Name, hb.Interaction_Frequency
FROM Health_Buddy hb
JOIN User_T u1 ON hb.User1_ID = u1.User_ID
JOIN User_T u2 ON hb.User2_ID = u2.User_ID
WHERE hb.Interaction_Frequency = 'Weekly';

-- ------------------ 2. Aggregate Health Data by Age Group ---------------------
SELECT 
  CASE 
    WHEN U_Age BETWEEN 20 AND 29 THEN '20s'
    WHEN U_Age BETWEEN 30 AND 39 THEN '30s'
    ELSE '40+' 
  END AS Age_Group,
  AVG(Weight) AS Average_Weight,
  AVG(Heart_Rate) AS Average_Heart_Rate,
  AVG(Steps_Count) AS Average_Steps
FROM User_T u
JOIN Health_Data hd ON u.User_ID = hd.User_ID
GROUP BY Age_Group;

-- -------------- 3. Most popular meal plans based on dietary restrictions --------------------
SELECT Dietary_Restrictions, COUNT(*) AS Number_of_Users
FROM Meal_Plan
GROUP BY Dietary_Restrictions
ORDER BY Number_of_Users DESC
LIMIT 5;

-- --------- 4. Correlation between user age and participation in wellness activities ----------------------
SELECT 
  u.U_Age,
  COUNT(er.Routine_ID) AS Exercise_Participation,
  COUNT(wa.Advice_ID) AS Wellness_Advice_Participation
FROM User_T u
LEFT JOIN Health_Data hd ON u.User_ID = hd.User_ID
LEFT JOIN Exercise_Routine er ON hd.User_ID = er.Routine_ID
LEFT JOIN Wellness_Advice wa ON hd.User_ID = wa.Advice_ID
GROUP BY u.U_Age;

-- ---------------------- 5. health data trends over time-----------------------
SELECT 
  Date_Recorded,
  AVG(Weight) AS Average_Weight,
  AVG(Heart_Rate) AS Average_Heart_Rate,
  AVG(Steps_Count) AS Average_Steps
FROM Health_Data
GROUP BY Date_Recorded
ORDER BY Date_Recorded;
