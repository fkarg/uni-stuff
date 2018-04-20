CREATE TABLE encompasses (
    Country CHAR(2),
    Continent VARCHAR2(20),
    Percentage NUMBER
        CONSTRAINT encompasses_Percentage_Check CHECK (
             (Percentage > 0) AND (Percentage <= 100)
        ),
    CONSTRAINT encompasses_Key PRIMARY KEY (Continent, Country)
);

INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('al', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gr', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mk', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('yu', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ad', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fr', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('es', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('at', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cz', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('de', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('hu', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('it', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('li', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sk', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('si', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ch', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('by', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lv', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lt', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pl', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ua', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ru', 'Europe', 20);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ru', 'Asia', 80);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('be', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lu', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nl', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ba', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('hr', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bg', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ro', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tr', 'Europe', 32);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tr', 'Asia', 68);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('dk', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ee', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fi', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('no', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('se', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mc', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('va', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('is', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ie', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sm', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mt', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('md', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pt', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('uk', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('af', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cn', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ir', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pk', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tj', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tm', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('uz', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('am', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ge', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('az', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bh', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bd', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mm', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('in', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bt', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bn', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('my', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('la', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('th', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kh', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('vn', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kz', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kp', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kg', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mn', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('np', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cy', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('il', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('eg', 'Asia', 10);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('eg', 'Africa', 90);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('id', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pg', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('iq', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('jo', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kw', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sa', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sy', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lb', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('jp', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kr', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mv', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('om', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ae', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ye', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ph', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('qa', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sg', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lk', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tw', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ag', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bs', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bb', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bz', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gt', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mx', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ca', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('us', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cr', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ni', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pa', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cu', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('dm', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('do', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ht', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sv', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('hn', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gd', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('jm', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('co', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gl', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lc', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('vc', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tt', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('au', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fj', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ki', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mh', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fm', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nr', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nc', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nz', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pw', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sb', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('to', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tv', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('vu', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ws', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ar', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bo', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('br', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cl', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('py', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('uy', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pe', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gf', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gy', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sr', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ve', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ec', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('dz', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ly', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ml', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mr', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ma', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ne', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tn', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('eh', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ao', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cg', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('na', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cd', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('zm', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bj', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bf', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ng', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tg', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bw', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('za', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('zw', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ci', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gh', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bi', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('rw', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tz', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cm', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cf', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('td', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gq', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ga', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cv', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sd', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('km', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gn', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('lr', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('dj', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('er', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('et', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('so', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ke', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gm', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sn', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gw', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sl', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ug', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ls', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mg', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mw', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mz', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mu', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sz', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('st', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sc', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('an', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('as', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('aw', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('bm', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cc', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ck', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('cx', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fk', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('fo', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gg', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gi', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gp', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('gu', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('im', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('je', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('kn', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ky', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mp', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('mq', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ms', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nf', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('nu', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pf', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pm', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pn', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('pr', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ps', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('re', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sh', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('sj', 'Europe', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tc', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tk', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('tp', 'Asia', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('vg', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('vi', 'America', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('wf', 'Australia/Oceania', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('yt', 'Africa', 100);
INSERT INTO encompasses (Country, Continent, Percentage)
    VALUES ('ai', 'America', 100);
COMMIT;
