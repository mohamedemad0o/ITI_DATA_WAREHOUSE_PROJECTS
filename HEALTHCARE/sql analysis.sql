--patient who has heart disease
select patient_id from dim_diagnosis d join fact_patient_diagnosis f
on d.diagnosis_sk = f.diagnosis_sk join dim_patient p
on p.patient_sk = f.patient_sk
where heart_disease = 1
group by patient_id

-- number of heart_disease
select count(heart_disease) as number_of_heart_disease from dim_diagnosis 
where heart_disease = 1

-- patient who smokes
select patient_id from dim_diagnosis d join fact_patient_diagnosis f
on d.diagnosis_sk = f.diagnosis_sk join dim_patient p
on p.patient_sk = f.patient_sk
where smoking_status = 'smokes'
group by patient_id

-- the pients who have the least glucose level
select top 5 patient_id , f.avg_glucose_level from dim_patient p join fact_patient_diagnosis f
on f.patient_sk = p.patient_sk
order by f.avg_glucose_level asc

--top bmi
select top 5 patient_id , f.bmi from dim_patient p join fact_patient_diagnosis f
on f.patient_sk = p.patient_sk
order by f.bmi desc 

--patient who has hypertension
select patient_id from dim_diagnosis d join fact_patient_diagnosis f
on d.diagnosis_sk = f.diagnosis_sk join dim_patient p
on p.patient_sk = f.patient_sk
where hypertension = 1
group by patient_id

----patient who has stroke
select patient_id from dim_diagnosis d join fact_patient_diagnosis f
on d.diagnosis_sk = f.diagnosis_sk join dim_patient p
on p.patient_sk = f.patient_sk
where stroke = 1
group by patient_id

-- date of diagnosis for each patient 
select patient_id , diagnosis_date from dim_diagnosis d join fact_patient_diagnosis f
on d.diagnosis_sk = f.diagnosis_sk join dim_patient p
on p.patient_sk = f.patient_sk

-- check residense type
select patient_id , residence_type from dim_patient 


