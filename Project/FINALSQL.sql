




CREATE TABLE Doctor(
    did int NOT NULL,
    dfname varchar(50) NOT NULL,
    dlname varchar(50) NOT NULL,
    dage int,
    dgender varchar(2),
    daddress varchar(50),
    specialist varchar(50),
    PRIMARY KEY (did)
);

INSERT into doctor(did,dfname,dlname,dage,Dgender,daddress,specialist) VALUES (1,"Prof Dr.Sujon","Debnath",40,"M","Dhaka","Dental"),(2,"Dr.Taufiq Hassan","Reza",45,"M","Dhaka","Dental"),(3,"Prof Dr.Sourav Saha","Mondol",55,"M","Comilla","ENT"),(4,"Dr.Kaberi","Guho",37,"F","Dhaka","Gynacologist"),(5,"Prof Dr. Nilima","Afroz",45,"F","Khulna","Gynacologist"),(6,"Prof Dr.Prodyut","Saha",50,"M","Dhaka","Surgery & Urology"),(7,"Prof Dr.Ratan","Kumar",49,"M","Barishal","Medicine & Cardiology"),(8,"Dr.Nehal","Warish",55,"M","Dhaka","Dermatology"),(9,"Prof Dr.Susanta","Sarkar",52,"M","Joypurhat","Medicine & Pediatrics"),(10,"Dr.Farzana","Khanom",38,"F","Khulna","General Physicians"),(11,"DR.Shakib","Khan",36,"M","Dhaka","Dermatology"),(12,"DR.Ratan","Kumar",41,"M","Mirpur","Surgery & Urology"),(13,"Prof Dr.Rashida","Akter",39,"F","Mirpur","General Physicians"),(14,"Prof Dr.Rubi","Akter",33,"F","Dhanmondi","Gynacologist"),(15,"Hassan","Ahmed",35,"M","Khulna","Dental");



CREATE TABLE doctor_qualification(did int,qualification varchar(50),FOREIGN KEY(did) REFERENCES doctor(did));

INSERT INTO doctor_qualification(did,qualification) VALUES (1,"BDS"),(1,"MPH"),(2,"BDS"),(2,"FCPS"),(3,"MBBS"),(3,"DLO"),(3,"BCS"),(4,"MBBS"),(4,"MS"),(5,"MBBS"),(5,"BCS"),(5,"FCPS"),(6,"MBBS"),(6,"MS"),(6,"BCS"),(6,"FCPS"),(7,"MBBS"),(7,"BCS"),(7,"FCPS"),(8,"MBBS"),(8,"MD"),(9,"MBBS"),(9,"BCS"),(9,"DCH"),(10,"MBBS"),(10,"PGT"),(11,"PGT"),(11,"MBBS"),(12,"MBBS"),(12,"BCS"),(12,"FCPS"),(13,"MPH"),(13,"MBBS"),(13,"BCS"),(14,"MBBS"),(14,"BCS"),(14,"MPH"),(15,"BDS"),(1,"BCS"), (3,"FCPS"),(7,"FCPS"),(11,"BCS"),(11,"FCPS"),(13,"FCPS"),(15,"FCPS");



CREATE TABLE patient(pid int NOT NULL,pfname varchar(50) NOT NULL,plname varchar(50) NOT NULL,page int,pgender varchar(2),paddress varchar(50),bloodgroup varchar(50),PRIMARY KEY(pid));

INSERT INTO patient(pid,pfname,plname,page,pgender,paddress,bloodgroup) VALUES
(1,"Asif","Islam",25,"M","Zatrabari,Dhaka","A+"),
(2,"Jannatul","Ferdous",30,"F","456 Park Ave,Chittagong","B-"),
(3,"Faridul","Alam",40, "M", "789 Broad St,Khulna","B+"),
(4,"Sazia","Ahmed",24,"F","Saidabad,Dhaka","AB+"),
(5,"Samia","Ahmed",18, "F","202 Lake Blvd,Barisal", "A-"),
(6,"Sophia","Khan",28, "F", "Sylhet","B+"),
(7,"Rabeya","Boshri",23,"F","Garden St,Rangpur","O-"),
(8,"Galib","Uddin",27,"M","Bou bazar,Comilla","A+"),
(9,"Ajoy","Roy",50,"M","Mohammadpur,Dhaka","AB-"),
(10,"Moushumi","Chowdhary",29,"F","Banani,Dhaka","B+"),
(11,"Shakib","Ahmed",36,"M","Dhanmondi","AB+"),
(12,"Yonna","Khan",22,"F","Mirpur","O-"),
(13,"Yanna","Akter",18,"F", "Dhanmondi","AB+"),
(14,"Sazia","Ahmed",19,"F","Khulna","A+"),
(15,"Rakib","Islam",15,"M","mirpur","O-"),
(16,"Hassan","Ali",10,"M","Banani,Dhaka","B+"),
(17,"Shakib","Ali",36,"M","Uttra","A-"),
(18,"Rabeya","Akter",36,"F","Dhanmondi","B+"),
(19,"Nila","Ahmed",22,"F","Bonani","A+"),
(20,"Yonna","khan",31,"F","Dhaka-15","O-");





CREATE TABLE nurse(nid int NOT NULL,nfname varchar(50) NOT NULL,nlname varchar(50) NOT NULL,ngender varchar(2),naddress varchar(50),nphn int(11),PRIMARY KEY(nid));




INSERT INTO nurse(nid,nfname,nlname,ngender,naddress,nphn) VALUES (1,"Nargis","Akhter","F","Khulna",01956745387),(2,"Romi","Ahmed","M","Dhaka",01786893423),(3,"Jotsna","Ahmed","F","Dhaka",01875930076),(4,"Tanjila","Akhter","F","Comilla",01911124356),(5,"Habib","Alam","M","Barishal",01736659073),(6,"Shakib","Hassan","M","Dhaka",01728763362),(7,"Leo","Messi","M","Dhanmondi",01928763342),(8,"shakib","Hassan","M","Magura",01532763326),(9,"Jotsna","Ahmed","F","Mirpur",01452362101),(10,"Nila","Akter","F","Gazipur",01368956632);




CREATE TABLE labReport(reportid int NOT NULL PRIMARY KEY,testname varchar(100) NOT NULL,patientid int,FOREIGN KEY (patientid) REFERENCES patient(pid));

INSERT INTO labReport (reportid,testname,patientid) VALUES
(19101,"Complete Blood Count",1),
(19102,"Blood Glucose",1),
(19106,"Cholesterol",4),
(17890,"Urinalysis",5),
(45678,"Liver Function Test",5),
(32467,"Thyroid Function Test",3),
(28999,"Hemoglobin A1c",1),
(10987,"Electrolytes Panel",7),
(12345,"MRI Brain",6),
(18901,"X-ray Chest",10),
(18950,"Cholesterol",11),
(19014,"Hemoglobin A1c",14),
(19024,"X-ray Chest",14),
(19632,"Hemoglobin A1c",11),
(19452,"Complete Blood Count",13),
(19725,"Urinalysis",13),
(19642,"MRI Brain",16);




CREATE TABLE report_check(reportid int,did int,Result VARCHAR(30),PRIMARY KEY(reportid,did),FOREIGN KEY(reportid) REFERENCES labreport(reportid),FOREIGN key(did) REFERENCES doctor(did));


 INSERT INTO report_check(reportid,did,Result )VALUES (19101,9,"Normal"),(19101,10,"120 mg/dL"),(19106,10,"180 mg/dL"),(17890,6,"Within normal range"),(17890,10,"5.5%"),(18901,7,"No abnormalities detected"),(10987,10,"Normal"),(19452,6,"Normal"),(19725,6,"Not normal"),(12345,7,"Normal"),(19642,7,"Normal"),(45678,9,"No abnormalities detected"),(32467,6,"High in range");





CREATE TABLE addmissionform(adid int NOT NULL PRIMARY KEY,reason varchar(100),roomtype varchar(100),roomno int,ad_date DATETIME,pid int,FOREIGN KEY (pid) REFERENCES patient(pid));

INSERT INTO addmissionform(adid,reason,roomtype,roomno,ad_date,pid) VALUES (1,"Emergency face Surgery","Single Ac",202,"2023-11-15 10:30:00",9),(2,"Lung infection","Ward",104,"2023-11-13 9:40:50",5),(3,"C-section","Double Non Ac",611,"2023-11-20 11:00:00",2),(4,"Brain surgery","ward",105,"2023-11-25 7:50:54",6),
(5,"Heart Attack","Single AC",302,"2023-12-01 10:15:36",16);




CREATE TABLE billing (
    billid INT NOT NULL PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    date DATE,
    time TIME,
    pid INT,
    FOREIGN KEY (pid) REFERENCES patient(pid)
);

INSERT into billing(billid,amount,date,time,pid) VALUES (1,2550,"2023-11-08","10:30:00",1),
(2,3000,"2023-11-08","10:35:00",10),
(3,1800,"2023-11-08","10:40:00",1),
(4,2000,"2023-11-08","11:00:00",10),
(5,45000,"2023-11-08","11:30:00",5),
(6,70000,"2023-11-08","11:48:50",9),
(7,1380,"2023-11-09","9:30:00",1),
(8,800,"2023-11-09","10:30:50",10),
(9,3500,"2023-11-09","7:30:40",2),
(10,30000,"2023-11-05","10:12:21",12),
(11, 18500, '2023-11-09', '09:24:12', 3),
(12, 7000, '2023-11-15', '04:50:00', 4),
(13, 5000, '2023-11-20', '10:12:12', 13),
(14, 9600, '2023-11-15', '03:56:32', 12),
(15, 36000, '2023-11-20', '07:45:20', 12),
(16, 4000, '2023-11-15', '03:00:00', 15),
(17, 1100, '2023-11-08', '10:30:20', 17),
(18, 28012, '2023-11-08', '03:12:36', 18),
(19, 35100, '2023-11-12', '12:47:00', 19),
(20, 3600, '2023-11-11', '05:12:21', 20);







CREATE TABLE MedicalRecord (
    M_RecordID INT NOT NULL PRIMARY KEY,
    did int not null,
    Diagnosis VARCHAR(40),
    M_RecordDate DATE,
    Admission VARCHAR(20),
    pid int not null,
    FOREIGN KEY (did) REFERENCES doctor(did),
    FOREIGN KEY (pid) REFERENCES patient(pid)
);



INSERT Into medicalrecord(M_RecordID,did,Diagnosis,M_RecordDate,Admission,pid)VALUES
(1110,7,"Heart Attack","2023-12-15","YES",3),
(1111,13,"Broken Arm","2023-11-02","YES",1),
(1112,9,"Flu","2023-11-05","No",4),
(1113,6,"Kidney Stones","2023-11-13","YES",6),
(1114,7,"Hypertension","2023-11-08","NO",8),
(1115,8,"Allergies","2023-11-06","No",9),
(1116,6,"Stomach Ulcer","2023-11-02","NO",10),
(1117,10,"Cold","2023-11-04","NO",2),
(1118,6,"Urinary Tract Infection","2023-11-02","YES",5),
(1119,10,"Insomnia","2023-11-08","NO",7),
(1120,13,"Diabetes","2023-11-12","NO",3),
(1121,9,"Flu","2023-11-05","NO",4),
(1122,9,"FLu","2023-11-09","NO",5),
(1123,10,"Thyroid","2023-11-11","NO",10);



CREATE TABLE Appointment(pid int,did int,ap_date date,ap_time time,FOREIGN KEY (pid) REFERENCES patient(pid), FOREIGN KEY (did) REFERENCES doctor(did));

INSERT into Appointment(pid,did,ap_date,ap_time) VALUES (1,7,"2023-11-08","7:00:00"),
(2,4,"2023-11-05","8:00:00"),
(3,5,"2023-11-09","8:20:35"),
(4,10,"2023-11-10","2:20:35"),
(5,6,"2023-11-04","01:30:00"),
(6,6,"2023-11-15","11:30:00"),
(7,10,"2023-11-10","9:30:00"),
(8,9,"2023-11-10","8:30:00"),
(9,6,"2023-11-10", "10:30:00"),
(10,7,"2023-11-08","9:00:00"),
(11,11,"2023-11-15","8:00:00"),
(12,11,"2023-11-15","10:00:00"),
(13,6,"2023-11-20","09:30:00"),
(14,7,"2023-11-19","12:30:00"),
(15,5,"2023-11-09","8:40:00"),
(16,10,"2023-11-10","8:00:00"),
(17,1,"2023-11-08","9:30:00"),
(18,2,"2023-11-08","10:00:00"),
(19,2,"2023-11-09","11:00:00"),
(20,15,"2023-11-11","03:30:00"),

(1,12,"2023-11-10","6:40:00"),
(3,13,"2023-11-09","9:00:00"),
(12,14,"2023-11-20","8:00:00");





CREATE TABLE doctor_nurse_relation(did int,nid int,PRIMARY KEY(did,nid),FOREIGN KEY(did) REFERENCES doctor(did),FOREIGN KEY(nid) REFERENCES nurse(nid));

INSERT INTO doctor_nurse_relation(did,nid) VALUES (1, 1),(1, 2),(2, 3),(2,5),(2,1),(4,5),(7,6),(7,10),(8,3),(8,2),(10,10),(3,3),(5,5),(6,9),(9,3);







CREATE TABLE deleted_doctor_info (
    did INT not null primary key,
    dfname VARCHAR(50),
    dlname VARCHAR(50),
    daddress VARCHAR(100),
    dage INT,
    dgender VARCHAR(10),
    specialist VARCHAR(50),
    delete_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



DELIMITER //

CREATE TRIGGER before_delete_doctor
BEFORE DELETE
ON doctor FOR EACH ROW

BEGIN
    INSERT INTO deleted_doctor_info (did, dfname, dlname, daddress, dage, dgender, specialist)
    VALUES (OLD.did, OLD.dfname, OLD.dlname, OLD.daddress, OLD.dage, OLD.dgender, OLD.specialist);
END;
//

DELIMITER ;




CREATE TABLE inserted_patient_info (
    pid INT,
    pfname VARCHAR(50),
    plname VARCHAR(50),
    page INT,
    pgender VARCHAR(10),
    paddress VARCHAR(100),
    bloodgroup VARCHAR(5),
    insert_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



DELIMITER //

CREATE TRIGGER after_insert_patient
AFTER INSERT
ON patient FOR EACH ROW

BEGIN
    INSERT INTO inserted_patient_info (pid, pfname, plname, page, pgender, paddress, bloodgroup)
    VALUES (NEW.pid, NEW.pfname, NEW.plname, NEW.page, NEW.pgender, NEW.paddress, NEW.bloodgroup);
END;
//

DELIMITER ;