USE [OPD ];
SELECT * FROM [dbo].[DOCTOR]
SELECT * FROM PATIENTS 
SELECT * FROM [dbo].[TIMETABLE]
SELECT * FROM [dbo].[WARD]

select doctor_id from doctor;

select column7 from doctor;

ALTER TABLE doctor DROP COLUMN column7;

select COUNT(*) as 'Experince_detals',Experience from DOCTOR
group by Experience

SELECT COUNT(Patient_name) AS 'Patients Name',Doctor_name,Ward_No 
FROM Patients GROUP BY Doctor_name,Ward_No

SELECT Doctor_name , AVG(Fees) as 'Avg Fees' FROM Patients 
GROUP BY Doctor_name

SELECT Ward.Nurses , Timetable.Doctor_name FROM Timetable,Ward WHERE
Timetable.Ward_no=Ward.Ward_no AND Timetable.Day='Wednesday' and
Timetable.Doctor_name IN(SELECT Doctor_name FROM Timetable WHERE
Doctor_name='Dr.Rutuja')

SELECT Doctor_name, Time FROM Timetable
WHERE Doctor_name ='Dr.Rutuja' AND Day='Wednesday' ;

SELECT Doctor_name,COUNT(Condition) AS 'Good Condition'
FROM Patients WHERE Condition='Good'GROUP BY Doctor_name; 

SELECT MIN(Beds) AS 'Min Beds' FROM WARD;

SELECT Beds, Ward_no FROM WARD WHERE Beds IN(SELECT MIN(Beds) FROM WARD);
Display count of patients treated on each day. 

SELECT COUNT(Patient_name) AS 'Patient count', Treatment_date FROM 


SELECT Doctor_name, Specialty FROM DOCTOR GROUP BY Specialty, Doctor_name;

SELECT Doctor_name, Specialty FROM DOCTOR WHERE Specialty = 'Cardiologist'

SELECT COUNT(Experience) AS 'Toatal experince', Specialty FROM DOCTOR 
WHERE Specialty = 'Cardiologist' GROUP BY Specialty;

SELECT DOCTOR.Doctor_name, WARD.Ward_no FROM DOCTOR, WARD;

SELECT Floor, AVG(Beds) AS 'Avg Beds' FROM WARD GROUP BY FLOOR

 SELECT DOCTOR.Doctor_name, WARD.Ward_no FROM DOCTOR, WARD;

 SELECT Treatment_date, COUNT(Patient_name) AS 'Patient count' FROM PATIENTS 
 GROUP BY Treatment_date;
 Display count of patients from each condition type.

 SELECT Condition, COUNT(Patient_name) AS 'Number of Patients' FROM PATIENTS 
 GROUP BY Condition;

 SELECT DOCTOR.Contact_No, PATIENTS.Patient_name FROM DOCTOR
 INNER JOIN PATIENTS ON DOCTOR.Doctor_name=PATIENTS.Doctor_name
