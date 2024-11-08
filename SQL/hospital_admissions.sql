select
	admissions.hadm_id,
	patients.subject_id,
	case
		when patients.gender = 'F' then 'Female'
		when patients.gender = 'M' then 'Male'
	end as gender,
	date_diff('year',patients.dob, admissions.admittime) as age_years_on_admission,
	admissions.admittime,
	admissions.dischtime,
	admissions.deathtime,
	admissions.admission_type,
	admissions.admission_location,
	admissions.discharge_location,
	admissions.insurance,
	admissions.ethnicity,
	admissions.diagnosis,
	case
		when admissions.admission_type = 'EMERGENCY'
			then 1
		else 0
	end as emergency_admit_ind,
	date_diff('day',admissions.admittime,admissions.dischtime) as length_of_stay
from
	main.admissions
	inner join main.patients
		on admissions.subject_id = patients.subject_id
where
	year(admittime) between 2014 and 2024

	