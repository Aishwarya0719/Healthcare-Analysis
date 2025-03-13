use db Healthcare
create database Hethcare;
SELECT * FROM healthcare_data;

--Count the Total Number of Patients
select count(patient_id) AS total_patients from healthcare_data;

--find the Earliest and latest Admidssion Dates
select MIN(admit_date) AS earliest_admission,MAX(admit_date) AS latest_admission from healthcare_data;

--Find Patients with the Highest Billing Amount
select top 5  patient_id, billing_amount from  healthcare_data
order by billing_amount  DESC ;

--count the number of patients by Diagnosis
select doctors_diagnosis , count(*) AS patient_count
from healthcare_data group by doctors_diagnosis
order by patient_count DESC;

--Retrive patients who have health insurance
select * from healthcare_data 
where health_insurance='yes';

--find the average billing amount per diagnosis
select doctors_diagnosis, AVG(billing_amount) as avg_billing
from healthcare_data
group by doctors_diagnosis
order by avg_billing desc;

--find the most common medical test orderd
select top 1 tests,count(*) AS test_count
from healthcare_data
group by tests
order by test_count desc;

--get the monthly patient admission count 
select DATE_FORMAT(admit_date,'%Y-%m')as month,count(*) as
admission_count from healthcare_data
group by month
order by month asc;