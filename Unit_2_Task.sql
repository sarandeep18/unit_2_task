CREATE DATABASE Pharmacy;

USE Pharmacy;

CREATE TABLE Tablets (
    TabletID INT PRIMARY KEY,
    TabletName VARCHAR(50),
    TabletWeight DECIMAL(5,2),
    Disease VARCHAR(100),
    Symptom VARCHAR(100)
);

INSERT INTO Tablets (TabletID, TabletName, TabletWeight, Disease, Symptom) VALUES
(1, 'Crocin', 650, 'Fever', 'High Temperature'),
(2, 'Combiflam', 400, 'Body Pain', 'Muscle Pain'),
(3, 'Pantoprazole', 40, 'Acidity', 'Stomach Burning'),
(4, 'Allegra', 120, 'Allergy', 'Skin Rash'),
(5, 'Augmentin', 625, 'Bacterial Infection', 'Fever'),
(6, 'Glimipride', 2, 'Diabetes', 'High Blood Sugar'),
(7, 'Rabeprazole', 20, 'Gastric Ulcer', 'Acid Reflux'),
(8, 'Domperidone', 10, 'Vomiting', 'Nausea'),
(9, 'Cefixime', 200, 'Typhoid', 'Weakness'),
(10, 'Artemether', 80, 'Malaria', 'Chills'),
(11, 'Ofloxacin', 200, 'Urinary Infection', 'Burning Urination'),
(12, 'Rosuvastatin', 20, 'High Cholesterol', 'Chest Discomfort'),
(13, 'Amlodipine', 5, 'High Blood Pressure', 'Headache'),
(14, 'Telmisartan', 40, 'Hypertension', 'Dizziness'),
(15, 'Thyronorm', 50, 'Hypothyroidism', 'Weight Gain'),
(16, 'Novorapid', 10, 'Diabetes', 'High Glucose'),
(17, 'Montelukast', 10, 'Asthma', 'Shortness of Breath'),
(18, 'Apixaban', 5, 'Blood Clot', 'Leg Swelling'),
(19, 'Torsemide', 20, 'Kidney Disease', 'Fluid Retention'),
(20, 'Clonazepam', 0.5, 'Anxiety', 'Panic Attacks');
select *from Tablets;
UPDATE Tablets
SET Symptom = 'Severe Fever'
WHERE TabletID = 1;

DELETE FROM Tablets
WHERE TabletID = 3;

DELETE FROM Tablets
WHERE TabletID = 2;

SELECT TabletName, TabletWeight
FROM Tablets;
select min(TabletWeight),max(TabletWeight),avg(TabletWeight),sum(TabletWeight) from Tablets;
select TabletName,Disease from Tablets group by  having symptom='fever';