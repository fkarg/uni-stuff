CREATE TABLE Economy (
    Country CHAR(2)
        CONSTRAINT Economy_Key PRIMARY KEY,
    GDP NUMBER
        CONSTRAINT Economy_GDP_Check CHECK (
             GDP >= 0
        ),
    Agriculture NUMBER,
    Industry NUMBER,
    Services NUMBER,
    Inflation NUMBER
);

INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ad', 1900, NULL, NULL, NULL, 4.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ae', 63670, 4, 58.5, 37.5, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('af', 21500, 60, 20, 20, 10.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ag', 750, 3.9, 19.2, 76.8, .4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ai', 112, 4, 18, 78, 2.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('al', 17460, 46.2, 25.4, 28.4, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('am', 13650, 22.9, 36.1, 41.1, 3.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('an', 2450, 1, 15, 84, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ao', 23170, 8, 67, 25, 43.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ar', 483500, 10.6, 35.9, 53.5, 6.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('as', 500, NULL, NULL, NULL, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('at', 255900, 2.3, 30.8, 66.9, 1.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('au', 611700, 3.4, 28.2, 68.4, 2.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('aw', 1940, NULL, NULL, NULL, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('az', 30010, 14.1, 45.7, 40.2, 4.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ba', 26210, 14.2, 30.8, 55, 1.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bb', 4569, 6, 16, 78, -.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bd', 275700, 21.2, 27.1, 51.7, 6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('be', 316200, 1.3, 25.7, 73, 1.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bf', 15740, 39.5, 19.3, 41.3, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bg', 61630, 11.5, 30.1, 58.4, 6.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bh', 13010, .7, 41, 58.4, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bi', 4001, 48.1, 19, 32.9, 8.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bj', 8338, 36.3, 14.3, 49.4, 2.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bm', 2330, 1, 10, 89, 3.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bn', 6842, 5, 45, 50, .3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bo', 22330, 13, 28, 59, 4.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('br', 1492000, 10.1, 38.6, 51.3, 7.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bs', 5295, 3, 7, 90, 1.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bt', 2900, 45, 10, 45, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bw', 15050, 4, 44, 52, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('by', 70500, 11, 36.4, 52.6, 17.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('bz', 1778, 17.7, 15, 67.3, 2.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ca', 1023000, 2.3, 26.4, 71.3, 1.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cd', 42740, 55, 11, 34, 14);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cf', 4248, 55, 20, 25, 3.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cg', 2324, 7.4, 52, 40.6, 1.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ch', 251900, 1.5, 34, 64.5, .9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ci', 24780, 27.8, 19.4, 52.8, 1.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ck', 105, 17, 7.8, 75.2, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cl', 169100, 6.3, 38.2, 55.5, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cm', 30170, 43.7, 20.1, 36.2, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cn', 7262000, 13.8, 52.9, 33.3, 4.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('co', 281100, 13.4, 32.1, 54.5, 5.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cr', 37970, 8.5, 29.7, 61.8, 11.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cu', 33920, 6.6, 25.5, 67.9, 3.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cv', 600, 12.1, 21.9, 66, 1.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cy', 15710, 4.1, 19.9, 76, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('cz', 172200, 3.4, 39.3, 57.3, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('de', 2362000, 1, 31, 68, 1.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('dj', 619, 3.5, 15.8, 80.7, 2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('dk', 174400, 2.2, 25.5, 72.3, 1.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('dm', 384, 18, 24, 58, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('do', 55680, 10.7, 31.5, 57.8, 55);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('dz', 212300, 10.3, 57.4, 32.3, 3.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ec', 49510, 8.7, 30.5, 60.9, 2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ee', 19230, 4.1, 28.9, 67, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('eg', 316300, 17.2, 33, 49.8, 9.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('eh', NULL, NULL, NULL, 40, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('er', 4154, 12.4, 25.9, 61.7, 10);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('es', 937600, 3.5, 28.5, 68, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('et', 54890, 47, 12.4, 40.6, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fi', 151200, 3.3, 30.2, 66.5, .7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fj', 5173, 16.6, 22.4, 61, 1.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fk', 75, NULL, NULL, NULL, 3.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fm', NULL, 50, 4, 46, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fo', 1000, 27, 11, 62, 5.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('fr', 1737000, 2.7, 24.3, 73, 2.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ga', 7966, 7.4, 46.7, 45.9, 1.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gd', 440, 7.7, 23.9, 68.4, 2.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ge', 14450, 20.5, 22.6, 56.9, 5.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gf', 1551, NULL, NULL, NULL, 1.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gg', 2590, 3, 10, 87, 4.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gh', 48270, 34.3, 24.2, 41.4, 13);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gi', 769, NULL, NULL, NULL, 1.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gl', 1100, NULL, NULL, NULL, 1.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gm', 2799, 26.8, 14.5, 58.7, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gn', 19500, 25, 38.2, 36.8, 18);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gp', 3513, 15, 17, 68, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gq', 1270, 3, 95.7, 1.3, 8.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gr', 226400, 7, 22, 71, 2.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gt', 59470, 22.7, 19.5, 57.9, 7.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gu', 3200, 7, 15, 78, 0);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gw', 1008, 62, 12, 26, 4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('gy', 2899, 38.3, 19.9, 41.8, 4.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('hn', 18790, 12.7, 32.1, 55.3, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('hr', 50330, 8.2, 30.1, 61.7, 2.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ht', 12050, 30, 20, 50, 22);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('hu', 149300, 3.3, 31.4, 65.3, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('id', 827400, 14.6, 45, 40.4, 6.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ie', 126400, 5, 46, 49, 2.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('il', 129000, 2.8, 37.7, 59.5, 0);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('im', 2113, 1, 13, 86, 3.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('in', 3319000, 23.6, 28.4, 48, 4.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('iq', 54400, 13.6, 58.6, 27.8, 25.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ir', 516700, 11.2, 40.9, 48.7, 15.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('is', 9373, 11.2, 9.6, 79.2, 4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('it', 1609000, 2.3, 28.8, 68.9, 2.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('je', 3600, 5, 2, 93, 5.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('jm', 11130, 6.1, 32.7, 61.3, 12.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('jo', 25500, 2.4, 26, 71.5, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('jp', 3745000, 1.3, 24.7, 74.1, -.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ke', 34680, 19.3, 18.5, 62.4, 9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kg', 8495, 38.5, 22.8, 38.7, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kh', 26990, 35, 30, 35, 3.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ki', 79, 30, 7, 63, 2.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('km', 441, 40, 4, 56, 3.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kn', 339, 3.5, 25.8, 70.7, 1.7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kp', 40000, 30.2, 33.8, 36, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kr', 925100, 3.2, 40.4, 56.3, 3.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kw', 48000, .4, 60.5, 39.1, 2.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ky', 1391, 1.4, 3.2, 95.4, 2.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('kz', 118400, 7.4, 37.8, 54.8, 6.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('la', 11280, 49.5, 27.5, 23, 12.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lb', 18830, 12, 21, 67, 2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lc', 866, 7, 20, 73, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('li', 825, NULL, 40, NULL, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lk', 80580, 19.1, 26.2, 54.7, 5.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lr', 2903, 76.9, 5.4, 17.7, 15);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ls', 5892, 15.2, 43.9, 40.9, 5.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lt', 45230, 6.1, 33.4, 60.5, 1.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lu', 27270, .5, 16.3, 83.1, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('lv', 26530, 4.4, 24.8, 70.8, 6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ly', 37480, 8.7, 45.7, 45.6, 2.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ma', 134600, 21.2, 35.8, 43, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mc', 870, 17, NULL, NULL, 1.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('md', 8581, 22.4, 24.8, 52.8, 11.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mg', 14560, 29.3, 16.7, 54, 7.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mh', 115, 14, 16, 70, 2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mk', 14400, 11.2, 26, 62.8, .4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ml', 11000, 45, 17, 38, 4.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mm', 74300, 56.6, 8.8, 34.5, 17.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mn', 5332, 20.6, 21.4, 58, 11);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mp', NULL, NULL, NULL, NULL, 1.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mq', 6117, 6, 11, 83, 3.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mr', 5534, 25, 29, 46, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ms', 29, 5.4, 13.6, 81, 2.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mt', 7223, 3, 23, 74, 2.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mu', 15680, 7.6, 30, 62.4, 4.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mv', 1250, 20, 18, 62, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mw', 7410, 54.8, 19.2, 26, 12);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mx', 1006000, 4, 27.2, 68.9, 5.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('my', 229300, 7.2, 33.6, 59.1, 1.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('mz', 23380, 21.1, 32.1, 46.9, 12.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('na', 14760, 11.3, 30.8, 57.9, 4.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('nc', 3158, 5, 30, 65, -.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ne', 9716, 39, 17, 44, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ng', 125700, 36.3, 30.5, 33.3, 16.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ni', 12340, 20.7, 24.7, 54.6, 9.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('nl', 481100, 2.4, 24.5, 73.1, 1.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('no', 183000, 2.2, 36.3, 61.6, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('np', 39530, 40, 20, 40, 2.9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('nr', 60, NULL, NULL, NULL, -3.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('nu', 7.6, NULL, NULL, 55, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('nz', 92510, 4.6, 27.4, 68, 2.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('om', 38090, 3.1, 41.1, 55.8, .2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pa', 20570, 7.2, 13, 79.8, 2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pe', 155300, 8, 27, 65, 3.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pf', 4580, 4, 18, 78, 1.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pg', 11990, 34.5, 34.7, 30.8, 4.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ph', 430600, 14.8, 31.9, 53.2, 5.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pk', 347300, 22.6, 24.1, 53.3, 4.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pl', 463000, 2.9, 31.3, 65.9, 3.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pm', 48.3, NULL, NULL, NULL, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pr', 68950, 1, 45, 54, 6.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ps', 2568, 9, 28, 63, 2.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pt', 188700, 5.9, 30.2, 63.9, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('pw', NULL, NULL, NULL, NULL, 3.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('py', 29930, 25.3, 24.9, 49.8, 5.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('qa', 19490, .3, 58.2, 41.5, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('re', 4570, 8, 19, 73, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ro', 171500, 13.1, 33.7, 53.2, 9.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('rw', 10430, 41.1, 21.2, 37.7, 7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sa', 310200, 4.2, 67.2, 28.6, .8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sb', 800, 42, 11, 47, 10);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sc', 626, 2.8, 28.7, 68.9, 5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sd', 76190, 38.7, 20.3, 41, 9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('se', 255400, 2, 29, 69, .7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sg', 120900, 0, 32.6, 67.4, 1.7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sh', 18, NULL, NULL, NULL, 3.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('si', 39410, 3, 36, 60, 3.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sk', 78890, 3.5, 30.1, 66.4, 7.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sl', 3335, 49, 30, 21, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sm', 940, NULL, NULL, NULL, 3.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sn', 18360, 15.9, 21.4, 62.7, .8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('so', 4597, 65, 10, 25, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sr', 1885, 13, 22, 65, 23);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('st', 214, 16.5, 15.4, 68.1, 14);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sv', 32350, 9.2, 31.1, 59.7, 5.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sy', 60440, 25, 31, 44, 2.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('sz', 6018, 16.1, 43.4, 40.5, 5.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tc', 216, NULL, NULL, NULL, 4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('td', 15660, 22.6, 35.6, 41.7, 8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tg', 8684, 39.5, 20.4, 40.1, 1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('th', 524800, 9, 44.3, 46.7, 2.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tj', 7950, 23.7, 24.3, 52, 8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tk', 1.5, NULL, NULL, NULL, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tm', 27600, 28.5, 42.7, 28.8, 9);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tn', 70880, 13.8, 31.8, 54.4, 4.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('to', 244, 23, 13, 64, 10.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tr', 508700, 11.7, 29.8, 58.5, 9.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tt', 11480, 2.7, 47, 50.3, 3.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tv', 12.2, NULL, NULL, NULL, 5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tw', 576200, 1.7, 30.9, 67.4, 1.7);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('tz', 23710, 43.2, 17.2, 39.6, 5.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ua', 299100, 18, 45.1, 36.9, 12);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ug', 39390, 35.8, 20.8, 43.6, 3.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('uk', 1782000, 1, 26.3, 72.7, 1.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('us', 11750000, .9, 19.7, 79.4, 2.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('uy', 49270, 7.9, 27.4, 64.8, 7.6);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('uz', 47590, 38, 26.3, 35.7, 3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('vc', 342, 10, 26, 64, -.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ve', 145200, .1, 46.5, 53.4, 22.4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('vg', 2498, 1.8, 6.2, 92, 2.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('vi', 2500, 1, 19, 80, 2.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('vn', 227200, 21.8, 40.1, 38.1, 9.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('vu', 580, 26, 12, 62, 3.1);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('wf', 60, NULL, NULL, NULL, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ws', 1000, 14, 23, 63, 4);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ye', 16250, 15.5, 44.7, 39.7, 12.2);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('yt', 466.8, NULL, NULL, NULL, NULL);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('yu', 26270, 15.5, 27.6, 56.8, 8.8);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('za', 491400, 3.6, 31.2, 65.2, 4.5);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('zm', 9409, 14.9, 28.9, 56.1, 18.3);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('zw', 24370, 18.1, 24.3, 57.7, 133);
INSERT INTO Economy (Country, GDP, Agriculture, Industry, Services, Inflation)
    VALUES ('ru', 1408000, 4.9, 33.9, 61.2, 11.5);
COMMIT;
