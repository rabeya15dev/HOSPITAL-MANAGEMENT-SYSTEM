

CREATE VIEW patient_treatment_details AS 
      SELECT mr.Diagnosis,mr.Admission,mr.M_RecordDate,p.pfname,d.dfname FROM medicalrecord as mr JOIN doctor as d on mr.did=d.did JOIN patient as p on mr.pid=p.pid;

CREATE VIEW addmission_info AS SELECT Diagnosis, Admission, COUNT(*) as AdmissionCount
     FROM medicalrecord
     Group BY Diagnosis,Admission;
CREATE VIEW report_check_by_doctor AS SELECT
    d.dfname,d.specialist,
    lr.testname,
    rc.result
FROM
    report_check as rc
JOIN doctor as d ON rc.did = d.did
JOIN labreport as lr ON rc.reportid = lr.reportid;

 CREATE VIEW patient_report AS SELECT
    d.dfname,d.specialist,
    lr.testname,
    rc.result,p.pfname,p.page,p.bloodgroup
FROM
    report_check as rc
JOIN doctor as d ON rc.did = d.did
JOIN labreport as lr ON rc.reportid = lr.reportid
JOIN patient as p on lr.patientid=p.pid;

 CREATE VIEW admission_patient AS SELECT Diagnosis, Admission, COUNT(*) as AdmissionCount
     FROM medicalrecord
     Group BY Diagnosis,Admission;