/*********************
* Mondial-Auszug
*********************/

drop table Lage purge;
drop table Land purge;
drop table Mitglied purge;
drop table Provinz purge;
drop table Stadt purge;


/**************** erzeugen der Objekte **************************/


/*********************
* Mondial-Auszug
*********************/
CREATE TABLE Lage (
    LCode       char(4),
    Kontinent varchar2(50),
    Prozent      number(10,2)
);

CREATE TABLE Land (
    LName     varchar2(50),
    LCode     char(4),
    HStadt     varchar2(50),
    Flaeche number(18, 0)
);

CREATE TABLE Mitglied (
    LCode     char(4),
    Organisation varchar2(50),
    Art    varchar2(50)
);

CREATE TABLE Provinz (
    PName     varchar2(50),
    LCode     char(4),
    Flaeche number(10,2)
);

CREATE TABLE Stadt (
    SName         varchar2(50),
    LCode         char(4),
    PName         varchar2(50),
    Einwohner     number(18, 0),
    LGrad         number(10,2),
    BGrad         number(10,2)
); 

/********************* Mondial ***************************/
INSERT INTO Land VALUES('Austria','A','Vienna',84);
INSERT INTO Land VALUES('Switzerland','CH','Bern',41);
INSERT INTO Land VALUES('Germany','D','Berlin',357);
INSERT INTO Land VALUES('Egypt','ET','Cairo',1001);
INSERT INTO Land VALUES('France','F','Paris',547);
INSERT INTO Land VALUES('Italy','I','Rome',301);
INSERT INTO Land VALUES('Russia','RU','Moscow',17075);
INSERT INTO Land VALUES('Turkey','TR','Ankara',779);

INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Berlin','D','Berlin',3472,13.2,52.45);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Freiburg','D','Baden',198,7.51,47.59);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Karlsruhe','D','Baden',277,8.24,49.03);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Munich','D','Bavaria',1244,11.56,48.15);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Nuremberg','D','Franken',495,11.04,49.27);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Paris','F','Ile de France',2125,2.48,48.81);
INSERT INTO Stadt(SName, LCode, PName, Einwohner, LGrad, BGrad) VALUES('Rome','I','Lazio',2546,12.6,41.8);

INSERT INTO Provinz VALUES('Baden','D',15);
INSERT INTO Provinz VALUES('Bavaria','D',70.5);
INSERT INTO Provinz VALUES('Berlin','D',0.9);
INSERT INTO Provinz VALUES('Franken','D',null);
INSERT INTO Provinz VALUES('Ile de France','F',12);
INSERT INTO Provinz VALUES('Lazio','I',17);
													
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('D','Europe',100);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('ET','Africa',90);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('ET','Asia',10);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('F','Europe',100);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('RU','Asia',80);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('RU','Europe',20);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('TR','Asia',68);
INSERT INTO Lage(LCode,Kontinent,Prozent) VALUES('TR','Europe',32);

INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('A','EU','member');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('D','EU','member');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('D','WEU','member');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('ET','UN','member');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('I','EU','member');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('I','NAM','guest');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('TR','CERN','observer');
INSERT INTO Mitglied(LCode, Organisation, Art) VALUES('TR','UN','member');

COMMIT;
