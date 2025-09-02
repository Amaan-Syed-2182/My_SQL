SELECT * FROM INSURANCE;
-- 1. Show records of 'male' patient from 'southwest' region.
SELECT * FROM INSURANCE
WHERE GENDER = 'MALE' AND REGION = 'SOUTHWEST';

-- 2. Show all records having bmi in range 30 to 45 both inclusive.
SELECT * FROM INSURANCE
WHERE BMI BETWEEN 30 AND 55;

-- 3. Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
SELECT MAX(BLOODPRESSURE) AS MAXBP, MIN(BLOODPRESSURE) AS MINBP FROM INSURANCE
WHERE DIABETIC = 'YES' AND SMOKER = 'YES';

-- 4. Find no of unique patients who are not from southwest region.
SELECT COUNT(DISTINCT(PATIENTID)) FROM INSURANCE
WHERE REGION != 'southwest';

-- 5. Total claim amount from male smoker.
SELECT SUM(claim) FROM INSURANCE
WHERE GENDER = 'male' AND SMOKER = 'yes';

-- 6. Select all records of south region.
SELECT * FROM INSURANCE
WHERE REGION IN ('southwest','southeast');

-- 7. No of patient having normal blood pressure. Normal range[90-120]
SELECT COUNT(*) FROM INSURANCE
WHERE BLOODPRESSURE BETWEEN 90 AND 120;

SELECT COUNT(*) FROM INSURANCE
WHERE AGE<17 AND BLOODPRESSURE BETWEEN 80 + AGE*2 AND 100 + AGE*2;

-- 8. No of pateint belo 17 years of age having normal blood pressure as per below formula -
 --   - BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
 
 -- 9. What is the average claim amount for non-smoking female patients who are diabetic?
SELECT AVG(CLAIM) FROM INSURANCE
WHERE SMOKER = 'no' AND GENDER = 'female' AND DIABETIC = 'yes';

-- 10. Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.

SELECT * FROM INSURANCE
WHERE PATIENTID = 1234;

UPDATE INSURANCE
SET CLAIM = 5000
WHERE PATIENTID = 1234;

-- 11. Write a SQL query to delete all records for patients who are smokers and have no children.

SELECT * FROM INSURANCE
WHERE SMOKER = 'yes' AND CHILDREN = 0;

DELETE FROM INSURANCE
WHERE SMOKER = 'yes' AND CHILDREN = 0;

