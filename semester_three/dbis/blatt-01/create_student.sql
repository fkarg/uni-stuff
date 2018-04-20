/*********************
* Studenten-DB
*********************/

drop table Student cascade constraints purge;
drop table Kurs cascade constraints purge;
drop table Belegung cascade constraints purge;
drop table Professor cascade constraints purge;
drop table Lehrangebot cascade constraints purge;


/**************** erzeugen der Objekte **************************/


/*********************
* Studenten-DB
*********************/
CREATE TABLE Student (
	MatrNr		number(4) NOT NULL,
	Name		varchar2(30) NOT NULL ,
	Adresse 	varchar2(30),
	Semester	number(2) 
);

CREATE TABLE Kurs (
	KursNr 		char(4) NOT NULL,
	Institut 	varchar2(10),
	Name 		varchar2(50) NOT NULL,
	Beschreibung 	varchar2(100) NULL 
); 

CREATE TABLE Belegung (
	MatrNr		number(4) NOT NULL ,
	KursNr 		char(4) NOT NULL ,
	Semester	varchar2(11),
	Note		number(2,1)
); 

CREATE TABLE Professor (
	PersNr 		number(6) NOT NULL,
	Name 		varchar2(30) NOT NULL,
	Institut 	varchar2(10) NULL
); 

CREATE TABLE Lehrangebot (
	PersNr		number(6) NOT NULL,
	KursNr 		char(4)  NOT NULL,
	Semester	varchar2(11)  NULL
); 

/********************* Studenten-DB ***************************/
INSERT INTO Student VALUES(1223, 'Hans Eifrig','Seeweg 20', 2);
INSERT INTO Student VALUES(3434, 'Lisa Lustig','Bergstrasse 11', 4);
INSERT INTO Student VALUES(1234, 'Maria Gut','Am Baechle 1', 2);

INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K010','DBIS','Datenbanken','Grundlagen von Datenbanken');
INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K011','DBIS','Informationssysteme','Grundlagen von Informationssystemen');
INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K100','MST','Mikrosystemtechnik','Grundlagen der Mikrosystemtechnik');
INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K001','IRA','Technische Informatik','Grundlagen der Rechnerarchitektur');
INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K101','MST','Technische Informatik','Grundlagen der Rechnerarchitektur');
INSERT INTO Kurs(KursNr, Institut, Name, Beschreibung) VALUES('K110','AD','Suchmaschinen','Grundlagen von Suchmaschinen im Internet');

INSERT INTO Belegung VALUES(1223, 'K010','WS2007/2008',2.0);
INSERT INTO Belegung VALUES(1223, 'K011','WS2008/2009',1.7);
INSERT INTO Belegung VALUES(1223, 'K001','WS2007/2008',3.3);
INSERT INTO Belegung VALUES(1224, 'K001','WS2007/2008',1.0);
INSERT INTO Belegung VALUES(3434, 'K001','WS2007/2008',2.0);

INSERT INTO Belegung VALUES(1234, 'K010','SS2008',1.7);
INSERT INTO Belegung VALUES(1234, 'K011','SS2008',2.0);
INSERT INTO Belegung VALUES(1234, 'K010','WS2007/2008',5.0);
INSERT INTO Belegung VALUES(1234, 'K110','WS2009/2010',2.3);
INSERT INTO Belegung VALUES(1223, 'K110','WS2009/2010',5.0);
INSERT INTO Belegung VALUES(3434, 'K110','WS2009/2010',1.3);
													
INSERT INTO Professor(PersNr,Name,Institut) VALUES(153062,'Lausen','DBIS');
INSERT INTO Professor(PersNr,Name,Institut) VALUES(162087,'Becker','IRA');
INSERT INTO Professor(PersNr,Name,Institut) VALUES(171032,'Bast','AD');

INSERT INTO Lehrangebot(PersNr, KursNr, Semester) VALUES(153062,'K010','WS2008/2009');
INSERT INTO Lehrangebot(PersNr, KursNr, Semester) VALUES(162087,'K001','WS2007/2008');
INSERT INTO Lehrangebot(PersNr, KursNr, Semester) VALUES(162087,'K101','WS2007/2008');
INSERT INTO Lehrangebot(PersNr, KursNr, Semester) VALUES(171032,'K110','WS2009/2010');

COMMIT;