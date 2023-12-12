 SELECT
    d.dfname,d.specialist,
    lr.testname,
    rc.result
FROM
    report_check as rc
JOIN doctor as d ON rc.did = d.did
JOIN labreport as lr ON rc.reportid = lr.reportid;



SELECT
    d.dfname,d.specialist,
    lr.testname,
    rc.result,p.pfname,p.page,p.bloodgroup
FROM
    report_check as rc
JOIN doctor as d ON rc.did = d.did
JOIN labreport as lr ON rc.reportid = lr.reportid
JOIN patient as p on lr.patientid=p.pid;

SELECT
    p.pid,
    p.pfname,
    adf.ad_date,
    SUM(b.amount) AS total_amount
FROM
    patient as p
JOIN addmissionform as adf ON p.pid = adf.pid
JOIN billing as b ON p.pid = b.pid
GROUP BY
    p.pid,pfname,adf.ad_date;



     SELECT Diagnosis, Admission, COUNT(*) as AdmissionCount
     FROM medicalrecord
     Group BY Diagnosis,Admission;

 
      SELECT mr.Diagnosis,mr.Admission,mr.M_RecordDate,p.pfname,d.dfname FROM medicalrecord as mr JOIN doctor as d on mr.did=d.did JOIN patient as p on mr.pid=p.pid;


   SELECT p.pfname,d.dfname,a.ap_date,a.ap_time FROM appointment as a JOIN patient as p ON a.pid=p.pid join doctor as d on d.did=a.did WHERE d.dfname="DR.Farzana";


    SELECT p.pfname,d.dfname,ap.ap_date,ap.ap_time FROM appointment as ap join patient AS p ON ap.pid=p.pid JOIN doctor as d ON ap.did=d.did WHERE p.pid=1; 

 
    SELECT p.bloodgroup, COUNT(*) AS PatientCount
FROM patient as p
GROUP BY bloodgroup;


    SELECT DISTINCT d.dfname, d.specialist, mr.Diagnosis
FROM medicalrecord AS mr
JOIN doctor AS d ON mr.did = d.did
WHERE mr.Diagnosis = 'Heart attack';

 
   SELECT p.pfname, p.page, mr.Diagnosis, mr.Admission
FROM medicalrecord AS mr
JOIN patient AS p ON mr.pid = p.pid
WHERE mr.Diagnosis = 'Flu' ;
    
   








