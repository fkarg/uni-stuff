CREATE TABLE Province (
    Name VARCHAR2(40),
    Country CHAR(2),
    Population NUMBER
        CONSTRAINT Province_Population_Check CHECK (
             Population >= 0
        ),
    Area NUMBER
        CONSTRAINT Province_Area_Check CHECK (
             Area >= 0
        ),
    Capital VARCHAR2(40),
    CapProv VARCHAR2(40),
    CONSTRAINT Province_Key PRIMARY KEY (Country, Name)
);

INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andreas', 'im', 1113, 28.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arbory', 'im', 1635, 16.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ballaugh', 'im', 832, 27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Braddan', 'im', 3310, 41.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bride', 'im', 390, 22.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Castletown', 'im', 2680, 2.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Douglas', 'im', 25422, 6.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('German', 'im', 1019, 46.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jurby', 'im', 571, 18.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laxey', 'im', 1524, 2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lezrayre', 'im', 652, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lonan', 'im', 1380, 32.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malew', 'im', 2044, 47.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marown', 'im', 1651, 26.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maughold', 'im', 905, 33.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Michael', 'im', 1342, 35.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Onchan', 'im', 8871, 26.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Patrick', 'im', 1230, 45.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peel', 'im', 3765, 1.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port Erin', 'im', 3473, 1.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port Saint Mary', 'im', 2051, 1.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ramsey', 'im', 7526, 4.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rushen', 'im', 1430, 27.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santon', 'im', 318, 16.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hadarom', 'il', 1031112, 14231, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haifa', 'il', 872602, 863, 'Haifa', 'Haifa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamerkaz', 'il', 1673068, 1276, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hazzafon', 'il', 1197992, 3324, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jerusalem', 'il', 838130, 652, 'Jerusalem', 'Jerusalem');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Judea and Samaria', 'il', 244882, 5878, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tel Aviv', 'il', 1128853, 171, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abruzzes', 'it', 1321842, 10795, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Apulia', 'it', 4021956, 19362, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basilicata', 'it', 582337, 9992, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Calabria', 'it', 1988189, 15080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Campania', 'it', 5766975, 13595, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Emilia-Romagna', 'it', 4115321, 22123, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Friuli-Venezia Giulia', 'it', 1188675, 7844, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lazio', 'it', 5501631, 17227, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liguria', 'it', 1557777, 5420, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lombardy', 'it', 9387203, 23872, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marche', 'it', 1501400, 9694, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Molise', 'it', 324508, 4438, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Piemonte', 'it', 4294082, 25399, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sardegna', 'it', 1701343, 24090, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sicily', 'it', 5135871, 25708, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toscana', 'it', 3573454, 22993, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trentino-Alto Adige', 'it', 961847, 13607, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umbria', 'it', 864496, 8456, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valle dAosta', 'it', 121882, 3264, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veneto', 'it', 4697776, 18364, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agneby', 'ci', 777843, 9080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bafing', 'ci', 192532, 8720, 'Touba', 'Bafing');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bas Sassandra', 'ci', 1137330, 25800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Denguele', 'ci', 298852, 20600, 'Odienne', 'Denguele');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dix-huit Montagnes', 'ci', 1214771, 16600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fromager', 'ci', 733634, 6900, 'Gagnoa', 'Fromager');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haut-Sassandra', 'ci', 1280369, 15200, 'Daloa', 'Haut-Sassandra');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lacs', 'ci', 644721, 8920, 'Yamoussoukro', 'Lacs');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lagunes', 'ci', 4542761, 13172, 'Abidjan', 'Lagunes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marahoue', 'ci', 703167, 8500, 'Bouafle', 'Marahoue');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moyen-Cavally', 'ci', 478195, 14150, 'Guiglo', 'Moyen-Cavally');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moyen-Comoe', 'ci', 526780, 6900, 'Abengourou', 'Moyen-Comoe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nzi-Comoe', 'ci', 981689, 19560, 'Dimbokro', 'Nzi-Comoe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savanes', 'ci', 1311022, 40323, 'Korhogo', 'Savanes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud-Bandama', 'ci', 891580, 10650, 'Divo', 'Sud-Bandama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud-Comoe', 'ci', 578829, 7278, 'Aboisso', 'Sud-Comoe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vallee du Bandama', 'ci', 1440957, 28530, 'Bouake', 'Vallee du Bandama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Worodougou', 'ci', 431863, 21900, 'Seguela', 'Worodougou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zanzan', 'ci', 905238, 38000, 'Bondoukou', 'Zanzan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Clarendon', 'jm', 243857, 1196, 'May Pen', 'Clarendon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hanover', 'jm', 66602, 450, 'Lucea', 'Hanover');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kingston', 'jm', 90822, 22, 'Kingston', 'Kingston');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manchester', 'jm', 191796, 830, 'Mandeville', 'Manchester');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Portland', 'jm', 80787, 814, 'Port Antonio', 'Portland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'jm', 555994, 431, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Ann', 'jm', 171740, 1213, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Catherine', 'jm', 529215, 1192, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Elizabeth', 'jm', 145409, 1212, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint James', 'jm', 180499, 595, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mary', 'jm', 111378, 611, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Thomas', 'jm', 93328, 743, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trelawney', 'jm', 72684, 875, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Westmoreland', 'jm', 141393, 807, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aichi', 'jp', 7233225, 5155.84, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Akita', 'jp', 1154125, 11612.11, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aomori', 'jp', 1454514, 9606.33, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiba', 'jp', 6093374, 5156.19, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ehime', 'jp', 1476750, 5676.22, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fukui', 'jp', 826319, 4188.75, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fukuoka', 'jp', 5077936, 4971.01, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fukushima', 'jp', 2106858, 13782.48, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gifu', 'jp', 2114352, 10598.18, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gumma', 'jp', 2041366, 6363.16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hiroshima', 'jp', 2878399, 8476.95, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hokkaido', 'jp', 5647230, 83453.04, 'Sapporo', 'Hokkaido');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hyogo', 'jp', 5612902, 8392.03, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ibaraki', 'jp', 3000459, 6095.58, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ishikawa', 'jp', 1180086, 4185.22, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iwate', 'jp', 1394774, 15278.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kagawa', 'jp', 1018355, 1875.88, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kagoshima', 'jp', 1768647, 9186.71, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanagawa', 'jp', 8815379, 2415.41, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kochi', 'jp', 803045, 7104.66, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kumamoto', 'jp', 1853329, 7403.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kyoto', 'jp', 2641108, 4612.94, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mie', 'jp', 1867147, 5776.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miyagi', 'jp', 2382349, 7285.07, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miyazaki', 'jp', 1160753, 7734.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nagano', 'jp', 2217459, 13585.22, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nagasaki', 'jp', 1490715, 4092.44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nara', 'jp', 1436252, 3691.09, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niigata', 'jp', 2451693, 12582.37, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oita', 'jp', 1215376, 6337.97, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Okayama', 'jp', 1954636, 7112.13, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Okinawa', 'jp', 1369253, 2271.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Osaka', 'jp', 8823297, 1892.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saga', 'jp', 869322, 2439.23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saitama', 'jp', 7103795, 3797.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shiga', 'jp', 1384102, 4017.36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shimane', 'jp', 747838, 6707.29, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shizuoka', 'jp', 3810136, 7779.46, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tochigi', 'jp', 2017549, 6408.28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tokushima', 'jp', 812960, 4145.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tokyo', 'jp', 12445324, 2186.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tottori', 'jp', 609729, 3507.17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toyama', 'jp', 1114986, 4247.22, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wakayama', 'jp', 1048462, 4725.55, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yamagata', 'jp', 1222288, 9323.34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yamaguchi', 'jp', 1501651, 6110.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yamanashi', 'jp', 887881, 4465.37, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grouville', 'je', 4771, 7.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Brelade', 'je', 10569, 12.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Clement', 'je', 8406, 4.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Helier', 'je', 28789, 8.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'je', 2695, 8.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Lawrence', 'je', 4675, 9.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Martin', 'je', 3793, 9.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mary', 'je', 1678, 6.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Ouen', 'je', 3893, 14.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter', 'je', 4337, 11.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Saviour', 'je', 12352, 9.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trinity', 'je', 2772, 12.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ajlun', 'jo', 127618, 412, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Aqabah', 'jo', 117810, 6583, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Balqa', 'jo', 378046, 1076, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Karak', 'jo', 231466, 3217, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Mafraq', 'jo', 271823, 26435, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amman', 'jo', 2201199, 8231, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('at-Tafilah', 'jo', 88035, 2114, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('az-Zarqa', 'jo', 915225, 4080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Irbid', 'jo', 1027457, 1621, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaras', 'jo', 169585, 402, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maan', 'jo', 113140, 33163, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madaba', 'jo', 146936, 2008, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Akmechet', 'kz', 633092, 226000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Almaty', 'kz', 2714956, 224200, 'Almaty', 'Almaty');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aqmola', 'kz', 1203269, 92000, 'Astana', 'Aqmola');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aqtoebe', 'kz', 678937, 300600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atyrau', 'kz', 455504, 118600, 'Atyrau', 'Atyrau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batis Kazakstan', 'kz', 634011, 151300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mankistau', 'kz', 331874, 156600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ontuestik Kazakstan', 'kz', 2141913, 117300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pavlodar', 'kz', 765779, 124800, 'Pavlodar', 'Pavlodar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qaragandy', 'kz', 1257280, 428000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qostanay', 'kz', 911820, 225700, 'Qostanay', 'Qostanay');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sigis Kazakstan', 'kz', 1464264, 283300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soltuestik Kazakstan', 'kz', 579035, 123200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taraz', 'kz', 986033, 144300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'ke', 4050444, 13236, 'Nyeri', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Coast', 'ke', 2894459, 84113, 'Mombasa', 'Coast');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'ke', 5125537, 154354, 'Embu', 'Eastern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nairobi', 'ke', 2750561, 693, 'Nairobi', 'Nairobi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Eastern', 'ke', 1506014, 126186, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nyanza', 'ke', 4891303, 12507, 'Kisumu', 'Nyanza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rift Valley', 'ke', 8319245, 182413, 'Nakuru', 'Rift Valley');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'ke', 3855845, 8285, 'Kakamega', 'Western');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abaiang', 'ki', 5651, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abemana', 'ki', 2894, 27.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aranuka', 'ki', 910, 15.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arorae', 'ki', 1174, 9.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banaba', 'ki', 266, 6.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beru', 'ki', 2623, 14.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Butaritari', 'ki', 3094, 13.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kiritimati', 'ki', 3710, 363.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuria', 'ki', 927, 12.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maiana', 'ki', 1904, 15.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Makin', 'ki', 1561, 6.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marakei', 'ki', 2344, 13.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nikunau', 'ki', 1541, 18.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nonouti', 'ki', 3247, 29.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Onotoa', 'ki', 1444, 13.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phoenix Islands', 'ki', 53, 28.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern Line Islands', 'ki', 0, 103.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabiteuea North', 'ki', 3305, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabiteuea South', 'ki', 1071, 12, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabuaeran', 'ki', 1987, 14.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tamana', 'ki', 803, 4.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarawa North', 'ki', 4879, 15.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarawa South', 'ki', 44428, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Teraina', 'ki', 1201, 34.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chagangdo', 'kp', 1509375, 16968, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamgyongbukto', 'kp', 2615293, 17570, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamgyongnamdo', 'kp', 3325586, 18970, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hwanghaebukto', 'kp', 1839714, 8007, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hwanghaenamdo', 'kp', 2499086, 8002, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaesong', 'kp', 432183, 1255, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kangwon', 'kp', 1602079, 11152, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nampo', 'kp', 933567, 753, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyonganbukto', 'kp', 3144096, 12191, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyongannamdo', 'kp', 3463989, 11577, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyongyang', 'kp', 3074895, 2000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yanggang', 'kp', 819972, 14317, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cheju', 'kr', 566020, 1845.36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chollabuk', 'kr', 1976851, 8058.03, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chollanam', 'kr', 1992192, 11911.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chungchongbuk', 'kr', 1508979, 7433.36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chungchongnam', 'kr', 1962435, 8546.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inchon', 'kr', 2654790, 955, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kangwon', 'kr', 1532342, 16534.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kwangju', 'kr', 1416937, 501.28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kyonggi', 'kr', 11202749, 10114.55, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kyongsangbuk', 'kr', 2708785, 19021.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kyongsangnam', 'kr', 3231791, 10510.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pusan', 'kr', 3678551, 748.92, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soul', 'kr', 10349291, 605.78, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taegu', 'kr', 2566537, 885.51, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taejon', 'kr', 1475220, 539.87, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ulsan', 'kr', 1105823, 1055.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Ahmadi', 'kw', 430846, 5120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Asamah', 'kw', 449515, 200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Farwaniyah', 'kw', 640259, 190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jahra', 'kw', 307263, 12130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hawalli', 'kw', 510780, 84, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mubarak al-Kabir', 'kw', 191349, 94, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batken', 'kg', 400370, 17000, 'Batken', 'Batken');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Biskek', 'kg', 896258, 100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Celalabad', 'kg', 962227, 33700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cuy', 'kg', 818019, 20200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Issik-Goel', 'kg', 450722, 43100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narin', 'kg', 269652, 45200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Os', 'kg', 1299450, 29200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Talas', 'kg', 216053, 11400, 'Talas', 'Talas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Attopu', 'la', 102959, 10320, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bokeo', 'la', 150130, 6196, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolikhamsay', 'la', 204242, 14863, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Champasak', 'la', 584234, 15415, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Houaphanh', 'la', 286259, 16500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khammouane', 'la', 318909, 16315, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luang Nam Tha', 'la', 118249, 9325, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luang Prabang', 'la', 386994, 16875, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oudomxay', 'la', 283957, 15370, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phongsaly', 'la', 163371, 16270, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saravan', 'la', 319084, 10691, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savannakhet', 'la', 769162, 21774, 'Savannakhet', 'Savannakhet');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sekong', 'la', 80848, 7665, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Viangchan Prefecture', 'la', 646522, 3920, 'Vientiane', 'Viangchan Prefecture');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Viangchan Province', 'la', 309545, 15927, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xaignabury', 'la', 600838, 16389, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xaisombun', 'la', 62014, 7105, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xiang Khuang', 'la', 224957, 15880, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aizkraukles', 'lv', 40690, 2505, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aluksnes', 'lv', 25667, 2202, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balvu', 'lv', 29780, 2398, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bauskas', 'lv', 51666, 1854, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cesu', 'lv', 58890, 3039, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Daugavpils', 'lv', 41528, 2574, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Daugavpils pilseta', 'lv', 111564, 75, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dobeles', 'lv', 39130, 1657, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gulbenes', 'lv', 27424, 1890, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jekabspils', 'lv', 54856, 2926, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jelgava', 'lv', 61793, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jelgavas', 'lv', 36054, 1631, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jurmala pilseta', 'lv', 54088, 100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kraslavas', 'lv', 35778, 2279, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuldigas', 'lv', 37112, 2433, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liepaja', 'lv', 85263, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liepajas', 'lv', 45519, 3632, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limbazu', 'lv', 39018, 2590, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ludzas', 'lv', 34113, 2609, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madonas', 'lv', 45093, 3330, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ogres', 'lv', 61120, 1834, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Preilu', 'lv', 40536, 2061, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rezekne', 'lv', 38340, 17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rezeknes', 'lv', 41710, 2681, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Riga', 'lv', 742594, 307, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rigas', 'lv', 139676, 3041, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saldus', 'lv', 37891, 2118, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Talsu', 'lv', 48424, 2811, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tukuma', 'lv', 52357, 2461, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valkas', 'lv', 33348, 2475, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valmieras', 'lv', 58629, 2336, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ventspils', 'lv', 14195, 2567, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ventspils pilseta', 'lv', 42643, 45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Biqaa', 'lb', 601079, 4160.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Janub', 'lb', 526056, 929.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Nabatiyah', 'lb', 306861, 1098, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Samal', 'lb', 899339, 2024.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bayrut', 'lb', 449440, 19.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jabal Lubnan', 'lb', 1679220, 1968.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berea', 'ls', 173874, 2222, 'Teyateyaneng', 'Berea');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Butha-Buthe', 'ls', 157160, 1767, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leribe', 'ls', 408807, 2828, 'Hlotse', 'Leribe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mafeteng', 'ls', 294046, 2119, 'Mafeteng', 'Mafeteng');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maseru', 'ls', 437019, 4279, 'Maseru', 'Maseru');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mohales Hoek', 'ls', 284584, 3530, 'Mohales Hoek', 'Mohales Hoek');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mokhotlong', 'ls', 116066, 4075, 'Mokhotlong', 'Mokhotlong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qachas Nek', 'ls', 101797, 2349, 'Qachas Nek', 'Qachas Nek');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quthing', 'ls', 181527, 2916, 'Quthing', 'Quthing');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thaba-Tseka', 'ls', 152257, 4270, 'Thaba-Tseka', 'Thaba-Tseka');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bomi', 'lr', 84278, 1955, 'Tubmanburg', 'Bomi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bong', 'lr', 344650, 8099, 'Gbarnga', 'Bong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Bassa', 'lr', 218298, 8759, 'Buchanan', 'Grand Bassa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Cape Mount', 'lr', 114515, 5827, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Gedeh', 'lr', 148602, 17029, 'Zwedru', 'Grand Gedeh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loffa', 'lr', 339951, 19360, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Margibi', 'lr', 142200, 3263, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maryland and Grand Kru', 'lr', 180061, 5351, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montserrado', 'lr', 948107, 2740, 'Bensonville', 'Montserrado');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nimba', 'lr', 407421, 12043, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rivercess', 'lr', 54436, 4385, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sinoe', 'lr', 83075, 10254, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ajdabiya', 'ly', 181454, 91620, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Butnan', 'ly', 161199, 83860, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Hizam al-Ahzdar', 'ly', 113914, 12800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jabal al-Ahdar', 'ly', 203501, 7800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jifarah', 'ly', 304810, 1940, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jufrah', 'ly', 47538, 117410, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Kufrah', 'ly', 55690, 483510, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Marj', 'ly', 121289, 10000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Marqab', 'ly', 345925, 3000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qubbah', 'ly', 97886, 14722, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wahat', 'ly', 30891, 108670, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Nuqat al-Hums', 'ly', 218275, 5250, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('az-Zawiyah', 'ly', 206119, 1520, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bangazi', 'ly', 667175, 800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bani Walid', 'ly', 82385, 19710, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Darnah', 'ly', 83491, 4908, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gadamis', 'ly', 19794, 51750, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Garyan', 'ly', 168885, 4660, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gat', 'ly', 24347, 72700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marzuq', 'ly', 72499, 349790, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Misratah', 'ly', 399711, 2770, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mizdah', 'ly', 44445, 72180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nalut', 'ly', 93848, 15300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabha', 'ly', 134498, 15330, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabratah wa Surman', 'ly', 158258, 1370, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Surt', 'ly', 170763, 77660, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarhunah wa Masallatah', 'ly', 311082, 5840, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tripoli', 'ly', 1178568, 1830, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wadi al-Hayat', 'ly', 77839, 31890, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wadi as-Sati', 'ly', 81078, 97160, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yafran wa Jadu', 'ly', 123536, 9310, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balzers', 'li', 4447, 19.62, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eschen', 'li', 4008, 10.33, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gamprin', 'li', 1268, 6.14, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mauren', 'li', 3626, 7.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Planken', 'li', 377, 5.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ruggell', 'li', 1862, 7.37, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Schaan', 'li', 5748, 26.85, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Schellenberg', 'li', 1004, 3.55, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Triesen', 'li', 4701, 26.35, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Triesenberg', 'li', 2689, 29.77, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaduz', 'li', 5197, 17.28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alytaus', 'lt', 182803, 5425, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kauno', 'lt', 695979, 8170, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Klaipedos', 'lt', 382732, 5746, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marijampoles', 'lt', 185267, 4463, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Panevezio', 'lt', 292001, 7881, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siauliu', 'lt', 360041, 8751, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taurages', 'lt', 131627, 3874, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Telsiu', 'lt', 176673, 4139, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Utenos', 'lt', 178605, 7201, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vilniaus', 'lt', 845108, 9650, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Capellen', 'lu', 37873, 199.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Clervaux', 'lu', 13237, 302.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diekirch', 'lu', 27509, 239.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Echternach', 'lu', 14612, 185.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Esch-sur-Alzette', 'lu', 140015, 242.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grevenmacher', 'lu', 22971, 211.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luxembourg', 'lu', 127305, 238.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mersch', 'lu', 24212, 223.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Redange', 'lu', 14470, 267.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Remich', 'lu', 17882, 127.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vianden', 'lu', 3147, 54.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wiltz', 'lu', 12348, 293.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berovo', 'mk', 19337, 807, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bitola', 'mk', 104796, 1699, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brod', 'mk', 11575, 924, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Debar', 'mk', 24430, 264, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delcevo', 'mk', 25558, 585, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Demir Hisar', 'mk', 9136, 431, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gevgelija', 'mk', 35246, 757, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gostivar', 'mk', 119527, 1356, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kavadarci', 'mk', 43161, 1134, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kicevo', 'mk', 58560, 852, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kocani', 'mk', 44980, 571, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kratovo', 'mk', 10288, 376, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kriva Palanka', 'mk', 24918, 720, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krusevo', 'mk', 11774, 201, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kumanovo', 'mk', 142011, 1190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Negotino', 'mk', 23986, 736, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ohrid', 'mk', 61461, 1031, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prilep', 'mk', 94464, 1824, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Probistip', 'mk', 12702, 326, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Radovis', 'mk', 32253, 736, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Resen', 'mk', 16539, 739, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Skopje', 'mk', 585311, 25700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stip', 'mk', 52227, 810, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Struga', 'mk', 66989, 541, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Strumica', 'mk', 93235, 953, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sveti Nikole', 'mk', 21334, 645, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tetovo', 'mk', 195518, 1080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valandovo', 'mk', 11825, 331, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veles', 'mk', 65776, 1536, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vinica', 'mk', 21472, 438, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antananarivo', 'mg', 5270709, 58283, 'Antananarivo', 'Antananarivo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antsiranana', 'mg', 1342330, 43046, 'Antsiranana', 'Antsiranana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fianarantsoa', 'mg', 3797490, 102373, 'Fianarantsoa', 'Fianarantsoa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mahajanga', 'mg', 1988799, 150023, 'Mahajanga', 'Mahajanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toamasina', 'mg', 3012486, 71911, 'Toamasina', 'Toamasina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toliary', 'mg', 2543775, 161405, 'Toliary', 'Toliary');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balaka', 'mw', 277071, 2193, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Blantyre City', 'mw', 584870, 268, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Blantyre Rural', 'mw', 332969, 1744, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chikwawa', 'mw', 362915, 4755, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiradzulu', 'mw', 246488, 767, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chitipa', 'mw', 144178, 4288, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dedza', 'mw', 526766, 3624, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dowa', 'mw', 462726, 3041, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karonga', 'mw', 224946, 3355, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kasungu', 'mw', 594363, 7878, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lilongwe City', 'mw', 646738, 456, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lilongwe Rural', 'mw', 984694, 5703, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Machinga', 'mw', 410409, 3771, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mangochi', 'mw', 674216, 6273, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mchinji', 'mw', 367480, 3356, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mulanje', 'mw', 432416, 2056, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mwanza', 'mw', 148763, 2295, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mzimba', 'mw', 612080, 10430, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mzuzu City', 'mw', 128456, 46, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nkhata Bay', 'mw', 191060, 4043, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nkhotakota', 'mw', 286517, 4259, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nsanje', 'mw', 194767, 1942, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ntcheu', 'mw', 382589, 3424, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ntchisi', 'mw', 199340, 1655, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phalombe', 'mw', 237747, 1394, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rumphi', 'mw', 152065, 4769, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salima', 'mw', 288027, 2196, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thyolo', 'mw', 472142, 1715, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zomba Municipality', 'mw', 80932, 57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zomba Rural', 'mw', 518865, 2523, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Johor', 'my', 3003005, 18986, 'Johor Bahru', 'Johor');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kedah', 'my', 1809593, 9426, 'Alor Setar', 'Kedah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kelantan', 'my', 1427681, 14943, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuala Lumpur', 'my', 1453978, 243, 'Kuala Lumpur', 'Kuala Lumpur');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Labuan', 'my', 86714, 91, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Melaka', 'my', 688695, 1650, 'Melaka', 'Melaka');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Negeri Sembilan', 'my', 956221, 6643, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pahang', 'my', 1416772, 35965, 'Kuantan', 'Pahang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Perak', 'my', 2203985, 21005, 'Ipoh', 'Perak');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Perlis', 'my', 217512, 795, 'Kangar', 'Perlis');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pulau Pinang', 'my', 1378936, 1031, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabah', 'my', 3105839, 73620, 'Kota Kinabalu', 'Sabah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sarawak', 'my', 2344138, 124449, 'Kuching', 'Sarawak');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Selangor', 'my', 5408841, 7956, 'Shah Alam', 'Selangor');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Terengganu', 'my', 998789, 12955, 'Kuala Terengganu', 'Terengganu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alif Alif', 'mv', 4717, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alif Dhaal', 'mv', 10869, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baa', 'mv', 10385, 0, 'Eydhafushi', 'Baa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dhaal', 'mv', 5284, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Faaf', 'mv', 4513, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaaf Alif', 'mv', 8285, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaaf Dhaal', 'mv', 11707, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ghaviyani', 'mv', 7960, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haa Alif', 'mv', 14497, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haa Dhaal', 'mv', 18446, 0, 'Kulhudhuffushi', 'Haa Dhaal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaaf', 'mv', 15169, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laam', 'mv', 12868, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lhaviyani', 'mv', 10540, 0, 'Naifaru', 'Lhaviyani');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Male', 'mv', 84971, 0, 'Male', 'Male');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miim', 'mv', 5266, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuun', 'mv', 10718, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Raa', 'mv', 15864, 0, 'Ugoofaaru', 'Raa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shaviyani', 'mv', 12238, 0, 'Funadhoo', 'Shaviyani');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siin', 'mv', 18940, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thaa', 'mv', 9071, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaav', 'mv', 1779, 0, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bamako', 'ml', 971363, 267, 'Bamako', 'Bamako');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gao', 'ml', 369694, 170572, 'Gao', 'Gao');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayes', 'ml', 1805960, 197760, 'Kayes', 'Kayes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kidal', 'ml', 34162, 151430, 'Kidal', 'Kidal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koulikoro', 'ml', 1798314, 89833, 'Koulikoro', 'Koulikoro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mopti', 'ml', 1493350, 88752, 'Mopti', 'Mopti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Segou', 'ml', 1877886, 56127, 'Segou', 'Segou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sikasso', 'ml', 1773521, 76480, 'Sikasso', 'Sikasso');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gozo and Comino', 'mt', 29812, 68.72, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inner Harbour', 'mt', 85183, 16.88, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'mt', 46405, 73.66, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Outer Harbour', 'mt', 114421, 33.31, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Eastern', 'mt', 55218, 49.71, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'mt', 53555, 72.84, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ailinginae', 'mh', 0, 2.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ailinlaplap', 'mh', 2065, 14.69, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ailuk', 'mh', 518, 5.36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arno', 'mh', 2283, 12.95, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aur', 'mh', 587, 5.62, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bikar', 'mh', 0, .49, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bikini', 'mh', 15, 6.01, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bokak', 'mh', 0, 3.24, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ebon', 'mh', 983, 5.75, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Enewetak', 'mh', 919, 5.85, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Erikub', 'mh', 0, 1.53, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jabat', 'mh', 87, .57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaluit', 'mh', 1623, 11.34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jemo', 'mh', 0, .16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kili', 'mh', 867, .93, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kwajalein', 'mh', 11628, 16.39, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lae', 'mh', 318, 1.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lib', 'mh', 164, .93, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Likiep', 'mh', 543, 10.26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Majuro', 'mh', 25574, 9.71, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maloelap', 'mh', 875, 9.82, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mejit', 'mh', 396, 1.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mili', 'mh', 1120, 15.93, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namorik', 'mh', 740, 2.77, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namu', 'mh', 946, 6.27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rongelap', 'mh', 20, 7.95, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rongrik', 'mh', 0, 1.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toke', 'mh', 0, .57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ujae', 'mh', 430, 1.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ujelang', 'mh', 0, 1.74, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Utrik', 'mh', 440, 2.43, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wotho', 'mh', 182, 4.33, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wotje', 'mh', 990, 8.18, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fort-de-France', 'mq', 167303, 170.99, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Trinite', 'mq', 88803, 337.61, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Le Marin', 'mq', 116022, 409.14, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Pierre', 'mq', 23482, 210.26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adrar', 'mr', 59670, 215300, 'Atar', 'Adrar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Assaba', 'mr', 285139, 36600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brakna', 'mr', 256825, 37100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dakhlet Nouadhibou', 'mr', 80181, 22300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guidimagha', 'mr', 219673, 10300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gurgul', 'mr', 274335, 13600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hodh el Gharbi', 'mr', 243244, 53400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hodh ech Chargui', 'mr', 298622, 182700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inshiri', 'mr', 11235, 46800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Takant', 'mr', 64838, 95200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tiris Zemmour', 'mr', 63307, 252900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trarza', 'mr', 269944, 67800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Black River', 'mu', 70046, 258.99, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Flacq', 'mu', 138447, 297.84, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Port', 'mu', 115392, 260.28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moka', 'mu', 80543, 230.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pamplemousses', 'mu', 133871, 178.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plaines Wilhelm', 'mu', 382144, 203.31, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port Louis', 'mu', 133789, 42.73, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Riviere du Rempart', 'mu', 107250, 147.62, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rodrigues', 'mu', 36404, 174.82, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savanne', 'mu', 70158, 244.75, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayotte', 'yt', 159039, 362.29, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pamanzi', 'yt', 23036, 10.95, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aguascalientes', 'mx', 1032682, 5589, 'Aguascalientes', 'Aguascalientes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baja California', 'mx', 2916224, 70113, 'Mexicali', 'Baja California');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baja California Sur', 'mx', 475587, 73677, 'La Paz', 'Baja California Sur');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Campeche', 'mx', 743870, 51833, 'Campeche', 'Campeche');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiapas', 'mx', 4250247, 73887, 'Tuxtla Gutierrez', 'Chiapas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chihuahua', 'mx', 3316181, 247087, 'Chihuahua', 'Chihuahua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Coahuila', 'mx', 2415865, 151571, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colima', 'mx', 597971, 5455, 'Colima', 'Colima');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Federal', 'mx', 8657045, 1499, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Durango', 'mx', 1460182, 119648, 'Durango', 'Durango');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guanajuato', 'mx', 4908057, 30589, 'Guanajuato', 'Guanajuato');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guerrero', 'mx', 3237582, 63749, 'Chilpancingo', 'Guerrero');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hidalgo', 'mx', 2356137, 20987, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jalisco', 'mx', 6653363, 80137, 'Guadalajara', 'Jalisco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mexico', 'mx', 14576626, 21461, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Michoacan', 'mx', 4091000, 59864, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morelos', 'mx', 1680241, 4941, 'Cuernavaca', 'Morelos');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nayarit', 'mx', 941444, 27621, 'Tepic', 'Nayarit');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuevo Leon', 'mx', 4123420, 64555, 'Monterrey', 'Nuevo Leon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oaxaca', 'mx', 3625490, 95364, 'Oaxaca', 'Oaxaca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Queretaro', 'mx', 1568612, 11769, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quintana Roo', 'mx', 1090282, 50350, 'Chetumal', 'Quintana Roo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Luis Potosi', 'mx', 2391933, 62848, 'San Luis Potosi', 'San Luis Potosi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sinaloa', 'mx', 2641699, 58092, 'Culiacan', 'Sinaloa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sonora', 'mx', 2351430, 184934, 'Hermosillo', 'Sonora');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabasco', 'mx', 2041289, 24661, 'Villahermosa', 'Tabasco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tamaulipas', 'mx', 2976341, 79829, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tlaxcala', 'mx', 1044371, 3914, 'Tlaxcala', 'Tlaxcala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veracruz', 'mx', 7058897, 72815, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yucatan', 'mx', 1761763, 39340, 'Merida', 'Yucatan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zacatecas', 'mx', 1363579, 75040, 'Zacatecas', 'Zacatecas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chuuk', 'fm', 54353, 116.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kusaie', 'fm', 8038, 110.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pohnpei', 'fm', 35540, 372.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yap', 'fm', 11352, 121.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balti', 'md', 495747, 4081, 'Balti', 'Balti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cahul', 'md', 187540, 2438, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chisinau', 'md', 376752, 2780, 'Chisinau', 'Chisinau Oras');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chisinau Oras', 'md', 770182, 490, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Edinet', 'md', 279294, 3187, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gagauzia', 'md', 156661, 1503, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lapusna', 'md', 272902, 3436, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orhei', 'md', 296800, 2850, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soroca', 'md', 273296, 3162, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taraclia', 'md', 45238, 1022, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tighina', 'md', 167183, 2899, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Transnistria', 'md', 619365, 3479, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ungheni', 'md', 256969, 2516, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fontvieille', 'mc', 4307, .33, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Condamine', 'mc', 11985, .61, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monaco-Ville', 'mc', 967, .19, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monte Carlo', 'mc', 15825, .82, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arhangaj', 'mn', 99841, 55300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bajanhongor', 'mn', 88582, 116000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bajan-Oelgij', 'mn', 94225, 45700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bulgan', 'mn', 65730, 48700, 'Bulgan', 'Bulgan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Darhan-Uul', 'mn', 90481, 3280, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dornod', 'mn', 77930, 123600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dornogovd', 'mn', 53273, 109500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dundgovd', 'mn', 53636, 74700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Govd-Altaj', 'mn', 64294, 141400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Govdsumber', 'mn', 12882, 5540, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hentij', 'mn', 74055, 80300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hovd', 'mn', 91167, 76100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hoevsgoel', 'mn', 124516, 100600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oemnoegovd', 'mn', 49507, 165400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orhon', 'mn', 82790, 840, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oevoerhangaj', 'mn', 116342, 62900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Selenge', 'mn', 107286, 41200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suehbaatar', 'mn', 58342, 82300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toev', 'mn', 102012, 74000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ulaanbaatar', 'mn', 844786, 4700, 'Ulaanbaatar', 'Ulaanbaatar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uvs', 'mn', 92679, 69600, 'Ulaangom', 'Uvs');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zavhan', 'mn', 90657, 82500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Casablanca', 'ma', 3730720, 1615, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chaouia-Ouardigha', 'ma', 1736494, 16760, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Doukkala-Abda', 'ma', 2069561, 13285, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fes-Boulemane', 'ma', 1711334, 19795, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gharb-Chrarda-Beni Hssen', 'ma', 1983524, 8805, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guelmim', 'ma', 398639, 71970, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marrakech-Tensift-Al Haouz', 'ma', 3173594, 31160, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meknes-Tafilalet', 'ma', 2453346, 79210, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oriental', 'ma', 1829438, 82820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rabat-Sale-Zammour-Zaer', 'ma', 2570185, 9580, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Souss Massa-Draa', 'ma', 3279982, 70880, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tadla-Azilal', 'ma', 1544649, 17125, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tangier-Tetouan', 'ma', 2609071, 11570, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taza-Al Hoceima-Taounate', 'ma', 1912774, 24155, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cabo Delgado', 'mz', 1583884, 82625, 'Pemba', 'Cabo Delgado');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaza', 'mz', 1275495, 75709, 'Xai-Xai', 'Gaza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inhambane', 'mz', 1371712, 68615, 'Inhambane', 'Inhambane');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manica', 'mz', 1202715, 61661, 'Chimoio', 'Manica');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maputo', 'mz', 1191613, 602, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maputo Provincia', 'mz', 997945, 25756, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nampula', 'mz', 3780844, 81606, 'Nampula', 'Nampula');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niassa', 'mz', 942435, 129056, 'Lichinga', 'Niassa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sofala', 'mz', 1702305, 68018, 'Beira', 'Sofala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tete', 'mz', 1417354, 100724, 'Tete', 'Tete');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zambezia', 'mz', 3949841, 105008, 'Quelimane', 'Zambezia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ayeyarwady', 'mm', 7523817, 35138, 'Pathein', 'Ayeyarwady');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bago', 'mm', 5728709, 39404, 'Bago', 'Bago');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chin', 'mm', 556230, 36019, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kachin', 'mm', 1362716, 89041, 'Myitkyina', 'Kachin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayah', 'mm', 253788, 11733, 'Loikaw', 'Kayah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayin', 'mm', 1594146, 30383, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magway', 'mm', 4885832, 44820, 'Magway', 'Magway');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mandalay', 'mm', 6905557, 37024, 'Mandalay', 'Mandalay');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mon', 'mm', 2535609, 12297, 'Mawlamyine', 'Mon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rakhine', 'mm', 3084098, 36778, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rangoon', 'mm', 5990318, 10171, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sagaing', 'mm', 5812751, 94625, 'Sagaing', 'Sagaing');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shan', 'mm', 5605800, 155801, 'Taunggyi', 'Shan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tanintharyi', 'mm', 1383287, 43343, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Erongo', 'na', 132030, 63719, 'Swakopmund', 'Erongo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kavango', 'na', 235788, 43417, 'Rundu', 'Kavango');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kunene', 'na', 67055, 144254, 'Outjo', 'Kunene');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Omaheke', 'na', 71056, 84731, 'Gobabis', 'Omaheke');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Omusati', 'na', 234688, 13637, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oshikoto', 'na', 167523, 26607, 'Tsumeb', 'Oshikoto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aiwo', 'nr', 1092, 1.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anabar', 'nr', 502, 1.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anetan', 'nr', 516, 1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anibare', 'nr', 160, 3.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baiti', 'nr', 572, 1.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boe', 'nr', 795, .5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buada', 'nr', 716, 2.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Denigomudu', 'nr', 2827, .9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ewa', 'nr', 318, 1.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ijuw', 'nr', 303, 1.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meneng', 'nr', 1830, 3.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nibok', 'nr', 432, 1.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uaboe', 'nr', 335, .8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yaren', 'nr', 820, 1.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Achham', 'np', 239534, 1680, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arghakhanchi', 'np', 218013, 1193, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baglung', 'np', 278551, 1784, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baitadi', 'np', 244725, 1519, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bajhang', 'np', 175236, 3422, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bajura', 'np', 115674, 2188, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banke', 'np', 428385, 2337, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bara', 'np', 613427, 1190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bardiya', 'np', 426489, 2025, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bhaktapur', 'np', 238425, 119, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bhojpur', 'np', 204253, 1507, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chitwan', 'np', 521154, 2218, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dadeldhura', 'np', 134083, 1538, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dailekh', 'np', 236426, 1502, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dang Deokhuri', 'np', 506451, 2955, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Darchula', 'np', 128083, 2322, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dhading', 'np', 357244, 1926, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dhankuta', 'np', 173216, 891, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dhanusa', 'np', 721407, 1180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dolakha', 'np', 214519, 2191, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dolpa', 'np', 30974, 7889, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Doti', 'np', 217385, 2025, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gorkha', 'np', 298276, 3610, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gulmi', 'np', 307099, 1149, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Humla', 'np', 45562, 5655, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilam', 'np', 305058, 1703, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jajarkot', 'np', 141699, 2230, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jhapa', 'np', 729514, 1606, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jumla', 'np', 93261, 2531, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kailali', 'np', 713086, 3235, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalikot', 'np', 108689, 1741, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanchanpur', 'np', 432167, 1610, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kapilvastu', 'np', 530419, 1738, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaski', 'np', 416161, 2017, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kathmandu', 'np', 1264676, 395, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kavrepalanchok', 'np', 399759, 1396, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khotang', 'np', 234084, 1591, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lalitpur', 'np', 373438, 385, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lamjung', 'np', 181180, 1692, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mahottari', 'np', 593521, 1002, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Makwanpur', 'np', 424705, 2426, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manang', 'np', 10083, 2246, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morang', 'np', 908457, 1855, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mugu', 'np', 43861, 3535, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mustang', 'np', 15321, 3573, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Myagdi', 'np', 117418, 2297, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nawalparasi', 'np', 621621, 2162, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuwakot', 'np', 305424, 1121, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Okhaldhunga', 'np', 159761, 1074, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Palpa', 'np', 278266, 1373, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Panchthar', 'np', 211099, 1241, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Parbat', 'np', 163024, 494, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Parsa', 'np', 545290, 1353, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyuthan', 'np', 222945, 1309, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ramechhap', 'np', 221954, 1546, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rasuwa', 'np', 47688, 1544, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rautahat', 'np', 591290, 1126, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rolpa', 'np', 217498, 1879, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rukum', 'np', 199558, 2877, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rupandehi', 'np', 785608, 1360, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salyan', 'np', 225582, 1462, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sankhuwasabha', 'np', 164469, 3480, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saptari', 'np', 609581, 1363, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sarlahi', 'np', 686221, 1259, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sindhuli', 'np', 299780, 2491, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sindhupalchok', 'np', 319619, 2542, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siraha', 'np', 613253, 1188, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Solukhumbu', 'np', 111099, 3312, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sunsari', 'np', 690453, 1257, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Surkhet', 'np', 316071, 2451, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Syangja', 'np', 324856, 1164, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tanahu', 'np', 333333, 1546, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taplejung', 'np', 136848, 3646, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Terhathum', 'np', 116746, 679, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Udayapur', 'np', 317113, 2063, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Drenthe', 'nl', 483549, 2652.06, 'Assen', 'Drenthe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Friesland', 'nl', 644909, 3361.35, 'Leeuwarden', 'Friesland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Groningen', 'nl', 578713, 2344.14, 'Groningen', 'Groningen');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noord-Holland', 'nl', 2594468, 2659.78, 'Haarlem', 'Noord-Holland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Overijssel', 'nl', 1110481, 3337.46, 'Zwolle', 'Overijssel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zeeland', 'nl', 378637, 1791.95, 'Middelburg', 'Zeeland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zuid-Holland', 'nl', 3465564, 2859.51, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Curacao', 'an', 136197, 444, 'Willemstad', 'Curacao');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sint Maarten', 'an', 32872, 34, 'Phillipsburg', 'Sint Maarten');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iles', 'nc', 24650, 1981, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord', 'nc', 48898, 7348, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud', 'nc', 158862, 9407, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Area Outside Region', 'nz', 652, 963, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Auckland', 'nz', 1366723, 5048.27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bay of Plenty', 'nz', 259483, 11427.71, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canterbury', 'nz', 524590, 45845.32, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gisborne', 'nz', 47124, 8354.93, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hawkes Bay', 'nz', 148286, 13763.77, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manawatu-Wanganui', 'nz', 225739, 22686.74, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marlborough', 'nz', 42368, 12493.32, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nelson', 'nz', 45841, 444.29, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northland', 'nz', 147514, 13296.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Otago', 'nz', 195821, 31476.16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southland', 'nz', 93046, 25392, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taranaki', 'nz', 104690, 7227.05, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tasman', 'nz', 46522, 14537.99, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Waikato', 'nz', 383407, 26169.94, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wellington', 'nz', 460756, 8056.01, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('West Coast', 'nz', 30047, 23351.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atlantico Norte', 'ni', 264908, 32195, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atlantico Sur', 'ni', 404831, 27407, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boaco', 'ni', 177514, 4244, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carazo', 'ni', 185879, 1050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chinandega', 'ni', 462515, 4926, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chontales', 'ni', 191154, 6378, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Esteli', 'ni', 224117, 2335, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Granada', 'ni', 200895, 929, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jinotega', 'ni', 308137, 9755, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leon', 'ni', 408867, 5107, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madriz', 'ni', 140577, 1602, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Managua', 'ni', 1443451, 3672, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Masaya', 'ni', 334950, 590, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matagalpa', 'ni', 511220, 8523, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nueva Segovia', 'ni', 230398, 3123, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio San Juan', 'ni', 101807, 7473, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rivas', 'ni', 175277, 2155, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agadez', 'ne', 347330, 634209, 'Agadez', 'Agadez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diffa', 'ne', 381100, 140216, 'Diffa', 'Diffa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dosso', 'ne', 1622968, 31002, 'Dosso', 'Dosso');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maradi', 'ne', 2473840, 38581, 'Maradi', 'Maradi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niamey', 'ne', 774245, 670, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tahoua', 'ne', 2095387, 106677, 'Tahoua', 'Tahoua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tillabery', 'ne', 2017213, 89623, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zinder', 'ne', 2213428, 145430, 'Zinder', 'Zinder');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abia', 'ng', 4222492, 6320, 'Umuahia', 'Abia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abuja Federal Capital Territory', 'ng', 660639, 7315, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adamawa', 'ng', 3737239, 36917, 'Yola', 'Adamawa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Akwa Ibom', 'ng', 4805470, 7081, 'Uyo', 'Akwa Ibom');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anambra', 'ng', 4721864, 4844, 'Awka', 'Anambra');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bauchi', 'ng', 4706913, 45837, 'Bauchi', 'Bauchi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bayelsa', 'ng', 1998358, 10773, 'Yenagoa', 'Bayelsa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Benue', 'ng', 5181652, 34059, 'Makurdi', 'Benue');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Borno', 'ng', 4588680, 70898, 'Maiduguri', 'Borno');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cross River', 'ng', 3104458, 20156, 'Calabar', 'Cross River');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delta', 'ng', 4170222, 17698, 'Asaba', 'Delta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ebonyi', 'ng', 1739152, 5670, 'Abakaliki', 'Ebonyi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Edo', 'ng', 3497514, 17802, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ekiti', 'ng', 2737205, 6353, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Enugu', 'ng', 3590528, 7161, 'Enugu', 'Enugu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gombe', 'ng', 2448250, 18768, 'Gombe', 'Gombe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Imo', 'ng', 4485075, 5530, 'Owerri', 'Imo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jigawa', 'ng', 4988892, 23154, 'Dutse', 'Jigawa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaduna', 'ng', 6849028, 46053, 'Kaduna', 'Kaduna');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kano', 'ng', 10077638, 20131, 'Kano', 'Kano');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Katsina', 'ng', 6483412, 24192, 'Katsina', 'Katsina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kebbi', 'ng', 3630947, 36800, 'Birnin Kebbi', 'Kebbi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kogi', 'ng', 3595796, 29833, 'Lokoja', 'Kogi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kwara', 'ng', 2591566, 36825, 'Ilorin', 'Kwara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lagos', 'ng', 10601160, 3345, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nassarawa', 'ng', 2040112, 27117, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niger', 'ng', 4082562, 76363, 'Minna', 'Niger');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ogun', 'ng', 4054285, 16762, 'Abeokuta', 'Ogun');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ondo', 'ng', 4011423, 14606, 'Akure', 'Ondo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Osun', 'ng', 4137647, 9251, 'Oshogbo', 'Osun');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oyo', 'ng', 6617712, 28454, 'Ibadan', 'Oyo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plateau', 'ng', 3553455, 30913, 'Jos', 'Plateau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rivers', 'ng', 5689061, 11077, 'Port Harcourt', 'Rivers');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sokoto', 'ng', 4244412, 25973, 'Sokoto', 'Sokoto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taraba', 'ng', 2688963, 54473, 'Jalingo', 'Taraba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yobe', 'ng', 2532415, 45502, 'Damaturu', 'Yobe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zamfara', 'ng', 3602374, 39762, 'Gusau', 'Zamfara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bocas del Toro', 'pa', 96657, 4601.3, 'Bocas del Toro', 'Bocas del Toro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiriqui', 'pa', 399311, 6476.5, 'David', 'Chiriqui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cocle', 'pa', 219217, 4927.4, 'Penonome', 'Cocle');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colon', 'pa', 221108, 4890.5, 'Colon', 'Colon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Embera', 'pa', 8928, 4398, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Herrera', 'pa', 110945, 2340.8, 'Chitre', 'Herrera');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuna de Madungandi', 'pa', 3579, 2318.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuna de Wargandi', 'pa', 1227, 775, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuna Yala', 'pa', 35131, 2393.1, 'Nargana', 'Kuna Yala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Los Santos', 'pa', 90405, 3805.4, 'Las Tablas', 'Los Santos');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngoebe Bugle', 'pa', 119190, 6673.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Panama', 'pa', 1499678, 9633.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veraguas', 'pa', 226379, 10677.2, 'Santiago', 'Veraguas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'pg', 202087, 29500, 'Port Moresby', 'National Capital District');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern Highlands', 'pg', 489442, 11200, 'Goroka', 'Eastern Highlands');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('East New Britain', 'pg', 236287, 15500, 'Rabaul', 'East New Britain');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('East Sepik', 'pg', 383588, 42800, 'Wewak', 'East Sepik');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Enga', 'pg', 313689, 12800, 'Wabag', 'Enga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fly River', 'pg', 174395, 99300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gulf', 'pg', 123312, 34500, 'Kerema', 'Gulf');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madang', 'pg', 406883, 29000, 'Madang', 'Madang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morobe', 'pg', 622512, 34500, 'Lae', 'Morobe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Ireland', 'pg', 133325, 9600, 'Kavieng', 'New Ireland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Solomons', 'pg', 132887, 9300, 'Arawa', 'North Solomons');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sandaun', 'pg', 209364, 36300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Simbu', 'pg', 291848, 6100, 'Kundiawa', 'Simbu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('West New Britain', 'pg', 215574, 21000, 'Kimbe', 'West New Britain');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alto Paraguay', 'py', 14005, 82349, 'Fuerte Olimpo', 'Alto Paraguay');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asuncion', 'py', 508797, 117, 'Asuncion', 'Asuncion');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caaguazu', 'py', 458821, 11474, 'Coronel Oviedo', 'Caaguazu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canendiyu', 'py', 154225, 14667, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'py', 1533573, 2465, 'Aregua', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cordillera', 'py', 238118, 4948, 'Caacupe', 'Cordillera');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Itapua', 'py', 484310, 16525, 'Encarnacion', 'Itapua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neembucu', 'py', 77587, 12147, 'Pilar', 'Neembucu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Pedro', 'py', 332397, 20002, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amazonas', 'pe', 447529, 39249.13, 'Chachapoyas', 'Amazonas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ancash', 'pe', 1125085, 35825.57, 'Huaraz', 'Ancash');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arequipa', 'pe', 1171894, 63345.39, 'Arequipa', 'Arequipa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cajamarca', 'pe', 1478610, 33247.77, 'Cajamarca', 'Cajamarca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huanuco', 'pe', 842839, 36938.09, 'Huanuco', 'Huanuco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ica', 'pe', 699462, 21327.83, 'Ica', 'Ica');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Libertad', 'pe', 1597685, 25569.67, 'Trujillo', 'La Libertad');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lima y Callao', 'pe', 9058592, 34948.57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loreto', 'pe', 1013106, 368851.95, 'Iquitos', 'Loreto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moquegua', 'pe', 159801, 15733.97, 'Moquegua', 'Moquegua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Piura', 'pe', 1745243, 35892.49, 'Piura', 'Piura');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puno', 'pe', 1258648, 71999, 'Puno', 'Puno');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tacna', 'pe', 321298, 16075.89, 'Tacna', 'Tacna');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tumbes', 'pe', 222553, 4669.2, 'Tumbes', 'Tumbes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bicol', 'ph', 4993075, 17632.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cagayan Valley', 'ph', 3059427, 26837.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caraga', 'ph', 2237494, 18847, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Luzon', 'ph', 9103330, 18230.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Mindanao', 'ph', 2846681, 14454.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Visayas', 'ph', 6342555, 14951.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cordillera', 'ph', 1486049, 17410.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern Visayas', 'ph', 3827202, 21422.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilocos', 'ph', 4543787, 12840.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Muslim Mindanao', 'ph', 2801352, 11638.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('National Capital Region', 'ph', 10457432, 636, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Mindanao', 'ph', 2979276, 14033, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern Mindanao', 'ph', 5790652, 27316.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern Tagalog', 'ph', 13777354, 46924.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western Mindanao', 'ph', 3346062, 15997.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western Visayas', 'ph', 6582364, 20827.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kujawsko-Pomorskie', 'pl', 2066580, 17970, 'Bydgoszcz', 'Kujawsko-Pomorskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lubelskie', 'pl', 2183993, 25115, 'Lublin', 'Lubelskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malopolskie', 'pl', 3275680, 15144, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mazowieckie', 'pl', 5141709, 35597, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Opolskie', 'pl', 1046416, 9412, 'Opole', 'Opolskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Podlaskie', 'pl', 1202028, 20180, 'Bialystok', 'Podlaskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Slaskie', 'pl', 4686544, 12294, 'Katowice', 'Slaskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Warminsko-Mazurskie', 'pl', 1428212, 24203, 'Olsztyn', 'Warminsko-Mazurskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zachodnio-Pomorskie', 'pl', 1694967, 22902, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Acores', 'pt', 242902, 2329.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alentejo', 'pt', 527298, 26931.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Algarve', 'pt', 411304, 4988.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Centro', 'pt', 1796504, 23668.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lisboa e Vale do Tejo', 'pt', 3496761, 11931.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madeira', 'pt', 238928, 778.9, 'Funchal', 'Madeira');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Norte', 'pt', 3749473, 21278.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arecibo', 'pr', 536660, 1489.51, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bayamon', 'pr', 525666, 316.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carolina', 'pr', 353076, 769.23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guayama', 'pr', 540943, 1703.44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Humacao', 'pr', 609846, 1371.92, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayagueez-Aguadilla', 'pr', 497333, 1551.41, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ponce', 'pr', 445471, 1633.25, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Juan', 'pr', 431285, 136.23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Guwayriyah', 'qa', 2332, 622.74, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jumayliyah', 'qa', 13424, 2611.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wakrah', 'qa', 31547, 777.31, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('ar-Rayyan', 'qa', 286514, 893.48, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Samal', 'qa', 5510, 902.11, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Doha', 'qa', 344939, 158.71, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jariyan al-Batnah', 'qa', 6494, 3906.53, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khor', 'qa', 33690, 1001.44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Musayid', 'qa', 10106, 176.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bassas da India', 're', 0, .2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Europa Island', 're', 0, 28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Glorioso Islands', 're', 0, 5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Juan de Nova Island', 're', 0, 4.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Benoit', 're', 112335, 738, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Denis', 're', 261083, 421, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Paul', 're', 152942, 466, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Pierre', 're', 253028, 883, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tromelin Island', 're', 0, 1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alba', 'ro', 373616, 6242, 'Alba Iulia', 'Alba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arad', 'ro', 453330, 7754, 'Arad', 'Arad');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bacau', 'ro', 698735, 6621, 'Bacau', 'Bacau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Botosani', 'ro', 450588, 4986, 'Botosani', 'Botosani');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Braila', 'ro', 367829, 4766, 'Braila', 'Braila');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bucharest', 'ro', 1877155, 238, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buzau', 'ro', 487484, 6103, 'Buzau', 'Buzau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Calarasi', 'ro', 319771, 5088, 'Calarasi', 'Calarasi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cluj', 'ro', 692149, 6674, 'Cluj-Napoca', 'Cluj');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Covasna', 'ro', 218613, 3710, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dambovita', 'ro', 534003, 4054, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dolj', 'ro', 725102, 7414, 'Craiova', 'Dolj');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galati', 'ro', 611732, 4466, 'Galati', 'Galati');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gorj', 'ro', 381225, 5602, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hunedoara', 'ro', 512923, 7063, 'Deva', 'Hunedoara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ialomita', 'ro', 292920, 4453, 'Slobozia', 'Ialomita');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iasi', 'ro', 818614, 5476, 'Iasi', 'Iasi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilfov', 'ro', 302915, 1583, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mures', 'ro', 569918, 6714, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neamt', 'ro', 549544, 5896, 'Piatra Neamt', 'Neamt');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prahova', 'ro', 814506, 4716, 'Ploiesti', 'Prahova');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Satu Mare', 'ro', 359578, 4418, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sibiu', 'ro', 412750, 5432, 'Sibiu', 'Sibiu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Timis', 'ro', 669549, 8697, 'Timisoara', 'Timis');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tulcea', 'ro', 254489, 8499, 'Tulcea', 'Tulcea');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valcea', 'ro', 405623, 5765, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adygeya', 'ru', 447381, 7798.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agin-Buryat', 'ru', 70821, 19312.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Altai Republic', 'ru', 204064, 92961.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Altaiski Kray', 'ru', 2586976, 167816.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amur', 'ru', 868169, 361401.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arkhangelsk', 'ru', 1245685, 419811.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Astrakhan', 'ru', 1000697, 47235.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bashkortostan', 'ru', 4112207, 142896.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Belgorod', 'ru', 1531045, 27086.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bryansk', 'ru', 1351463, 34835.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buryatia', 'ru', 963336, 332013, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chechnya', 'ru', 1106103, 15680.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chelyabinsk', 'ru', 3577253, 88181.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chita', 'ru', 1036179, 412338.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chukotka', 'ru', 50134, 719821, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chuvashia', 'ru', 1301226, 18343.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dagestan', 'ru', 2758424, 50278, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ingushetia', 'ru', 515587, 2962.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Irkutsk', 'ru', 2382934, 739482.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ivanovo', 'ru', 1109196, 23896.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jewish Republic', 'ru', 184934, 36112.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kabardino-Balkaria', 'ru', 928518, 11518, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaliningrad', 'ru', 967962, 13612.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalmykia', 'ru', 284668, 74721.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaluga', 'ru', 1030146, 29807.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kamchatka', 'ru', 314994, 171265.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karachai-Cherkess Republic', 'ru', 441394, 14276.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karelia', 'ru', 697354, 156665.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kemerovo', 'ru', 2827246, 95801.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khabarovsk Krai', 'ru', 1394489, 785730, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khakasia', 'ru', 538125, 61610.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khanty-Mansi', 'ru', 1460892, 534473, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirov', 'ru', 1457863, 120775.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Komi', 'ru', 968408, 416774, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Komi-Permyak', 'ru', 130760, 32876.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koryak', 'ru', 23513, 293899.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kostroma', 'ru', 717819, 60143.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krasnodar', 'ru', 5191490, 75723.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krasnoyarsk', 'ru', 2845899, 719234.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kurgan', 'ru', 996476, 71910, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kursk', 'ru', 1207090, 30088.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leningrad', 'ru', 1660797, 74353.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lipetsk', 'ru', 1202750, 24040.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magadan', 'ru', 169503, 464253.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mari El', 'ru', 719081, 23372.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mordovia', 'ru', 868531, 26159.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moscow', 'ru', 10636981, 1091, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moskovskaya Oblast', 'ru', 6564006, 46058.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Murmansk', 'ru', 841895, 143193, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nenets', 'ru', 38949, 176700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nizhni Novgorod', 'ru', 3464526, 76729.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Ossetia', 'ru', 722901, 7953.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Novgorod', 'ru', 678571, 53894.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Novosibirsk', 'ru', 2657700, 178677.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Omsk', 'ru', 2054239, 141083.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orel', 'ru', 848808, 24532.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orenburg', 'ru', 2167498, 124339, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Penza', 'ru', 1433768, 43314.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Perm', 'ru', 2616727, 127360.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Primorski', 'ru', 2021902, 161872.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pskov', 'ru', 739639, 55399.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rostov', 'ru', 4397303, 101126.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ryazan', 'ru', 1197310, 39770.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Petersburg', 'ru', 4561084, 1146.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sakhalin', 'ru', 514554, 85358.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samara', 'ru', 3214701, 53636.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saratov', 'ru', 2648495, 100830.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Smolensk', 'ru', 1022034, 49675.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stavropol', 'ru', 2784270, 66127.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sverdlovsk', 'ru', 4412629, 194074.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tambov', 'ru', 1143906, 34538.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tatarstan', 'ru', 3786329, 68020.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taymir', 'ru', 36964, 844167.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tomsk', 'ru', 1049069, 313908.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tula', 'ru', 1628465, 25820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tver', 'ru', 1424422, 84585.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tyumen', 'ru', 1316577, 159869.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tyva', 'ru', 302939, 168606.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Udmurtia', 'ru', 1552896, 42100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ulyanovsk', 'ru', 1370689, 37336.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ust-Ordyn Buryat', 'ru', 134367, 22138.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vladimir', 'ru', 1489102, 29142.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Volgograd', 'ru', 2705208, 113023, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vologda', 'ru', 1245038, 143527.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Voronezh', 'ru', 2345908, 52322.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yakutia', 'ru', 918293, 3078125.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yamalo-Nenets', 'ru', 508401, 683975.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yaroslavl', 'ru', 1338749, 33139.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yevenki', 'ru', 16507, 763092, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Butare', 'rw', 738683, 1849, 'Butare', 'Butare');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Byumba', 'rw', 750865, 1730, 'Byumba', 'Byumba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cyangugu', 'rw', 653022, 2330, 'Cyangugu', 'Cyangugu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gikongoro', 'rw', 510172, 2188, 'Gikongoro', 'Gikongoro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gisenyi', 'rw', 928968, 2145, 'Gisenyi', 'Gisenyi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gitarama', 'rw', 886264, 2188, 'Gitarama', 'Gitarama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kibungo', 'rw', 744990, 3253, 'Kibungo', 'Kibungo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kibuye', 'rw', 484387, 1336, 'Kibuye', 'Kibuye');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kigali-ngali', 'rw', 796761, 3133, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ruhengeri', 'rw', 953181, 1762, 'Ruhengeri', 'Ruhengeri');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umutara', 'rw', 447285, 4312, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ville de Kigali', 'rw', 745526, 112, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ascension', 'sh', 1035, 88, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gough Island', 'sh', 4, 90, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inaccessible Island', 'sh', 0, 10, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nightingale Islands', 'sh', 0, 2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Helena', 'sh', 3800, 122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tristan da Cunha', 'sh', 271, 98, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Christ Church Nichola Town', 'kn', 1801, 18.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Anne Sandy Point', 'kn', 2849, 12.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George Basseterre', 'kn', 12920, 28.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George Gingerland', 'kn', 2072, 18.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint James Windward', 'kn', 1529, 31.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John Capesterre', 'kn', 2859, 24.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John Figtree', 'kn', 2009, 21.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mary Cayon', 'kn', 2994, 15.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Paul Capesterre', 'kn', 1882, 13.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Paul Charlestown', 'kn', 1538, 3.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter Basseterre', 'kn', 2262, 20.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Thomas Lowland', 'kn', 1791, 18.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Thomas Middle Island', 'kn', 2045, 24.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trinity Palmetto Point', 'kn', 1050, 15.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anse-la-Raye', 'lc', 6395, 41.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canaries', 'lc', 1751, 21, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Castries', 'lc', 68399, 96.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Choiseul', 'lc', 5932, 26.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dennery', 'lc', 13180, 75.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gros Inlet', 'lc', 24083, 99.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laborie', 'lc', 7185, 32.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Micoud', 'lc', 16125, 112.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soufriere', 'lc', 7519, 60.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vieux Fort', 'lc', 15131, 51.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miquelon-Langlade', 'pm', 1141, 216, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Pierre', 'pm', 6200, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Charlotte', 'vc', 39890, 148.8, 'Georgetown', 'Charlotte');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grenadines', 'vc', 9654, 45.3, 'Port Elizabeth', 'Grenadines');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'vc', 7033, 28.7, 'Layou', 'Saint Andrew');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint David', 'vc', 7033, 80, 'Chateaubelair', 'Saint David');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'vc', 53957, 52.1, 'Kingstown', 'Saint George');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Patrick', 'vc', 6089, 36.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Apia Urban Area', 'ws', 40407, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North West Upolu', 'ws', 56934, 251, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rest of Upolu', 'ws', 42654, 780, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savaii', 'ws', 41988, 1694, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Acquaviva', 'sm', 1578, 4.86, 'Acquaviva', 'Acquaviva');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Borgo Maggiore', 'sm', 6828, 9.01, 'Borgo Maggiore', 'Borgo Maggiore');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiesanuova', 'sm', 982, 5.46, 'Chiesanuova', 'Chiesanuova');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Domagnano', 'sm', 2808, 6.62, 'Domagnano', 'Domagnano');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Faetano', 'sm', 1010, 7.75, 'Faetano', 'Faetano');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fiorentino', 'sm', 2147, 6.56, 'Fiorentino', 'Fiorentino');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montegiardino', 'sm', 796, 3.31, 'Montegiardino', 'Montegiardino');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Marino', 'sm', 4758, 7.09, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Serravalle', 'sm', 9565, 10.53, 'Serravalle', 'Serravalle');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agua Grande', 'st', 65151, 17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cantagalo', 'st', 14232, 119, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caue', 'st', 7051, 267, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lemba', 'st', 11737, 229, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lobata', 'st', 19867, 105, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Me-Zochi', 'st', 42186, 122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pague', 'st', 6433, 142, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Bahah', 'sa', 574908, 9921, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Hudud-as-Samaliyah', 'sa', 233579, 111797, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jawf', 'sa', 380295, 100212, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Madinah', 'sa', 1467264, 151990, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qasim', 'sa', 1069681, 58046, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asir', 'sa', 1699945, 76693, 'Abha', 'Asir');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Sarqiyah', 'sa', 3035663, 672522, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hail', 'sa', 554299, 103887, 'Hail', 'Hail');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jizan', 'sa', 1223911, 11671, 'Jizan', 'Jizan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Makkah', 'sa', 5627381, 153128, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Najran', 'sa', 415639, 149511, 'Najran', 'Najran');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Riyadh', 'sa', 4885639, 404240, 'Riyadh', 'Riyadh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabuk', 'sa', 603405, 146072, 'Tabuk', 'Tabuk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dakar', 'sn', 2702820, 550, 'Dakar', 'Dakar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diourbel', 'sn', 1032003, 4359, 'Diourbel', 'Diourbel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fatick', 'sn', 674388, 7935, 'Fatick', 'Fatick');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaolack', 'sn', 1226311, 16010, 'Kaolack', 'Kaolack');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kolda', 'sn', 908812, 21011, 'Kolda', 'Kolda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Louga', 'sn', 570255, 29188, 'Louga', 'Louga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Louis', 'sn', 921912, 44127, 'Saint-Louis', 'Saint-Louis');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tambacounda', 'sn', 573362, 59602, 'Tambacounda', 'Tambacounda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thies', 'sn', 1477564, 6601, 'Thies', 'Thies');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ziguinchor', 'sn', 606795, 7339, 'Ziguinchor', 'Ziguinchor');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Serbia', 'yu', 5670230, 55968, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kosovo and Metohija', 'yu', 2160501, 10887, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montenegro', 'yu', 716031, 13812, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vojvodina', 'yu', 2134415, 21506, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anse aux Pins', 'sc', 3525, 1.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anse Boileau', 'sc', 3738, 11.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anse Etoile', 'sc', 3892, 5.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anse Royale', 'sc', 3715, 6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Au Cap', 'sc', 2797, 8.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baie Lazare', 'sc', 2662, 11.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baie Sainte Anne', 'sc', 3793, 25.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beau Vallon', 'sc', 3812, 3.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bel Air', 'sc', 3862, 4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Belombre', 'sc', 3350, 8.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cascade', 'sc', 2996, 9.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('English River', 'sc', 2536, 1.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Glacis', 'sc', 3633, 6.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Anse Mahe', 'sc', 2593, 14.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Anse Praslin', 'sc', 3062, 14.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Digue and Inner Islands', 'sc', 3116, 56, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Les Mamelles', 'sc', 2966, 4.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mont Buxton', 'sc', 2771, 1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mont Fleuri', 'sc', 3785, 1.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Outer Islands', 'sc', 1525, 211.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plaisance', 'sc', 3906, 2.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pointe Larue', 'sc', 2495, 3.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port Glaud', 'sc', 2747, 25.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Roche Caiman', 'sc', 2176, 2.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Louis', 'sc', 3672, .8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Takamaka', 'sc', 3369, 13.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'sl', 1293835, 15553, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'sl', 1700183, 35936, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern', 'sl', 997446, 19694, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'sl', 1190761, 557, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banskobystricky', 'sk', 662121, 9455, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bratislavsky', 'sk', 599015, 2053, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kosicky', 'sk', 766012, 6753, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nitriansky', 'sk', 713422, 6343, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Presovsky', 'sk', 789968, 8993, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trenciansky', 'sk', 605582, 4501, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trnavsky', 'sk', 551003, 4148, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zilinsky', 'sk', 692332, 6788, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gorenjska', 'si', 196012, 2137, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Goriska', 'si', 117031, 2326, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jugovzodna Slovenija', 'si', 136438, 2685, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koroska', 'si', 72822, 1040, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Notranjsko-kraska', 'si', 50258, 1456, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Obalno-kraska', 'si', 100828, 1045, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Osrednjeslovenska', 'si', 491407, 2545, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Podravska', 'si', 307391, 2169, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pomurska', 'si', 120046, 1369, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savinjska', 'si', 252114, 2352, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Spodnjeposavska', 'si', 67710, 885, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zasavska', 'si', 44859, 264, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'sb', 23823, 615, 'Tulagi', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Choiseul', 'sb', 23051, 3837, 'Taro Island', 'Choiseul');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guadalcanal', 'sb', 65221, 5336, 'Honiara', 'Guadalcanal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Honiara', 'sb', 60406, 22, 'Honiara', 'Guadalcanal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Isabel', 'sb', 23173, 4136, 'Buala', 'Isabel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Makira and Ulawa', 'sb', 35529, 3188, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malaita', 'sb', 143107, 4225, 'Auki', 'Malaita');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rennell and Bellona', 'sb', 2565, 671, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Temotu', 'sb', 20697, 895, 'Lata', 'Temotu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'sb', 73089, 5475, 'Gizo', 'Western');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Awdal', 'so', 401181, 21374, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bakol', 'so', 350709, 26962, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banadir', 'so', 1226654, 370, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bari', 'so', 524293, 70088, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bay', 'so', 1063682, 35156, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galgudud', 'so', 603539, 46126, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gedo', 'so', 554483, 60389, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hiran', 'so', 517218, 31510, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jubbada Dexe', 'so', 348586, 9836, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jubbada Hose', 'so', 642454, 42876, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mudug', 'so', 733964, 72933, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nugal', 'so', 153774, 26180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabellaha Dexe', 'so', 830191, 22663, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabellaha Hose', 'so', 1345759, 25285, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanag', 'so', 510614, 53374, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sol', 'so', 110849, 25036, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Togder', 'so', 905427, 38663, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Woqoyi Galbed', 'so', 1143634, 28836, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern Cape', 'za', 6490717, 169580, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Free State', 'za', 2740952, 129480, 'Bloemfontein', 'Free State');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('KwaZulu Natal', 'za', 10154456, 92100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limpopo', 'za', 5494932, 123910, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Cape', 'za', 819382, 361830, 'Kimberley', 'Northern Cape');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North West', 'za', 3895130, 116320, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western Cape', 'za', 4988159, 129370, 'Cape Town', 'Western Cape');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('A Coruna', 'es', 1106419, 7876, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alacant', 'es', 1707967, 5863, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alava', 'es', 296849, 3047, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Albacete', 'es', 379897, 14862, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Almeria', 'es', 585679, 8774, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asturias', 'es', 1047653, 10604, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Avila', 'es', 162442, 8048, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Badajoz', 'es', 652543, 21657, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balears', 'es', 972015, 4992, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barcelona', 'es', 5192965, 7733, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Burgos', 'es', 353411, 14309, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caceres', 'es', 443741, 19945, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cadiz', 'es', 1152782, 7385, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cantabria', 'es', 548432, 5321, 'Santander', 'Cantabria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Castello', 'es', 539511, 6679, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ceuta', 'es', 71436, 18, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ciudad Real', 'es', 489359, 19749, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cordoba', 'es', 769355, 13718, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cuenca', 'es', 205355, 17061, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Girona', 'es', 642681, 5886, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Granada', 'es', 849934, 12531, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guadalajara', 'es', 204149, 12190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guipuzcoa', 'es', 680750, 1997, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huelva', 'es', 474338, 10085, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huesca', 'es', 213985, 15613, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaen', 'es', 646277, 13498, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Rioja', 'es', 295512, 5045, 'Logrono', 'La Rioja');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Las Palmas', 'es', 966378, 4072, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leon', 'es', 480565, 15468, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lleida', 'es', 385195, 12028, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lugo', 'es', 345658, 9803, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madrid', 'es', 5998759, 8028, 'Madrid', 'Madrid');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malaga', 'es', 1420397, 7276, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Melilla', 'es', 66419, 14, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Murcia', 'es', 1325630, 11314, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Navarra', 'es', 588687, 10391, 'Pamplona', 'Navarra');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ourense', 'es', 331793, 7278, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Palencia', 'es', 168994, 8035, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pontevedra', 'es', 921821, 4477, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salamanca', 'es', 342972, 12336, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Cruz de Tenerife', 'es', 886077, 3170, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Segovia', 'es', 151861, 6949, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sevilla', 'es', 1772964, 14001, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soria', 'es', 90659, 10287, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarragona', 'es', 691923, 6283, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Teruel', 'es', 140444, 14785, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toledo', 'es', 594201, 15368, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valencia', 'es', 2366018, 10763, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valladolid', 'es', 507247, 8202, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vizcaya', 'es', 1120385, 2217, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zamora', 'es', 193918, 10559, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zaragoza', 'es', 890734, 17252, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amparai', 'lk', 614676, 4415, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anuradhapura', 'lk', 755432, 7179, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Badulla', 'lk', 777264, 2861, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batticaloa', 'lk', 515738, 2854, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colombo', 'lk', 2273238, 699, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galle', 'lk', 994995, 1652, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gampaha', 'lk', 2146055, 1387, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hambantota', 'lk', 529442, 2609, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaffna', 'lk', 962448, 1025, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalatura', 'lk', 1074696, 1598, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kandy', 'lk', 1277645, 1940, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kegalla', 'lk', 774545, 1693, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kilinochchi', 'lk', 118195, 1279, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kurunegala', 'lk', 1455528, 4816, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mannarama', 'lk', 160145, 1996, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matale', 'lk', 445869, 1993, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matara', 'lk', 761063, 1283, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monaragala', 'lk', 410076, 5639, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mullaitivu', 'lk', 109030, 2617, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuwara Eliya', 'lk', 697638, 1741, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Polonnaruwa', 'lk', 368460, 3293, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puttalama', 'lk', 728607, 3072, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ratnapura', 'lk', 1019513, 3275, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trincomalee', 'lk', 365845, 2727, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vavuniya', 'lk', 130424, 1967, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aali-an-Nil', 'sd', 1180975, 77773, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Bahr-al-Ahmar', 'sd', 1102703, 218887, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Buhayrat', 'sd', 555337, 40235, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jazirah', 'sd', 2743655, 23373, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qadarif', 'sd', 1341487, 75263, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wahdah', 'sd', 258458, 35956, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Nil-al-Abyad', 'sd', 1160638, 30411, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Nil-al-Azraq', 'sd', 1164990, 45844, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Samaliyah', 'sd', 811901, 348765, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bahr-al-Jabal', 'sd', 327174, 22956, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Garb-al-Istiwaiyah', 'sd', 1696306, 79319, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Garb Bahr-al-Gazal', 'sd', 1442280, 93900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Garb Darfur', 'sd', 987103, 79460, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Garb Kurdufan', 'sd', 1295336, 111373, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Janub Darfur', 'sd', 2815621, 127300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Janub Kurdufan', 'sd', 1092725, 79470, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Junqali', 'sd', 1170062, 122479, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kassala', 'sd', 1145879, 36710, 'Kassala', 'Kassala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khartoum', 'sd', 4199555, 22142, 'Khartoum', 'Khartoum');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nahr-an-Nil', 'sd', 1008497, 122123, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samal Bahr-al-Gazal', 'sd', 812338, 33558, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samal Darfur', 'sd', 1551432, 296420, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samal Kurdufan', 'sd', 2479070, 185302, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sarq-al-Istiwaiyah', 'sd', 223201, 82542, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sinnar', 'sd', 1502050, 37844, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Warab', 'sd', 966904, 31027, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brokopondo', 'sr', 8553, 7364, 'Brokopondo', 'Brokopondo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Commewijne', 'sr', 25908, 2353, 'Nieuw Amsterdam', 'Commewijne');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Coronie', 'sr', 4065, 3902, 'Totness', 'Coronie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marowijne', 'sr', 20950, 4627, 'Albina', 'Marowijne');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nickerie', 'sr', 42377, 5353, 'Nieuw Nickerie', 'Nickerie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Para', 'sr', 15577, 5393, 'Onverwacht', 'Para');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paramaribo', 'sr', 220306, 183, 'Paramaribo', 'Paramaribo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saramacca', 'sr', 14107, 3636, 'Groningen', 'Saramacca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sipaliwini', 'sr', 30203, 130567, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wanica', 'sr', 78696, 442, 'Lelydorp', 'Wanica');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jan Mayen', 'sj', 16, 377, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Svalbard', 'sj', 2265, 61229, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hhohho', 'sz', 308365, 3569, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lubombo', 'sz', 224437, 5945, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manzini', 'sz', 354153, 4070, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shiselweni', 'sz', 234982, 3779, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Blekinge', 'se', 149895, 2941, 'Karlskrona', 'Blekinge');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dalarna', 'se', 276089, 28193, 'Falun', 'Dalarna');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaevleborg', 'se', 276382, 18192, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gotland', 'se', 57810, 3140, 'Visby', 'Gotland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Halland', 'se', 286714, 5454, 'Halmstad', 'Halland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaemtland', 'se', 126977, 49443, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Joenkoeping', 'se', 330231, 9944, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalmar', 'se', 235218, 11171, 'Kalmar', 'Kalmar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kronoberg', 'se', 178255, 8458, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Norrbotten', 'se', 251365, 98911, 'Lulea', 'Norrbotten');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oerebro', 'se', 274864, 8517, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oestergoetland', 'se', 417655, 10562, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Skane', 'se', 1167591, 11027, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soedermanland', 'se', 262867, 6062, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stockholm', 'se', 1883279, 6490, 'Stockholm', 'Stockholm');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uppsala', 'se', 304331, 6989, 'Uppsala', 'Uppsala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaermland', 'se', 273634, 17586, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaesterbotten', 'se', 257290, 55401, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaesternorrland', 'se', 243429, 21678, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaestmanland', 'se', 262293, 6302, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaestra Goetaland', 'se', 1527821, 24473, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aargau', 'ch', 574172, 1403.63, 'Aarau', 'Aargau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Appenzell Inner-Rhoden', 'ch', 15499, 172.51, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Appenzell-Outer Rhoden', 'ch', 51829, 242.87, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basel-Landschaft', 'ch', 265584, 517.45, 'Liestal', 'Basel-Landschaft');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basel-Town', 'ch', 182077, 37.06, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bern', 'ch', 955659, 5960.88, 'Bern', 'Bern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fribourg', 'ch', 248952, 1670.81, 'Fribourg', 'Fribourg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Geneva', 'ch', 433977, 282.25, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Glarus', 'ch', 37372, 685.1, 'Glarus', 'Glarus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Graubuenden', 'ch', 181082, 7105.46, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jura', 'ch', 69935, 836.51, 'Delemont', 'Jura');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luzern', 'ch', 362215, 1493.4, 'Luzern', 'Luzern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neuchatel', 'ch', 168810, 803.06, 'Neuchatel', 'Neuchatel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nidwalden', 'ch', 40793, 276.12, 'Stans', 'Nidwalden');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Obwalden', 'ch', 33716, 490.5, 'Sarnen', 'Obwalden');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Gall', 'ch', 462877, 2025.51, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Schaffhausen', 'ch', 73443, 298.52, 'Schaffhausen', 'Schaffhausen');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Schwyz', 'ch', 135461, 908.33, 'Schwyz', 'Schwyz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Solothurn', 'ch', 250155, 790.67, 'Solothurn', 'Solothurn');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thurgau', 'ch', 230600, 990.98, 'Frauenfeld', 'Thurgau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ticino', 'ch', 317006, 2812.48, 'Bellinzona', 'Ticino');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uri', 'ch', 34089, 1076.58, 'Altdorf', 'Uri');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valais', 'ch', 284653, 5224.56, 'Sion', 'Valais');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaud', 'ch', 646234, 3211.79, 'Lausanne', 'Vaud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zug', 'ch', 106351, 238.79, 'Zug', 'Zug');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zurich', 'ch', 1289560, 1728.76, 'Zurich', 'Zurich');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aleppo', 'sy', 3115516, 18500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Hasakah', 'sy', 1204443, 23334, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Ladiqiyah', 'sy', 1170086, 2297, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qunaytirah', 'sy', 36144, 1861, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('ar-Raqqah', 'sy', 742595, 19616, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Suwayda', 'sy', 502461, 5550, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Damascus', 'sy', 1599599, 105, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dara', 'sy', 908287, 3730, 'Dara', 'Dara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dayr-az-Zawr', 'sy', 1460383, 33060, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamah', 'sy', 1872725, 8883, 'Hamah', 'Hamah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hims', 'sy', 1895818, 42223, 'Hims', 'Hims');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Idlib', 'sy', 1781495, 6097, 'Idlib', 'Idlib');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tartus', 'sy', 902617, 1892, 'Tartus', 'Tartus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Changhwa', 'tw', 1248845, 1074, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiayi Hsien', 'tw', 547945, 1902, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiayi Shih', 'tw', 266317, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hsinchu Hsien', 'tw', 482993, 1428, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hsinchu Shih', 'tw', 413683, 104, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hualien', 'tw', 314807, 4629, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilan', 'tw', 438164, 2137, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaohsiung Hsien', 'tw', 1297574, 2793, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaohsiung Shih', 'tw', 1512832, 154, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Keelung Shih', 'tw', 397516, 133, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kinmen', 'tw', 49410, 148, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lienkang', 'tw', 15560, 27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miaoli', 'tw', 525339, 1820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nantou', 'tw', 463429, 4106, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Penghu', 'tw', 76375, 127, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pingtung', 'tw', 850751, 2776, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taichung Hsien', 'tw', 1590286, 2051, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taichung Shih', 'tw', 1083582, 163, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tainan Hsien', 'tw', 1141645, 2016, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tainan Shih', 'tw', 734314, 176, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taipei Hsien', 'tw', 3975357, 2052, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taipei Shih', 'tw', 2498356, 272, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taitung', 'tw', 182454, 3515, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taoyuan', 'tw', 2004176, 1221, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yunlin', 'tw', 683085, 1291, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dushanbe', 'tj', 543105, 300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gorno-Badakhshan', 'tj', 225613, 63700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karotegin', 'tj', 1441133, 28400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khatlon', 'tj', 2337727, 24600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dar es Salaam', 'tz', 2791055, 1393, 'Dar es Salaam', 'Dar es Salaam');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iringa', 'tz', 1552568, 56864, 'Iringa', 'Iringa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kigoma', 'tz', 1882444, 37037, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lindi', 'tz', 816729, 66046, 'Lindi', 'Lindi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manyara', 'tz', 1148091, 45820, 'Babati', 'Manyara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mbeya', 'tz', 2195881, 60350, 'Mbeya', 'Mbeya');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mtwara', 'tz', 1168984, 16707, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mwanza', 'tz', 3173890, 19592, 'Mwanza', 'Mwanza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rukwa', 'tz', 1249389, 68635, 'Sumbawanga', 'Rukwa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shinyanga', 'tz', 3037054, 50781, 'Shinyanga', 'Shinyanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tabora', 'tz', 1869318, 76151, 'Tabora', 'Tabora');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zanzibar and Pemba', 'tz', 1060413, 854, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amnat Charoen', 'th', 386738, 3161.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ang Thong', 'th', 318583, 968.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bangkok Metropolitan Area', 'th', 5104475, 1565.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buri Ram', 'th', 1612597, 10321.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chachoengsao', 'th', 669036, 5351, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chai Nat', 'th', 336854, 2469.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chaiyaphum', 'th', 1185521, 12778.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chanthaburi', 'th', 547887, 6338, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiang Mai', 'th', 1763559, 20107.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiang Rai', 'th', 1494050, 11678.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chon Buri', 'th', 1289423, 4363, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chumphon', 'th', 511972, 6009, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalasin', 'th', 1084082, 6946.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kamphaeng Phet', 'th', 912528, 8607.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanchanaburi', 'th', 896178, 19483.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khon Kaen', 'th', 1807627, 10886, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krabi', 'th', 442240, 4708.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lampang', 'th', 823111, 12534, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lamphun', 'th', 398151, 4505.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loei', 'th', 676087, 11424.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lop Buri', 'th', 795093, 6199.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mae Hong Son', 'th', 287828, 12681.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maha Sarakham', 'th', 936780, 5291.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mukdahan', 'th', 377368, 4339.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Nayok', 'th', 263221, 2122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Pathom', 'th', 790754, 2168.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Phanom', 'th', 769859, 5512.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Ratchasima', 'th', 2604979, 20494, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Sawan', 'th', 1178742, 9597.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nakhon Si Thammarat', 'th', 1544410, 9942.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nan', 'th', 530896, 11472.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narathiwat', 'th', 751921, 4475.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nong Bua Lam Phu', 'th', 518520, 3859.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nong Khai', 'th', 939455, 7332.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nonthaburi', 'th', 1045340, 622.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pathum Thani', 'th', 767951, 1525.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pattani', 'th', 671530, 1940.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phangnga', 'th', 245236, 4170.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phatthalung', 'th', 512156, 3424.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phayao', 'th', 512957, 6335.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phetchabun', 'th', 1151324, 12668.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phetchaburi', 'th', 499811, 6225.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phichit', 'th', 614516, 4531, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phitsanulok', 'th', 971459, 10815.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phrae', 'th', 472464, 6538.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phra Nakhon Si Ayutthaya', 'th', 779300, 2556.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phuket', 'th', 319230, 543, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prachin Buri', 'th', 527152, 4762.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prachuap Khiri Khan', 'th', 551706, 6367.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ranong', 'th', 166291, 3298, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ratchaburi', 'th', 883648, 5196.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rayong', 'th', 581051, 3552, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Roi Et', 'th', 1411066, 8299.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sa Kaeo', 'th', 625008, 7195.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sakon Nakhon', 'th', 1201903, 9605.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samut Prakan', 'th', 1041844, 1004.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samut Sakhon', 'th', 424336, 872.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samut Songkhran', 'th', 204701, 416.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saraburi', 'th', 696090, 3576.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Satun', 'th', 303695, 2479, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sing Buri', 'th', 209502, 822.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Si Sa Ket', 'th', 1525535, 8840, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Songkhla', 'th', 1292287, 7393.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sukhothai', 'th', 665993, 6596.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suphan Buri', 'th', 868149, 5358, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Surat Thani', 'th', 991523, 12891.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Surin', 'th', 1491395, 8124, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tak', 'th', 540056, 16406.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trang', 'th', 612757, 4917.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trat', 'th', 234294, 2819, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ubon Ratchathani', 'th', 1939213, 15744.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Udon Thani', 'th', 1636041, 11730.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uthai Thani', 'th', 381376, 6730.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uttaradit', 'th', 511097, 7838.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yala', 'th', 524191, 4521.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yasothon', 'th', 543846, 4161.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Centre', 'tg', 501793, 13182, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kara', 'tg', 748662, 11630, 'Kara', 'Kara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maritime', 'tg', 1882313, 6396, 'Lome', 'Maritime');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plateaux', 'tg', 1536018, 16975, 'Atakpame', 'Plateaux');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savanes', 'tg', 604201, 8602, 'Dapaong', 'Savanes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atafu', 'tk', 583, 2.03, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fakaofo', 'tk', 470, 2.63, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nukunonu', 'tk', 360, 5.46, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eua', 'to', 5242, 87.44, 'Ohonua', 'Eua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haapai', 'to', 8570, 109.98, 'Pangai', 'Haapai');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niuas', 'to', 2116, 71.69, 'Hihifo', 'Niuas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tongatapu', 'to', 70319, 260.48, 'Nukualofa', 'Tongatapu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vavau', 'to', 16811, 121, 'Neiafu', 'Vavau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arima', 'tt', 34996, 11, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chaguanas', 'tt', 72158, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Couva-Tabaquite-Talparo', 'tt', 168560, 703, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diego Martin', 'tt', 111964, 149, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayaro-Rio Claro', 'tt', 31337, 853, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Penal Debe', 'tt', 87154, 237, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Point Fortin', 'tt', 18918, 23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port of Spain', 'tt', 49658, 10, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Princes Town', 'tt', 91946, 617, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Fernando', 'tt', 56379, 8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sangre Grande', 'tt', 70371, 895, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Juan-Laventville', 'tt', 160710, 232, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siparia', 'tt', 79760, 531, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tobago', 'tt', 57177, 303, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tunapuna-Piarco', 'tt', 219527, 496, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Kaf', 'tn', 284196, 4965, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Mahdiyah', 'tn', 391808, 2966, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Munastir', 'tn', 453602, 1019, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qasrayn', 'tn', 437190, 8066, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qayrawan', 'tn', 582427, 6712, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aryanah', 'tn', 412361, 498, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bajah', 'tn', 324555, 3558, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bin Arus', 'tn', 501924, 761, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Binzart', 'tn', 542091, 3685, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jundubah', 'tn', 438722, 3102, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madaniyin', 'tn', 447400, 8588, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manubah', 'tn', 345486, 1060, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nabul', 'tn', 677771, 2788, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qabis', 'tn', 346141, 7175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qafsah', 'tn', 341647, 8990, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qibili', 'tn', 148621, 22084, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Safaqis', 'tn', 869530, 7545, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sidi Bu Zayd', 'tn', 412539, 6994, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Silyanah', 'tn', 262365, 4631, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Susah', 'tn', 537838, 2621, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tatawin', 'tn', 154522, 38889, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tawzar', 'tn', 101730, 4719, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tunis', 'tn', 939564, 346, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zagwan', 'tn', 162284, 2768, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adana', 'tr', 1997380, 12788, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adiyaman', 'tr', 678395, 7614, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Afyon', 'tr', 840927, 14230, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agri', 'tr', 572465, 11376, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aksaray', 'tr', 433371, 7626, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amasya', 'tr', 364418, 5520, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ankara', 'tr', 4385932, 25706, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antalya', 'tr', 2082437, 20591, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ardahan', 'tr', 129450, 5576, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Artvin', 'tr', 181036, 7436, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aydin', 'tr', 1009763, 8007, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balikesir', 'tr', 1116652, 14292, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bartin', 'tr', 173086, 2140, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batman', 'tr', 499961, 4694, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bayburt', 'tr', 92087, 3652, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bilecik', 'tr', 201677, 4307, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bingoel', 'tr', 255863, 8125, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bitlis', 'tr', 415510, 6707, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolu', 'tr', 271651, 10037, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Burdur', 'tr', 255153, 6887, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bursa', 'tr', 2375672, 10963, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canakkale', 'tr', 476409, 9737, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cankiri', 'tr', 276876, 7388, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Corum', 'tr', 585784, 12820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Denizli', 'tr', 881417, 11868, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diyarbakir', 'tr', 1496550, 15355, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Duezce', 'tr', 332037, 1014, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Edirne', 'tr', 397685, 6276, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Elazig', 'tr', 605724, 9153, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Erzincan', 'tr', 320688, 11903, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Erzurum', 'tr', 980226, 25066, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eskisehir', 'tr', 731272, 13652, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaziantep', 'tr', 1438669, 6207, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Giresun', 'tr', 530550, 6934, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guemueshane', 'tr', 194178, 6575, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hakkari', 'tr', 270477, 7121, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hatay', 'tr', 1282430, 5403, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Icel', 'tr', 1878683, 15853, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Igdir', 'tr', 180650, 3539, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Isparta', 'tr', 551132, 8933, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Istanbul', 'tr', 11588545, 5220, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Izmir', 'tr', 3734014, 11973, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kahramanmaras', 'tr', 1055785, 14327, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karabuek', 'tr', 214524, 4074, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karaman', 'tr', 255352, 9163, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kars', 'tr', 311240, 9442, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kastamonu', 'tr', 353139, 13108, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayseri', 'tr', 1092232, 16917, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kilis', 'tr', 113942, 1338, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirikkale', 'tr', 396178, 4365, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirklareli', 'tr', 334413, 6550, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirsehir', 'tr', 249148, 6570, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kocaeli', 'tr', 1351230, 3524, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Konya', 'tr', 2452360, 38157, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuetahya', 'tr', 690433, 11875, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malatya', 'tr', 925040, 12313, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manisa', 'tr', 1299975, 13810, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mardin', 'tr', 779008, 8891, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mugla', 'tr', 796006, 13338, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mus', 'tr', 490234, 8196, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nevsehir', 'tr', 316821, 5467, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nigde', 'tr', 368584, 7312, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ordu', 'tr', 908724, 6001, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Osmaniye', 'tr', 500766, 3320, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rize', 'tr', 370579, 3920, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sakarya', 'tr', 769768, 4817, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samsun', 'tr', 1211833, 9579, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanliurfa', 'tr', 1685216, 18584, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siirt', 'tr', 272714, 5406, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sinop', 'tr', 221342, 5862, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sirnak', 'tr', 403810, 7172, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sivas', 'tr', 738854, 28488, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tekirdag', 'tr', 710828, 6218, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tokat', 'tr', 876151, 9958, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trabzon', 'tr', 1068762, 4685, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tunceli', 'tr', 92670, 7774, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Usak', 'tr', 335663, 5341, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Van', 'tr', 1009486, 19069, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yalova', 'tr', 185214, 674, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yozgat', 'tr', 730817, 14123, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zonguldak', 'tr', 592458, 3481, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ahal', 'tm', 880688, 95100, 'Annau', 'Ahal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asgabat', 'tm', 840243, 300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balkan', 'tm', 552007, 138500, 'Balkanabat', 'Balkan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dasoguz', 'tm', 1366342, 73600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lebap', 'tm', 1388432, 93800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mari', 'tm', 1536522, 86800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Badakhshan', 'af', 1062923, 44059.27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Badgis', 'af', 792143, 20590.64, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baglan', 'af', 872227, 21118.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balhz', 'af', 1866473, 17248.54, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bamiyan', 'af', 484645, 14175.35, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Farah', 'af', 470936, 48470.9, 'Farah', 'Farah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Faryab', 'af', 913858, 20292.79, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gawr', 'af', 656108, 36478.77, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gazni', 'af', 1097746, 22914.58, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Herat', 'af', 1382119, 54778.05, 'Herat', 'Herat');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hilmand', 'af', 925657, 58583.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jawzjan', 'af', 747612, 11798.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kabul', 'af', 3138232, 4461.57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kapisa', 'af', 472581, 1842.14, 'Mahmud-e Raqi', 'Kapisa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khowst', 'af', 283283, 4151.5, 'Khowst', 'Khowst');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kunar', 'af', 562405, 4941.53, 'Asadabad', 'Kunar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lagman', 'af', 651320, 3842.58, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lawgar', 'af', 317152, 3879.82, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nangarhar', 'af', 1538418, 7727.36, 'Jalalabad', 'Nangarhar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nimruz', 'af', 234084, 41005.39, 'Zaranj', 'Nimruz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuristan', 'af', 152173, 9224.96, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paktika', 'af', 476737, 19482.4, 'Sharan', 'Paktika');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paktiya', 'af', 503569, 6431.75, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Parwan', 'af', 786147, 9584.44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qandahar', 'af', 1665451, 54021.96, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qunduz', 'af', 718819, 8039.67, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samangan', 'af', 599326, 11261.9, 'Aybak', 'Samangan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sar-e Pul', 'af', 727269, 15999.22, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tahzar', 'af', 748211, 12333.03, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uruzgan', 'af', 302236, 30784.49, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wardag', 'af', 342048, 8938.13, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zabul', 'af', 444583, 17343.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berat', 'al', 128410, 915, 'Berat', 'Berat');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bulqize', 'al', 42985, 718, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delvine', 'al', 10859, 367, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Devoll', 'al', 34744, 429, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dibre', 'al', 86144, 761, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Durres', 'al', 182988, 455, 'Durres', 'Durres');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Elbasan', 'al', 224974, 1290, 'Elbasan', 'Elbasan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fier', 'al', 200154, 850, 'Fier', 'Fier');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gjirokaster', 'al', 55991, 1137, 'Gjirokaster', 'Gjirokaster');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gramsh', 'al', 35723, 695, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Has', 'al', 19842, 374, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kavaje', 'al', 78415, 393, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kolonje', 'al', 17179, 805, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Korce', 'al', 143499, 1752, 'Korce', 'Korce');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kruje', 'al', 64357, 372, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kucove', 'al', 35571, 112, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kukes', 'al', 64054, 956, 'Kukes', 'Kukes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kurbin', 'al', 54519, 235, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lezhe', 'al', 68218, 479, 'Lezhe', 'Lezhe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Librazhd', 'al', 72520, 1102, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lushnje', 'al', 144351, 712, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mallakaster', 'al', 39881, 325, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malsi e Madhe', 'al', 36770, 897, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mat', 'al', 61906, 1028, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mirdite', 'al', 37055, 867, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peqin', 'al', 32920, 191, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Permet', 'al', 25837, 929, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pogradec', 'al', 70900, 725, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puke', 'al', 34454, 1034, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sarande', 'al', 35235, 730, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shkoder', 'al', 185794, 1631, 'Shkoder', 'Shkoder');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Skrapar', 'al', 29874, 775, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tepelene', 'al', 32465, 817, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tirana', 'al', 523150, 1238, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tropoje', 'al', 28154, 1043, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vlore', 'al', 147267, 1609, 'Vlore', 'Vlore');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adrar', 'dz', 369825, 443782, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Agwat', 'dz', 401914, 26941, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Bayad', 'dz', 270662, 88984, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Buirah', 'dz', 663946, 4722, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Algiers', 'dz', 3131443, 865, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jilfah', 'dz', 1148970, 33236, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Masilah', 'dz', 928550, 17891, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wad', 'dz', 617060, 69434, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Naamah', 'dz', 198682, 33852, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Annabah', 'dz', 597816, 1410, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Salif', 'dz', 988394, 4440, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('at-Tarif', 'dz', 391561, 2968, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ayn ad-Dafla', 'dz', 711367, 4885, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ayn Timusanat', 'dz', 347986, 2432, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bassar', 'dz', 251657, 181020, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batnah', 'dz', 1070892, 11855, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bijayah', 'dz', 909831, 3404, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Biskrah', 'dz', 678262, 21094, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Blidah', 'dz', 801917, 1102, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bumardas', 'dz', 614419, 1486, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Burj Bu Arririj', 'dz', 626335, 3676, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Constantine', 'dz', 880032, 2204, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galizan', 'dz', 670644, 5208, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gardayah', 'dz', 342689, 78107, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hzansalah', 'dz', 411023, 9624, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilizi', 'dz', 44893, 179011, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jijili', 'dz', 616556, 2622, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Medea', 'dz', 732422, 8330, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Milah', 'dz', 770930, 3436, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mostaghanem', 'dz', 685638, 2165, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Muaskar', 'dz', 721289, 5699, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qalmah', 'dz', 465949, 3842, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saidah', 'dz', 297679, 7014, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sakikdah', 'dz', 866701, 4197, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Satif', 'dz', 1481161, 6526, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sidi balabbas', 'dz', 561433, 8306, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suq Ahras', 'dz', 406794, 4029, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tamanrasat', 'dz', 192684, 619360, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tibazah', 'dz', 476577, 1700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tibissah', 'dz', 626078, 14207, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tilimsan', 'dz', 899504, 9408, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tinduf', 'dz', 45675, 182838, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tisamsilt', 'dz', 270726, 3208, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tiyarat', 'dz', 800689, 19556, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tizi Wazu', 'dz', 1160372, 2592, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umm-al-Bawagi', 'dz', 602533, 6712, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wahran', 'dz', 1265604, 2145, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Warqla', 'dz', 539974, 230216, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'as', 22191, 90, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manua', 'as', 1205, 49, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rose Island', 'as', 0, 1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Swains Island', 'as', 50, 5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'as', 38851, 52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andorra la Vella', 'ad', 20430, 12, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canillo', 'ad', 3292, 121, 'Canillo', 'Canillo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Encamp', 'ad', 11224, 74, 'Encamp', 'Encamp');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Escaldes-Engordany', 'ad', 15854, 47, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Massana', 'ad', 7211, 61, 'La Massana', 'La Massana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ordino', 'ad', 2553, 89, 'Ordino', 'Ordino');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sant Julia de Loria', 'ad', 8020, 60, 'Sant Julia de Loria', 'Sant Julia de Loria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bengo', 'ao', 192470, 31371, 'Caxito', 'Bengo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Benguela', 'ao', 720959, 31788, 'Benguela', 'Benguela');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bie', 'ao', 1336542, 70314, 'Kuito', 'Bie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cabinda', 'ao', 214411, 7270, 'Cabinda', 'Cabinda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cunene', 'ao', 241960, 89342, 'Ondjiva', 'Cunene');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huambo', 'ao', 1802826, 34274, 'Huambo', 'Huambo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huila', 'ao', 948403, 75002, 'Lubango', 'Huila');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuando-Kubango', 'ao', 130002, 199049, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kwanza Norte', 'ao', 402361, 24190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kwanza Sul', 'ao', 653127, 55660, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luanda', 'ao', 2776125, 2418, 'Luanda', 'Luanda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lunda Norte', 'ao', 303524, 102783, 'Lucapa', 'Lunda Norte');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lunda Sul', 'ao', 146052, 45649, 'Saurimo', 'Lunda Sul');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malanje', 'ao', 1058413, 97602, 'Malanje', 'Malanje');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moxico', 'ao', 368431, 223023, 'Luena', 'Moxico');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namibe', 'ao', 164717, 58137, 'Namibe', 'Namibe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uige', 'ao', 1080908, 58698, 'Uige', 'Uige');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zaire', 'ao', 377364, 40130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barbuda', 'ag', 1556, 160.5, 'Codrington', 'Barbuda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Redonda', 'ag', 0, 1.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'ag', 5393, 24, 'Parham', 'Saint Peter');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'ag', 42721, 74, 'Saint Johns', 'Saint John');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mary', 'ag', 6360, 57, 'Bolands', 'Saint Mary');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Paul', 'ag', 7325, 48, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter', 'ag', 4321, 33, 'Parham', 'Saint Peter');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Philip', 'ag', 3599, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buenos Aires', 'ar', 14181180, 307804, 'La Plata', 'Buenos Aires');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Catamarca', 'ar', 363918, 99818, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chaco', 'ar', 1041101, 99633, 'Resistencia', 'Chaco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chubut', 'ar', 437894, 224686, 'Rawson', 'Chubut');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cordoba', 'ar', 3177715, 168766, 'Cordoba', 'Cordoba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Corrientes', 'ar', 984192, 88199, 'Corrientes', 'Corrientes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Federal', 'ar', 2703758, 200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Entre Rios', 'ar', 1208138, 76216, 'Parana', 'Entre Rios');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Formosa', 'ar', 524524, 72066, 'Formosa', 'Formosa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jujuy', 'ar', 652426, 53219, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Pampa', 'ar', 315312, 143440, 'Santa Rosa', 'La Pampa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Rioja', 'ar', 320111, 92331, 'La Rioja', 'La Rioja');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mendoza', 'ar', 1643905, 150839, 'Mendoza', 'Mendoza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Misiones', 'ar', 1041235, 29801, 'Posadas', 'Misiones');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neuquen', 'ar', 515238, 94078, 'Neuquen', 'Neuquen');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio Negro', 'ar', 573934, 203013, 'Viedma', 'Rio Negro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salta', 'ar', 1168930, 154775, 'Salta', 'Salta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Juan', 'ar', 654027, 86137, 'San Juan', 'San Juan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Luis', 'ar', 403057, 76748, 'San Luis', 'San Luis');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Cruz', 'ar', 213303, 243943, 'Rio Gallegos', 'Santa Cruz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Fe', 'ar', 3073821, 133007, 'Santa Fe', 'Santa Fe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santiago del Estero', 'ar', 854089, 135254, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tierra del Fuego', 'ar', 118765, 20912, 'Ushuaia', 'Tierra del Fuego');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tucuman', 'ar', 1413981, 22524, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aragatsotn', 'am', 125367, 2755, 'Ashtarak', 'Aragatsotn');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ararat', 'am', 250842, 2003, 'Artashat', 'Ararat');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Armavir', 'am', 254015, 1241, 'Armavir', 'Armavir');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kotayk', 'am', 239596, 2100, 'Hrazdan', 'Kotayk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lori', 'am', 251523, 3791, 'Vanadzor', 'Lori');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Syunik', 'am', 133094, 4505, 'Kapan', 'Syunik');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tavush', 'am', 121083, 3120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vayots Dzor', 'am', 52846, 2406, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Turk', 'tc', 5967, 29.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Middle Caicos', 'tc', 437, 135.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Caicos', 'tc', 2075, 116.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Providenciales and West Caicos', 'tc', 8851, 133.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salt Cay', 'tc', 339, 7.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Caicos and East Caicos', 'tc', 1939, 75.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Funafuti', 'tv', 4749, 2.79, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nanumanga', 'tv', 570, 2.78, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nanumea', 'tv', 628, 3.87, 'Lolua', 'Nanumea');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niulakita', 'tv', 35, .42, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nui', 'tv', 534, 2.83, 'Tanrake', 'Nui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaitupu', 'tv', 1636, 5.6, 'Asau', 'Vaitupu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'ug', 7174237, 37489, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'ug', 6900400, 27957, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'ug', 5992224, 82099, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'ug', 6920839, 49599, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cherkaska', 'ua', 1350801, 20900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chernihivska', 'ua', 1198956, 31865, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chernivetska', 'ua', 888503, 8097, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dnipropetrovska', 'ua', 3434911, 31974, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Donetsk', 'ua', 4661063, 26517, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ivano-Frankivska', 'ua', 1357339, 13928, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kharkivska', 'ua', 2805850, 31415, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khersonska', 'ua', 1131426, 28461, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khmelnytska', 'ua', 1377573, 20645, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kiev', 'ua', 2514227, 839, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirovohradska', 'ua', 1090921, 24588, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krym', 'ua', 1958114, 26081, 'Simferopol', 'Krym');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kyyivska', 'ua', 1759926, 28131, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luhanska', 'ua', 2451501, 26684, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lvivska', 'ua', 2528878, 21833, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mykolayivska', 'ua', 1217715, 24598, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Odeska', 'ua', 2377248, 33310, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Poltavska', 'ua', 1569479, 28748, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rivnenska', 'ua', 1129676, 20047, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sevastopol', 'ua', 365381, 864, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumska', 'ua', 1251416, 23834, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ternopilska', 'ua', 1099936, 13823, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vinnytska', 'ua', 1706467, 26513, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Volynska', 'ua', 1021253, 20144, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zakarpatska', 'ua', 1211477, 12777, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zaporizka', 'ua', 1857437, 27180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zhytomyrska', 'ua', 1337798, 29832, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abu Dhabi', 'ae', 1395890, 67340, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ajman', 'ae', 234908, 259, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Fujayrah', 'ae', 113318, 1166, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dubai', 'ae', 1141959, 3885, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ras al Khaymah', 'ae', 187538, 1683, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sharjah', 'ae', 620187, 2590, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umm al-Qaywayn', 'ae', 56254, 777, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('England', 'uk', 50233273, 130439, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Ireland', 'uk', 1716942, 14120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Scotland', 'uk', 5003909, 78783, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wales', 'uk', 2935283, 20798, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alabama', 'us', 4530315, 131443, 'Montgomery', 'Alabama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alaska', 'us', 660632, 1477268, 'Juneau', 'Alaska');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arkansas', 'us', 2757631, 134887, 'Little Rock', 'Arkansas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colorado', 'us', 4678630, 268658, 'Denver', 'Colorado');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delaware', 'us', 838549, 5133, 'Dover', 'Delaware');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Georgia', 'us', 8975843, 152577, 'Atlanta', 'Georgia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Illinois', 'us', 12772889, 144123, 'Springfield', 'Illinois');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Indiana', 'us', 6265934, 92903, 'Indianapolis', 'Indiana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iowa', 'us', 2955010, 144716, 'Des Moines', 'Iowa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maine', 'us', 1325518, 79931, 'Augusta', 'Maine');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maryland', 'us', 5624246, 25316, 'Annapolis', 'Maryland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Michigan', 'us', 10147097, 150544, 'Lansing', 'Michigan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Minnesota', 'us', 5141954, 206207, 'Saint Paul', 'Minnesota');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montana', 'us', 930698, 376991, 'Helena', 'Montana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nevada', 'us', 2399532, 284613, 'Carson City', 'Nevada');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Hampshire', 'us', 1316217, 23292, 'Concord', 'New Hampshire');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New York', 'us', 19274243, 122310, 'Albany', 'New York');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Dakota', 'us', 630529, 178695, 'Bismarck', 'North Dakota');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ohio', 'us', 11467124, 106067, 'Columbus', 'Ohio');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rhode Island', 'us', 1090291, 2707, 'Providence', 'Rhode Island');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Carolina', 'us', 4229842, 77988, 'Columbia', 'South Carolina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Texas', 'us', 22875686, 678358, 'Austin', 'Texas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Utah', 'us', 2427340, 212816, 'Salt Lake City', 'Utah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Washington', 'us', 6271775, 172447, 'Olympia', 'Washington');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wisconsin', 'us', 5535168, 141712, 'Madison', 'Wisconsin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canelones', 'uy', 547557, 4536, 'Canelones', 'Canelones');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colonia', 'uy', 128995, 6106, 'Colonia', 'Colonia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Flores', 'uy', 25499, 5144, 'Trinidad', 'Flores');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('FLorida', 'uy', 69307, 10417, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montevideo', 'uy', 1393152, 530, 'Montevideo', 'Montevideo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio Negro', 'uy', 56196, 9282, 'Fray Bentos', 'Rio Negro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rocha', 'uy', 73214, 10551, 'Rocha', 'Rocha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Jose', 'uy', 109638, 4992, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soriano', 'uy', 85102, 9008, 'Mercedes', 'Soriano');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andijon', 'uz', 2280010, 4200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buhoro', 'uz', 1536424, 39400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cizah', 'uz', 1033111, 20500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fargona', 'uz', 2735975, 7100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Horazm', 'uz', 1411415, 6300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaskadarya', 'uz', 2337372, 28400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Korakalpogiston', 'uz', 1635660, 164900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namangan', 'uz', 2065185, 7900, 'Namangan', 'Namangan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Navoi', 'uz', 880578, 110800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samarkand', 'uz', 2726180, 16400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sirdare', 'uz', 652732, 5100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Surhondar', 'uz', 1882469, 20800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tashkent', 'uz', 4837432, 15600, 'Tashkent', 'Tashkent');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Penama', 'vu', 29286, 1198, 'Longana', 'Penama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shefa', 'vu', 63491, 1455, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tafea', 'vu', 33459, 1628, 'Isangel', 'Tafea');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anzoategui', 've', 1358327, 43300, 'Barcelona', 'Anzoategui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aragua', 've', 1566938, 7014, 'Maracay', 'Aragua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carabobo', 've', 2115679, 4650, 'Valencia', 'Carabobo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cojedes', 've', 280819, 14800, 'San Carlos', 'Cojedes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dependencias Federales', 've', 1860, 120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Capital', 've', 1815681, 433, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Falcon', 've', 818503, 24800, 'Coro', 'Falcon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guarico', 've', 675811, 64986, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Merida', 've', 765621, 11300, 'Merida', 'Merida');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monagas', 've', 805365, 28900, 'Maturin', 'Monagas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nueva Esparta', 've', 416762, 1150, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sucre', 've', 819496, 11800, 'Cumana', 'Sucre');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tachira', 've', 1055157, 11100, 'San Cristobal', 'Tachira');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trujillo', 've', 644639, 7400, 'Trujillo', 'Trujillo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vargas', 've', 301741, 1497, 'La Guaira', 'Vargas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yaracuy', 've', 540576, 7100, 'San Felipe', 'Yaracuy');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zulia', 've', 3265269, 63100, 'Maracaibo', 'Zulia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dong Bang Song Cuu Long', 'vn', 17512423, 39554, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dong Bang Song Hong', 'vn', 16065108, 12521, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dong Nam Bo', 'vn', 11031187, 23463, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Duyen Hai Mien Trung', 'vn', 8768550, 45238, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khu Bon Cu', 'vn', 10862573, 51232, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mien Nui Va Trung Du', 'vn', 14206716, 104801, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thai Nguyen', 'vn', 4405414, 55569, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Croix', 'vi', 54470, 212, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'vi', 4621, 52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Thomas', 'vi', 52608, 83, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alo', 'wf', 2998, 85, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hahake', 'wf', 4112, 57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hihifo', 'wf', 2439, 48, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mua', 'wf', 3705, 54, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sigave', 'wf', 1894, 30, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Ayun', 'eh', 195919, 33000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Samarah', 'eh', 67215, 58000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bu Jaydur', 'eh', 21443, 39000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wad-ad-Dahab', 'eh', 36135, 136000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abyan', 'ye', 494838, 24131, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aden', 'ye', 670848, 7099, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Bayda', 'ye', 601207, 10711, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Hudaydah', 'ye', 2085637, 16646, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Jawf', 'ye', 201420, 13175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Mahrah', 'ye', 133870, 98249, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Mahwit', 'ye', 479053, 2501, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amanah al-Asmah', 'ye', 1937451, 247, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Damar', 'ye', 1247132, 8745, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hadramaut', 'ye', 1035633, 148178, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hajjah', 'ye', 1504762, 10677, 'Hajjah', 'Hajjah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ibb', 'ye', 2334657, 7632, 'Ibb', 'Ibb');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lahij', 'ye', 752085, 14836, 'Lahij', 'Lahij');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marib', 'ye', 217603, 13466, 'Marib', 'Marib');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabwah', 'ye', 446421, 78995, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sadah', 'ye', 575425, 29617, 'Sadah', 'Sadah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sana', 'ye', 2268079, 28977, 'Sana', 'Amanah al-Asmah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Taizz', 'ye', 2613888, 14194, 'Taizz', 'Taizz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'zm', 1145813, 94395, 'Kabwe', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Copperbelt', 'zm', 1623823, 31328, 'Ndola', 'Copperbelt');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'zm', 1474710, 69106, 'Chipata', 'Eastern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luapala', 'zm', 889143, 50567, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lusaka', 'zm', 1613226, 21896, 'Lusaka', 'Lusaka');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'zm', 1436702, 147826, 'Kasama', 'Northern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North-Western', 'zm', 663112, 125827, 'Solwezi', 'North-Western');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern', 'zm', 1341680, 85283, 'Livingstone', 'Southern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'zm', 826863, 126386, 'Mongu', 'Western');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bulawayo', 'zw', 897249, 479, 'Bulawayo', 'Bulawayo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Harare', 'zw', 2609012, 872, 'Harare', 'Harare');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manicaland', 'zw', 2039909, 36459, 'Mutare', 'Manicaland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mashonaland Central', 'zw', 1263328, 28374, 'Bindura', 'Mashonaland Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mashonaland East', 'zw', 1564503, 32230, 'Marondera', 'Mashonaland East');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mashonaland West', 'zw', 1352077, 57441, 'Chinhoyi', 'Mashonaland West');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Masvingo', 'zw', 1310571, 56566, 'Masvingo', 'Masvingo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matabeleland North', 'zw', 823330, 75025, 'Bulawayo', 'Bulawayo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matabeleland South', 'zw', 605470, 54172, 'Gwanda', 'Matabeleland South');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Midlands', 'zw', 1409161, 49166, 'Gweru', 'Midlands');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Australian Capital Territory', 'au', 324025, 2452, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New South Wales', 'au', 6819565, 801428, 'Sydney', 'New South Wales');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Territory', 'au', 197603, 1346200, 'Darwin', 'Northern Territory');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Queensland', 'au', 4039272, 1727200, 'Brisbane', 'Queensland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Australia', 'au', 1545939, 984377, 'Adelaide', 'South Australia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tasmania', 'au', 485898, 67800, 'Hobart', 'Tasmania');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Victoria', 'au', 5064335, 227600, 'Melbourne', 'Victoria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western Australia', 'au', 2030627, 2525500, 'Perth', 'Western Australia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Burgenland', 'at', 281022, 3965, 'Eisenstadt', 'Burgenland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaernten', 'at', 565762, 9533, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niederoesterreich', 'at', 1576622, 19174, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oberoesterreich', 'at', 1400851, 11980, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salzburg', 'at', 533083, 7154, 'Salzburg', 'Salzburg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Steiermark', 'at', 1185175, 16388, 'Graz', 'Steiermark');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tirol', 'at', 692215, 12648, 'Innsbruck', 'Tirol');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vorarlberg', 'at', 359737, 2601, 'Bregenz', 'Vorarlberg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wien', 'at', 1569315, 415, 'Vienna', 'Wien');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abseron', 'az', 92050, 1360, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agcabedi', 'az', 113355, 1760, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agdam', 'az', 165407, 1150, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agdas', 'az', 93896, 1050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agstafa', 'az', 76302, 1500, 'Agstafa', 'Agstafa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agsu', 'az', 66646, 1020, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Astara', 'az', 90709, 620, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Babek', 'az', 76101, 1170, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baki', 'az', 1850117, 2130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Balaken', 'az', 86585, 920, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berde', 'az', 135985, 960, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beyleqan', 'az', 81532, 1130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bilesuvar', 'az', 80814, 1400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cebrayil', 'az', 65367, 1050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Celilabad', 'az', 181460, 1440, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Culfa', 'az', 38554, 1000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Daskesen', 'az', 31844, 1050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Deveci', 'az', 48660, 1090, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eli Bayramli', 'az', 72395, 30, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fuezuli', 'az', 144443, 1390, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gedebey', 'az', 89927, 1290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gence', 'az', 303771, 110, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Goranboy', 'az', 90554, 1790, 'Goranboy', 'Goranboy');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Goeycay', 'az', 105323, 740, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haciqabul', 'az', 61016, 1640, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Imisli', 'az', 109061, 1820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ismayilli', 'az', 76185, 2060, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kelbecer', 'az', 72131, 3050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuerdemir', 'az', 98865, 1630, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lacin', 'az', 68034, 1840, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lenkeran', 'az', 197122, 1540, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lerik', 'az', 69736, 1080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Masalli', 'az', 183531, 720, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mingecevir', 'az', 95454, 130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Naftalan', 'az', 7403, 2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Naxcivan', 'az', 64754, 130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neftcala', 'az', 75356, 1450, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oguz', 'az', 38915, 1220, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ordubad', 'az', 42638, 970, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qax', 'az', 53246, 1490, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qazax', 'az', 84013, 700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qebele', 'az', 89438, 1550, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qobustan', 'az', 37224, 1370, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quba', 'az', 143046, 2580, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qubadli', 'az', 35067, 800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qusar', 'az', 84646, 1540, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saatli', 'az', 87031, 1180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sabirabad', 'az', 143514, 1470, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sahbuz', 'az', 21388, 920, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salyan', 'az', 117170, 1790, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samaxi', 'az', 85795, 1610, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samux', 'az', 50787, 1450, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sederek', 'az', 12972, 150, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Seki', 'az', 164405, 2430, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Semkir', 'az', 180742, 1660, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Serur', 'az', 116475, 1160, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siyezen', 'az', 35677, 700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumqayit', 'az', 292577, 80, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Susa', 'az', 25993, 290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Terter', 'az', 95085, 960, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ucar', 'az', 74067, 850, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xacmaz', 'az', 152359, 1050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xankendi', 'az', 54701, 8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xanlar', 'az', 54861, 1030, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xizi', 'az', 13822, 1850, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xocali', 'az', 24787, 940, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xocavend', 'az', 40560, 1460, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yardimli', 'az', 54575, 670, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yevlax', 'az', 112061, 1540, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zaqatala', 'az', 111418, 1350, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zengilan', 'az', 36990, 710, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zerdab', 'az', 49368, 860, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abaco', 'bs', 14816, 1681, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Acklins Island', 'bs', 435, 389, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andros', 'bs', 7380, 5957, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berry Islands', 'bs', 742, 31, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Biminis', 'bs', 1736, 23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cat Island', 'bs', 1606, 388, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Crooked Island', 'bs', 342, 261, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eleuthera', 'bs', 8545, 498, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Exuma and Cays', 'bs', 3539, 290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Bahama', 'bs', 49566, 1373, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Harbour Island', 'bs', 1751, 4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inagua Islands', 'bs', 951, 1671, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Long Island', 'bs', 2978, 448, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayaguana', 'bs', 251, 285, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Providence', 'bs', 228329, 207, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ragged Island', 'bs', 70, 23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rum Cay', 'bs', 96, 78, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Salvador', 'bs', 1294, 163, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Spanish Wells', 'bs', 1631, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Garbiyah', 'bh', 27901, 156.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Hidd', 'bh', 12797, 6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Janubiyah', 'bh', 4644, 50.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Muharraq', 'bh', 98117, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wusta', 'bh', 57878, 35.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('ar-Rifaa', 'bh', 94762, 291.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Samaliyah', 'bh', 47957, 36.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Isa', 'bh', 38089, 12.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jidhafs', 'bh', 55300, 21.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madinat Hamad', 'bh', 65467, 13.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manama', 'bh', 157368, 25.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sitrah', 'bh', 47077, 28.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bagar Hat', 'bd', 1607063, 3256, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bandarban', 'bd', 329265, 4479, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barguna', 'bd', 895852, 1555, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barisal', 'bd', 2467443, 2192, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bhola', 'bd', 1826227, 3353, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bogora', 'bd', 3225257, 2902, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brahman Bariya', 'bd', 2531192, 1879, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chandpur', 'bd', 2351687, 1672, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chattagam', 'bd', 7236072, 4866, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chuadanga', 'bd', 1103149, 1148, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dhaka', 'bd', 10204855, 1439, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dinajpur', 'bd', 2860955, 3449, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Faridpur', 'bd', 1878408, 2065, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Feni', 'bd', 1275199, 1032, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaybanda', 'bd', 2261538, 2179, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gazipur', 'bd', 2287065, 1798, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gopalganj', 'bd', 1206330, 1465, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Habiganj', 'bd', 1911389, 2566, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaipur Hat', 'bd', 907203, 966, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jamalpur', 'bd', 2260908, 2068, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jessor', 'bd', 2675186, 2949, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jhalakati', 'bd', 733893, 708, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jhanaydah', 'bd', 1693450, 1937, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khagrachhari', 'bd', 632639, 2596, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khulna', 'bd', 2543419, 4746, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kishorganj', 'bd', 2715442, 2573, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koks Bazar', 'bd', 1962488, 2247, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Komilla', 'bd', 4963675, 3071, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kurigram', 'bd', 1918903, 2248, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kushtiya', 'bd', 1867662, 1601, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lakshmipur', 'bd', 1594282, 1552, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lalmanir Hat', 'bd', 1184348, 1217, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madaripur', 'bd', 1209900, 1148, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magura', 'bd', 878818, 631, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maimansingh', 'bd', 4816615, 4399, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manikganj', 'bd', 1366517, 1394, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maulvi Bazar', 'bd', 1752415, 2674, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meherpur', 'bd', 639740, 719, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Munshiganj', 'bd', 1388608, 955, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Naral', 'bd', 728456, 973, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narayanganj', 'bd', 2392419, 699, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narsingdi', 'bd', 2068197, 892, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nator', 'bd', 1629148, 1892, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Naugaon', 'bd', 2555190, 3480, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nawabganj', 'bd', 1576738, 1672, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Netrakona', 'bd', 2101727, 2744, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nilphamari', 'bd', 1689505, 1643, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noakhali', 'bd', 2741746, 3093, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pabna', 'bd', 2324712, 2388, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Panchagarh', 'bd', 908750, 1390, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Patuakhali', 'bd', 1571817, 2760, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pirojpur', 'bd', 1195411, 1283, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rajbari', 'bd', 1021323, 1093, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rajshahi', 'bd', 2500626, 2426, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rangamati', 'bd', 568138, 5341, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rangpur', 'bd', 2780662, 2300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Satkhira', 'bd', 2018570, 3748, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shariatpur', 'bd', 1142774, 1019, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sherpur', 'bd', 1340383, 1349, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Silhat', 'bd', 2829067, 3312, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sirajganj', 'bd', 2994052, 2464, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sunamganj', 'bd', 2142950, 3766, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tangayal', 'bd', 3485938, 3381, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thakurgaon', 'bd', 1318811, 1813, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Christ Church', 'bb', 48119, 57, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'bb', 6436, 36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'bb', 18287, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint James', 'bb', 21454, 31, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'bb', 10421, 34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Joseph', 'bb', 7764, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Lucy', 'bb', 9706, 36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Michael', 'bb', 99609, 39, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter', 'bb', 11544, 34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Philip', 'bb', 20944, 60, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Thomas', 'bb', 11850, 34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brest', 'by', 1456779, 32300, 'Brest', 'Brest');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Homjel', 'by', 1472038, 40400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hrodna', 'by', 1142759, 25000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mahiljow', 'by', 1162955, 29000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Minskaja Voblasts', 'by', 1456250, 38300, 'Minsk', 'Minsk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vicebsk', 'by', 1322121, 40100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antwerp', 'be', 1677574, 2867, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brabant Wallon', 'be', 363442, 1091, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brussels', 'be', 1019022, 161, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('East Flanders', 'be', 1376407, 2982, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Flemish Brabant', 'be', 1037334, 2106, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hainaut', 'be', 1282435, 3787, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liege', 'be', 1028763, 3862, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limburg', 'be', 809997, 2422, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luxemburg', 'be', 255945, 4441, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namur', 'be', 455400, 3665, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('West Flanders', 'be', 1136693, 3134, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Belize', 'bz', 87589, 4307, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cayo', 'bz', 66565, 5196, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Corozal', 'bz', 35417, 1860, 'Corozal', 'Corozal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orange Walk', 'bz', 44853, 4636, 'Orange Walk', 'Orange Walk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stann Creek', 'bz', 29882, 2554, 'Dangriga', 'Stann Creek');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Toledo', 'bz', 27598, 4413, 'Punta Gorda', 'Toledo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alibori', 'bj', 576251, 25683, 'Kandi', 'Alibori');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atacora', 'bj', 586734, 20459, 'Natitingou', 'Atacora');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atlantique', 'bj', 896899, 3233, 'Ouidah', 'Atlantique');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Borgou', 'bj', 802501, 25310, 'Parakou', 'Borgou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Collines', 'bj', 602066, 13561, 'Savalou', 'Collines');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Couffo', 'bj', 560182, 2404, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Donga', 'bj', 384152, 10691, 'Djougou', 'Donga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Littoral', 'bj', 690584, 79, 'Cotonou', 'Littoral');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mono', 'bj', 380080, 1396, 'Lokossa', 'Mono');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oueme', 'bj', 773421, 2835, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plateau', 'bj', 435624, 1865, 'Sakete', 'Plateau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zou', 'bj', 628684, 5106, 'Abomey', 'Zou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Devonshire', 'bm', 7238, 4.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamilton', 'bm', 902, .7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamilton Parish', 'bm', 5584, 5.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paget', 'bm', 5179, 5.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pembroke', 'bm', 10249, 4.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'bm', 1802, 1.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Georges', 'bm', 4128, 7.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sandys', 'bm', 7723, 6.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Smiths', 'bm', 5852, 4.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southampton', 'bm', 6260, 5.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Warwick', 'bm', 8932, 5.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bumthang', 'bt', 35039, 3189, 'Jakar', 'Bumthang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chhukha', 'bt', 149297, 1995, 'Chhukha', 'Chhukha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chirang', 'bt', 160447, 1142, 'Damphu', 'Chirang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Daga', 'bt', 42560, 1232, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Geylegphug', 'bt', 173221, 2178, 'Geylegphug', 'Geylegphug');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ha', 'bt', 26346, 1998, 'Ha', 'Ha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lhuntshi', 'bt', 56751, 3319, 'Lhuntshi', 'Lhuntshi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mongar', 'bt', 109592, 2077, 'Mongar', 'Mongar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pemagatsel', 'bt', 53952, 640, 'Pemagatsel', 'Pemagatsel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Punakha', 'bt', 61146, 5652, 'Punakha', 'Punakha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rinpung', 'bt', 61146, 1897, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samchi', 'bt', 213219, 1816, 'Samchi', 'Samchi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samdrup Jongkhar', 'bt', 110860, 2496, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shemgang', 'bt', 66515, 2762, 'Shemgang', 'Shemgang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tashigang', 'bt', 260925, 5003, 'Tashigang', 'Tashigang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Timphu', 'bt', 99281, 2102, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tongsa', 'bt', 43959, 2144, 'Tongsa', 'Tongsa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wangdiphodrang', 'bt', 73286, 5031, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beni', 'bo', 405186, 213564, 'Trinidad', 'Beni');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chuquisaca', 'bo', 555469, 51524, 'Sucre', 'Chuquisaca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cochabamba', 'bo', 1607977, 55631, 'Cochabamba', 'Cochabamba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Paz', 'bo', 2522099, 133985, 'La Paz', 'La Paz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oruro', 'bo', 408502, 53588, 'Oruro', 'Oruro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pando', 'bo', 57748, 63827, 'Cobija', 'Pando');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Potosi', 'bo', 721327, 118218, 'Potosi', 'Potosi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Cruz', 'bo', 2360896, 370621, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarija', 'bo', 434652, 37623, 'Tarija', 'Tarija');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Federacija Bosna i Hercegovina', 'ba', 2930969, 26076, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Republika Srpska', 'ba', 1521907, 25053, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bobonong', 'bw', 72103, 14242, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boteti', 'bw', 53329, 33806, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chobe', 'bw', 19908, 20800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Francistown', 'bw', 89979, 79, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaborone', 'bw', 208411, 169, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ghanzi', 'bw', 36675, 117910, 'Ghanzi', 'Ghanzi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jwaneng', 'bw', 16854, 100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kgalagadi North', 'bw', 18198, 72400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kgalagadi South', 'bw', 28427, 32800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kgatleng', 'bw', 79666, 7960, 'Mochudi', 'Kgatleng');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kweneng', 'bw', 255118, 31100, 'Molepolole', 'Kweneng');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lobatse', 'bw', 30883, 42, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mahalapye', 'bw', 114594, 16507, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngamiland', 'bw', 81979, 86400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngwaketse', 'bw', 179888, 28470, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North East', 'bw', 51377, 5120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Okavango', 'bw', 55034, 22730, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orapa', 'bw', 9190, 17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Selibe Phikwe', 'bw', 53727, 50, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Serowe-Palapye', 'bw', 161763, 31381, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South East', 'bw', 67922, 1780, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sowa', 'bw', 3138, 159, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tutume', 'bw', 132335, 46140, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Acre', 'br', 632097, 153150, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alagoas', 'br', 2984303, 27933, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amapa', 'br', 581338, 143454, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amazonas', 'br', 3181861, 1577820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bahia', 'br', 13667542, 567295, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ceara', 'br', 7989490, 146348, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Federal', 'br', 2292559, 5822, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Espirito Santo', 'br', 3360321, 46184, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Goias', 'br', 5521524, 341290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maranhao', 'br', 6031345, 333366, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mato Grosso', 'br', 2763096, 906807, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mato Grosso do Sul', 'br', 2233379, 358159, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Minas Gerais', 'br', 19018848, 588384, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Para', 'br', 6851163, 1253165, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paraiba', 'br', 3567840, 56585, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Parana', 'br', 10130436, 199709, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pernambuco', 'br', 8327734, 98938, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Piaui', 'br', 2978177, 252378, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio de Janeiro', 'br', 15220006, 43910, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio Grande do Norte', 'br', 2967615, 53307, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rio Grande do Sul', 'br', 10723745, 282062, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rondonia', 'br', 1515936, 238513, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Roraima', 'br', 385333, 225116, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Catarina', 'br', 5793031, 95443, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sao Paulo', 'br', 39883551, 248809, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sergipe', 'br', 1940093, 22050, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tocantins', 'br', 1281282, 278421, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anegada', 'vg', 194, 38.6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jost van Dyke', 'vg', 180, 8.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Other Islands', 'vg', 258, 23.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tortola', 'vg', 17652, 59.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Virgin Gorda', 'vg', 3289, 21.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Belait', 'bn', 77515, 2724, 'Kuala Belait', 'Belait');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brunei-Muara', 'bn', 253895, 571, 'Bandar Seri Begawan', 'Brunei-Muara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Temburong', 'bn', 10908, 1304, 'Bangar', 'Temburong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tutong', 'bn', 41426, 1166, 'Tutong', 'Tutong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Blagoevgrad', 'bg', 331640, 6464, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Burgas', 'bg', 412059, 7605, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dobric', 'bg', 197307, 4689, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gabrovo', 'bg', 132500, 2068, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haskovo', 'bg', 265783, 4029, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jambol', 'bg', 141157, 4162, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kardzali', 'bg', 144303, 4020, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kjustendil', 'bg', 152565, 3002, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lovec', 'bg', 153000, 4128, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Montana', 'bg', 162950, 3585, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pazardzik', 'bg', 300207, 4379, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pernik', 'bg', 141627, 2355, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pleven', 'bg', 336135, 4184, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plovdiv', 'bg', 699166, 5591, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Razgrad', 'bg', 122891, 2646, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ruse', 'bg', 257189, 2624, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Silistra', 'bg', 130504, 2876, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sliven', 'bg', 205443, 3729, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Smoljan', 'bg', 130085, 3518, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sofija grad', 'bg', 1138524, 1038, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sofijska oblast', 'bg', 260863, 7384, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stara Zagora', 'bg', 354155, 4902, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumen', 'bg', 195014, 3374, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Targoviste', 'bg', 141816, 2754, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Varna', 'bg', 452393, 3820, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veliko Tarnovo', 'bg', 277499, 4690, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vidin', 'bg', 112062, 3110, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vraca', 'bg', 172229, 4186, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bale', 'bf', 198240, 4595, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bam', 'bf', 240575, 4084, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banwa', 'bf', 229294, 5882, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bazega', 'bf', 243588, 3963, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bougouriba', 'bf', 84233, 2812, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boulgou', 'bf', 458164, 6692, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boulkiemde', 'bf', 464052, 4269, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Comoe', 'bf', 263398, 15277, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ganzourgou', 'bf', 291099, 4178, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gnagna', 'bf', 340176, 8468, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gourma', 'bf', 259823, 11117, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Houet', 'bf', 767112, 11568, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ioba', 'bf', 161804, 3289, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kadiogo', 'bf', 1373965, 2805, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kenedougou', 'bf', 223139, 8137, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Komandjari', 'bf', 55738, 5048, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kompienga', 'bf', 126159, 7029, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kossi', 'bf', 255314, 7324, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koulpelogo', 'bf', 328287, 2497, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kouritenga', 'bf', 281795, 2622, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kourweogo', 'bf', 125351, 1588, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leraba', 'bf', 106570, 3129, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loroum', 'bf', 126446, 3592, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mouhoun', 'bf', 275035, 6668, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nahouri', 'bf', 146673, 3754, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Namentenga', 'bf', 272628, 6464, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nayala', 'bf', 149953, 3919, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noumbiel', 'bf', 57101, 2736, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oubritenga', 'bf', 226064, 2778, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oudalan', 'bf', 146950, 9797, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Passore', 'bf', 295292, 3867, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Poni', 'bf', 222603, 7365, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanguie', 'bf', 272642, 5178, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanmatenga', 'bf', 485046, 9281, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Seno', 'bf', 233897, 6863, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sissili', 'bf', 170916, 7136, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Soum', 'bf', 287529, 12222, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sourou', 'bf', 219277, 5765, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tapoa', 'bf', 262771, 14594, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tuy', 'bf', 173880, 5639, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yagha', 'bf', 133810, 6468, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yatenga', 'bf', 486523, 6990, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ziro', 'bf', 120085, 5139, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zondoma', 'bf', 140677, 1758, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zoundweogo', 'bf', 214471, 3604, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bubanza', 'bi', 354430, 1089.04, 'Bubanza', 'Bubanza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bujumbura', 'bi', 901348, 1420.52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bururi', 'bi', 493494, 2465.12, 'Bururi', 'Bururi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cankuzo', 'bi', 202286, 1964.54, 'Cankuzo', 'Cankuzo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cibitoke', 'bi', 490954, 1635.52, 'Cibitoke', 'Cibitoke');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gitega', 'bi', 675022, 1978.96, 'Gitega', 'Gitega');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karuzi', 'bi', 479687, 1457.4, 'Karuzi', 'Karuzi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayanza', 'bi', 486923, 1233.24, 'Kayanza', 'Kayanza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kirundo', 'bi', 602093, 1703.34, 'Kirundo', 'Kirundo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Muramvya', 'bi', 303451, 596.52, 'Muramvya', 'Muramvya');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mwaro', 'bi', 274862, 839.6, 'Mwaro', 'Gitega');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rutana', 'bi', 293575, 1959.45, 'Rutana', 'Rutana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banteay Mean Chey', 'kh', 725534, 6679, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bat Dambang', 'kh', 863822, 11702, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kampong Chhnang', 'kh', 556705, 5521, 'Kampong Chhnang', 'Kampong Chhnang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kampong Spoeu', 'kh', 777585, 7017, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kampong Thum', 'kh', 696763, 13814, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kandal', 'kh', 1312044, 3568, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kaoh Kong', 'kh', 235013, 11160, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kracheh', 'kh', 335796, 11094, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krong Kaeb', 'kh', 35990, 336, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krong Pailin', 'kh', 28763, 803, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krong Preah Sihanouk', 'kh', 243968, 868, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mondol Kiri', 'kh', 44345, 14288, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Otdar Mean Chey', 'kh', 85741, 6158, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Phnum Penh', 'kh', 1573529, 290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pousat', 'kh', 495780, 12692, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Preah Vihear', 'kh', 153127, 13788, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prey Veaeng', 'kh', 1129729, 4883, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rotanak Kiri', 'kh', 130527, 10782, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siem Reab', 'kh', 843196, 10299, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stueng Traeng', 'kh', 111988, 11092, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Takaev', 'kh', 963750, 3563, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Adamaoua', 'cm', 801307, 63691, 'Ngaoundere', 'Adamaoua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Centre', 'cm', 2672533, 68926, 'Yaounde', 'Centre');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord', 'cm', 1346623, 65576, 'Garoua', 'Nord');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord Extreme', 'cm', 3002797, 34246, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nordouest', 'cm', 2002135, 17810, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouest', 'cm', 2167995, 13872, 'Bafoussam', 'Ouest');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sudouest', 'cm', 1356007, 24471, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('British Columbia', 'ca', 4154055, 948596, 'Victoria', 'British Columbia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Newfoundland and Labrador', 'ca', 496400, 404517, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northwest Territories', 'ca', 42866, 1178283, 'Yellowknife', 'Northwest Territories');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nunavut', 'ca', 30776, 2201400, 'Iqaluit', 'Nunavut');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quebec', 'ca', 7544935, 1540680, 'Quebec', 'Quebec');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saskatchewan', 'ca', 961416, 651900, 'Regina', 'Saskatchewan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yukon', 'ca', 33530, 536324, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boavista', 'cv', 4391, 620, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brava', 'cv', 6517, 67, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fogo', 'cv', 37779, 476, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maio', 'cv', 7471, 269, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sal', 'cv', 18984, 216, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santo Antao', 'cv', 46798, 779, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sao Nicolau', 'cv', 13005, 388, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sao Tiago', 'cv', 260104, 991, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sao Vicente', 'cv', 74440, 227, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cayman Brac', 'ky', 1316, 36, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grand Cayman', 'ky', 45657, 197, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Little Cayman', 'ky', 402, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bamingui-Bangoran', 'cf', 43387, 58200, 'Ndele', 'Bamingui-Bangoran');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bangui', 'cf', 684190, 67, 'Bangui', 'Bangui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basse-Kotto', 'cf', 294994, 17604, 'Mobaye', 'Basse-Kotto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Kotto', 'cf', 89124, 86650, 'Bria', 'Haute-Kotto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haut-Mbomou', 'cf', 41069, 55530, 'Obo', 'Haut-Mbomou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kemo', 'cf', 125547, 17204, 'Sibut', 'Kemo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lobaye', 'cf', 256829, 19235, 'Mbaiki', 'Lobaye');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mambere-Kadei', 'cf', 348940, 30203, 'Berberati', 'Mambere-Kadei');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mbomou', 'cf', 180635, 61150, 'Bangassou', 'Mbomou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nana-Gribizi', 'cf', 144652, 19996, 'Kaga-Bandoro', 'Nana-Gribizi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nana-Mambere', 'cf', 290783, 26600, 'Bouar', 'Nana-Mambere');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ombella Mpoko', 'cf', 273950, 31835, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouaka', 'cf', 315567, 49900, 'Bambari', 'Ouaka');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouham', 'cf', 398299, 50250, 'Bossangoa', 'Ouham');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouham-Pende', 'cf', 435718, 32100, 'Bozoum', 'Ouham-Pende');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sangha-Mbaere', 'cf', 99913, 19412, 'Nola', 'Sangha-Mbaere');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vakaga', 'cf', 48651, 46500, 'Birao', 'Vakaga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Batha', 'td', 391742, 88800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Biltine', 'td', 250978, 46850, 'Biltine', 'Biltine');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bourkou-Ennedi-Tibesti', 'td', 99389, 600350, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chari-Baguirmi', 'td', 1700160, 82910, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guera', 'td', 415909, 58950, 'Mongo', 'Guera');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanem', 'td', 380157, 114520, 'Mao', 'Kanem');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lac', 'td', 343496, 22320, 'Bol', 'Lac');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Logone Occidental', 'td', 618580, 8695, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Logone Oriental', 'td', 598990, 28035, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayo-Kebbi', 'td', 1120612, 30105, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moyen-Chari', 'td', 1003054, 45180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouaddai', 'td', 738647, 76240, 'Abeche', 'Ouaddai');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salamat', 'td', 250430, 63000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tandjile', 'td', 616362, 18045, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aisen', 'cl', 88510, 108997, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antofagasta', 'cl', 516245, 125253, 'Antofagasta', 'Antofagasta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Araucania', 'cl', 885769, 31946, 'Temuco', 'Araucania');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atacama', 'cl', 258959, 74705, 'Copiapo', 'Atacama');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bio Bio', 'cl', 1883499, 36939, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Coquimbo', 'cl', 627607, 40656, 'La Serena', 'Coquimbo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Libertador General Bernardo OHiggins', 'cl', 795359, 16456, 'Rancagua', 'Libertador General Bernardo OHiggins');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Los Lagos', 'cl', 1090067, 67247, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magellanes', 'cl', 153737, 132034, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maule', 'cl', 921488, 30518, 'Talca', 'Maule');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Metropolitana', 'cl', 6257295, 15549, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarapaca', 'cl', 452012, 58786, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valparaiso', 'cl', 1583467, 16396, 'Valparaiso', 'Valparaiso');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anhui', 'cn', 73059713, 139057, 'Hefei', 'Anhui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aomen', 'cn', 482581, 24, 'Aomen', 'Aomen');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chongqing', 'cn', 32344010, 82403, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gansu', 'cn', 26316859, 464186, 'Lanzhou', 'Gansu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guangxi', 'cn', 49443331, 241410, 'Nanning', 'Guangxi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hainan', 'cn', 7940197, 34353, 'Haikou', 'Hainan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Heilongjiang', 'cn', 37073415, 432477, 'Harbin', 'Heilongjiang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hubei', 'cn', 61263368, 185125, 'Wuhan', 'Hubei');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jiangsu', 'cn', 72117460, 97607, 'Nanjing', 'Jiangsu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jilin', 'cn', 27402930, 192105, 'Changchun', 'Jilin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Neimenggu', 'cn', 24433946, 1218698, 'Hohhot', 'Neimenggu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peking', 'cn', 11653700, 16808, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qinghai', 'cn', 4928342, 716693, 'Xining', 'Qinghai');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shandong', 'cn', 92163194, 156867, 'Jinan', 'Shandong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shanghai', 'cn', 13355925, 6341, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sichuan', 'cn', 86421728, 491146, 'Chengdu', 'Sichuan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tianjin', 'cn', 9338819, 11632, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xinjiang', 'cn', 19514731, 1774034, 'Urumqi', 'Xinjiang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zhejiang', 'cn', 46354322, 103900, 'Hangzhou', 'Zhejiang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amazonas', 'co', 80360, 109665, 'Leticia', 'Amazonas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Antioquia', 'co', 5750478, 63612, 'Medellin', 'Antioquia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arauca', 'co', 282302, 23818, 'Arauca', 'Arauca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atlantico', 'co', 2365663, 3388, 'Barranquilla', 'Atlantico');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bogota', 'co', 7117984, 1587, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolivar', 'co', 2229967, 25978, 'Cartagena', 'Bolivar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boyaca', 'co', 1411239, 23189, 'Tunja', 'Boyaca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caldas', 'co', 1170187, 7888, 'Manizales', 'Caldas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Casanare', 'co', 325713, 44640, 'Yopal', 'Casanare');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cauca', 'co', 1363054, 29308, 'Popayan', 'Cauca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cesar', 'co', 1050303, 22905, 'Valledupar', 'Cesar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Choco', 'co', 413173, 46530, 'Quibdo', 'Choco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cordoba', 'co', 1392905, 25020, 'Monteria', 'Cordoba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cundinamarca', 'co', 2349578, 22623, 'Bogota', 'Bogota');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guainia', 'co', 43314, 72238, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guaviare', 'co', 133236, 53460, 'San Jose del Guaviare', 'Guaviare');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huila', 'co', 994218, 19890, 'Neiva', 'Huila');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Guajira', 'co', 524619, 20848, 'Riohacha', 'La Guajira');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magdalena', 'co', 1403318, 23188, 'Santa Marta', 'Magdalena');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meta', 'co', 771089, 85635, 'Villavicencio', 'Meta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narino', 'co', 1775139, 33268, 'Pasto', 'Narino');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Putumayo', 'co', 378483, 24885, 'Mocoa', 'Putumayo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quindio', 'co', 613375, 1845, 'Armenia', 'Quindio');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Andres y Providencia', 'co', 83491, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santander', 'co', 2085084, 30537, 'Bucaramanga', 'Santander');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tolima', 'co', 1312972, 23562, 'Ibague', 'Tolima');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valle del Cauca', 'co', 4524678, 22140, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mwali', 'km', 34533, 290, 'Fomboni', 'Mwali');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ndzouani', 'km', 270174, 424, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngazidja', 'km', 345599, 1148, 'Moroni', 'Ngazidja');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brazzaville', 'cg', 1186331, 100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cuvette', 'cg', 152421, 74850, 'Owando', 'Cuvette');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kouilou', 'cg', 1012146, 13694, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Likouala', 'cg', 81121, 66044, 'Impfondo', 'Likouala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niari', 'cg', 240332, 25940, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pool', 'cg', 176433, 33955, 'Kinkala', 'Pool');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bandundu', 'cd', 6840451, 295658, 'Bandundu', 'Bandundu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Equateur', 'cd', 6354277, 403292, 'Mbandaka', 'Equateur');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haut-Congo', 'cd', 6828409, 503239, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Katanga', 'cd', 4542025, 496877, 'Lubumbashi', 'Katanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kinshasa', 'cd', 8093048, 9965, 'Kinshasa', 'Kinshasa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord-Kivu', 'cd', 4908500, 59483, 'Goma', 'Nord-Kivu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aitutaki', 'ck', 1808, 18.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atiu', 'ck', 511, 26.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Avarua', 'ck', 50, 2.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mangaia', 'ck', 628, 51.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manihiki', 'ck', 467, 5.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manuae and Teauotu', 'ck', 0, 6.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mauke', 'ck', 405, 18.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mitiaro', 'ck', 196, 22.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nassau', 'ck', 63, 1.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pukapuka', 'ck', 632, 1.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rakahanga', 'ck', 140, 4.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rarotonga', 'ck', 13457, 67.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suwarrow', 'ck', 1, .4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Takutea', 'ck', 0, 1.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tongareva', 'ck', 264, 9.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alajuela', 'cr', 810585, 9753.53, 'Alajuela', 'Alajuela');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guanacaste', 'cr', 297793, 10140.71, 'Liberia', 'Guanacaste');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limon', 'cr', 390941, 9188.52, 'Limon', 'Limon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bjelovar-Bilogora', 'hr', 133734, 2638, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dubrovnik-Neretva', 'hr', 123470, 1782, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grad Zagreb', 'hr', 782951, 640, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Istra', 'hr', 207352, 2813, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karlovac', 'hr', 142480, 3622, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koprivnica-Krizevci', 'hr', 125075, 1734, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Krapina-Zagorje', 'hr', 143128, 1230, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lika-Senj', 'hr', 53939, 5350, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Medimurje', 'hr', 119005, 730, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Osijek-Baranja', 'hr', 332121, 4149, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pozega-Slavonija', 'hr', 86250, 1821, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Primorje-Gorski Kotar', 'hr', 306997, 3590, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sibenik-Knin', 'hr', 113442, 2994, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sisak-Moslavina', 'hr', 186293, 4448, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Slavonski Brod-Posavina', 'hr', 177628, 2027, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Split-Dalmacija', 'hr', 465941, 4524, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Varazdin', 'hr', 185672, 1260, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Virovitica-Podravina', 'hr', 93845, 2021, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vukovar-Srijem', 'hr', 205768, 2448, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zadar', 'hr', 162837, 3643, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zagreb', 'hr', 311209, 3078, 'Zagreb', 'Grad Zagreb');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Camagueey', 'cu', 797329, 14134, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cayos Adjacentes', 'cu', 0, 3715, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cienfuegos', 'cu', 400983, 4149, 'Cienfuegos', 'Cienfuegos');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ciudad de la Habana', 'cu', 2163822, 727, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Holguin', 'cu', 1045356, 9105, 'Holguin', 'Holguin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Habana', 'cu', 718945, 5671, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Las Tunas', 'cu', 537616, 6373, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matanzas', 'cu', 669104, 11669, 'Matanzas', 'Matanzas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pinar del Rio', 'cu', 744038, 10860, 'Pinar del Rio', 'Pinar del Rio');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Villa Clara', 'cu', 837298, 8069, 'Santa Clara', 'Villa Clara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Government controlled area', 'cy', 721735, 5896, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Turkish controlled area', 'cy', 229212, 3355, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jihocesky', 'cz', 615945, 10056, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jihomoravsky', 'cz', 1112501, 7067, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karlovarsky', 'cz', 299860, 3315, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kralovehradecky', 'cz', 543044, 4757, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liberecky', 'cz', 422196, 3163, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moravskoslezsky', 'cz', 1252301, 5555, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Olomoucky', 'cz', 630703, 5139, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pardubicky', 'cz', 501296, 4519, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plzensky', 'cz', 543070, 7560, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prague', 'cz', 1154508, 496, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Stredocesky', 'cz', 1247932, 11014, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ustecky', 'cz', 808282, 5335, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vysocina', 'cz', 512026, 6925, 'Jihlava', 'Vysocina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zlinsky', 'cz', 586607, 3965, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arhus', 'dk', 652788, 4561, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bornholm', 'dk', 43234, 588, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Frederiksberg Kommune', 'dk', 93792, 9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Frederiksborg', 'dk', 378216, 1347, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fyn', 'dk', 471361, 3486, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kobenhavn', 'dk', 620161, 526, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kobenhavns Kommune', 'dk', 511410, 88, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nordjylland', 'dk', 496338, 6173, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ribe', 'dk', 224339, 3132, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ringkobing', 'dk', 275448, 4853, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Roskilde', 'dk', 239113, 891, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sonderjylland', 'dk', 251805, 3938, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Storstrom', 'dk', 261364, 3398, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vejle', 'dk', 354758, 2997, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vestsjaelland', 'dk', 303144, 2984, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Viborg', 'dk', 234325, 4122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ali Sabih', 'dj', 59827, 2400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Awbuk', 'dj', 26537, 5700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dihzil', 'dj', 17980, 7200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jibuti', 'dj', 629916, 600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tajurah', 'dj', 33133, 7300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'dm', 11122, 180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint David', 'dm', 7014, 127, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'dm', 20441, 54, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'dm', 5010, 59, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Joseph', 'dm', 6213, 120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Luke', 'dm', 1603, 11, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mark', 'dm', 1904, 10, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Patrick', 'dm', 8918, 84, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Paul', 'dm', 7515, 67, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter', 'dm', 1604, 28, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baoruco', 'do', 90461, 1282.23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barahona', 'do', 182738, 1739.38, 'Barahona', 'Barahona');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Duarte', 'do', 282432, 1605.35, 'San Francisco de Macoris', 'Duarte');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('El Seibo', 'do', 86448, 1786.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Espaillat', 'do', 231106, 839, 'Moca', 'Espaillat');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Independencia', 'do', 54609, 2006.44, 'Jimani', 'Independencia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Altagracia', 'do', 208199, 2474.34, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Vega', 'do', 395904, 2287, 'La Vega', 'La Vega');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monsenor Nouel', 'do', 172599, 992.39, 'Bonao', 'Monsenor Nouel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monte Cristi', 'do', 115492, 1924.35, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monte Plata', 'do', 183460, 2632.14, 'Monte Plata', 'Monte Plata');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pedernales', 'do', 22150, 2074.53, 'Pedernales', 'Pedernales');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peravia', 'do', 179259, 997.56, 'Bani', 'Peravia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puerto Plata', 'do', 328401, 1856.9, 'Puerto Plata', 'Puerto Plata');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salcedo', 'do', 94072, 440.43, 'Salcedo', 'Salcedo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samana', 'do', 97121, 853.74, 'Samana', 'Samana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanchez Ramirez', 'do', 146602, 1196.13, 'Cotui', 'Sanchez Ramirez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Cristobal', 'do', 569609, 1265.77, 'San Cristobal', 'San Cristobal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Jose de Ocoa', 'do', 62071, 650.17, 'San Jose de Ocoa', 'Peravia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Juan', 'do', 235950, 3569.41, 'San Juan de la Maguana', 'San Juan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Pedro de Macoris', 'do', 334327, 1255.46, 'San Pedro de Macoris', 'San Pedro de Macoris');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santiago', 'do', 973337, 2839, 'Santiago', 'Santiago');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santiago Rodriguez', 'do', 58469, 1111.14, 'San Ignacio de Sabaneta', 'Santiago Rodriguez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santo Domingo', 'do', 2008177, 1296.35, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valverde', 'do', 159135, 823.38, 'Mao', 'Valverde');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aileu', 'tp', 37825, 729, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ainaro', 'tp', 54159, 797, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baucau', 'tp', 105437, 1494, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bobonaro', 'tp', 82382, 1368, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cova Lima', 'tp', 56624, 1226, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dili', 'tp', 171347, 372, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ermera', 'tp', 104850, 746, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lautem', 'tp', 57957, 1702, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liquica', 'tp', 55820, 543, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manatuto', 'tp', 38980, 1706, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manufahi', 'tp', 44837, 1325, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oecussi', 'tp', 59087, 815, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Viqueque', 'tp', 66748, 1781, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Azuay', 'ec', 598504, 8124.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolivar', 'ec', 168874, 3939.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Canar', 'ec', 206953, 3122.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carchi', 'ec', 152304, 3605.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chimborazo', 'ec', 403185, 6071.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cotopaxi', 'ec', 350450, 6569.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('El Oro', 'ec', 515664, 5850.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Esmeraldas', 'ec', 386032, 15239.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galapagos', 'ec', 18555, 8010, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guayas', 'ec', 3256763, 20502.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Imbabura', 'ec', 345781, 4559.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loja', 'ec', 404085, 11026.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Los Rios', 'ec', 650709, 7175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manabi', 'ec', 1180375, 18878.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morona Santiago', 'ec', 113300, 25690, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Napo', 'ec', 79610, 11430.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orellana', 'ec', 85771, 22500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pastaza', 'ec', 61412, 29773.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pichincha', 'ec', 2392409, 12914.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sucumbios', 'ec', 130095, 18327.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tungurahua', 'ec', 441389, 3334.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zamora Chinchipe', 'ec', 76414, 23110.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zonas non delimitadas', 'ec', 72170, 2288.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('ad-Daqahliyah', 'eg', 4923279, 3471, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Bahr-al-Ahmar', 'eg', 187554, 203685, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alexandria', 'eg', 3811512, 2679, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qalyubiyah', 'eg', 3881458, 1001, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wadi al-Jadid', 'eg', 169601, 376505, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aswan', 'eg', 1116661, 679, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asyut', 'eg', 3425569, 1553, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Behera', 'eg', 4689627, 10130, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beni Suef', 'eg', 2256562, 1322, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cairo', 'eg', 7734602, 214, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Damietta', 'eg', 1076130, 589, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('El Faiyum', 'eg', 2425244, 1827, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gharbia', 'eg', 3920797, 1942, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gizeh', 'eg', 5649345, 85153, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ismailia', 'eg', 863314, 1442, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Janub Sina', 'eg', 66519, 33140, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kafr el Sheikh', 'eg', 2585868, 3437, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Luxor', 'eg', 422408, 55, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Matruh', 'eg', 269227, 212112, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Menia', 'eg', 4047985, 2262, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Menufia', 'eg', 3228926, 1532, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Sinai', 'eg', 314295, 27574, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Port Said', 'eg', 538377, 72, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qena', 'eg', 2936612, 1796, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sharkia', 'eg', 5109637, 4180, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sohag', 'eg', 3815484, 1547, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suez', 'eg', 488124, 17840, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ahuachapan', 'sv', 330108, 1281, 'Ahuachapan', 'Ahuachapan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cabanas', 'sv', 175014, 1104, 'Sensuntepeque', 'Cabanas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chalatenango', 'sv', 224145, 2507, 'Chalatenango', 'Chalatenango');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cuscatlan', 'sv', 225678, 766, 'Cojutepeque', 'Cuscatlan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Libertad', 'sv', 649349, 1653, 'Nueva San Salvador', 'La Libertad');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Paz', 'sv', 310798, 1224, 'Zacatecoluca', 'La Paz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Union', 'sv', 323091, 2074, 'La Union', 'La Union');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morazan', 'sv', 202456, 1447, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Miguel', 'sv', 509801, 2532, 'San Miguel', 'San Miguel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Salvador', 'sv', 1909275, 892, 'San Salvador', 'San Salvador');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Ana', 'sv', 579530, 2023, 'Santa Ana', 'Santa Ana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Vicente', 'sv', 180743, 1184, 'San Vicente', 'San Vicente');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sonsonate', 'sv', 455300, 1226, 'Sonsonate', 'Sonsonate');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Usulutan', 'sv', 392260, 2130, 'Usulutan', 'Usulutan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Annobon', 'gq', 4436, 17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bioko Norte', 'gq', 231716, 776, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bioko Sur', 'gq', 25988, 1241, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Centro Sur', 'gq', 129606, 9931, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kie-Ntem', 'gq', 161790, 3943, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Litoral', 'gq', 354282, 6665, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wele-Nzas', 'gq', 177460, 5478, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Anseba', 'er', 611627, 23200, 'Keren', 'Anseba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Debub', 'er', 1072131, 8000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Debub-Keih-Bahri', 'er', 289382, 27600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gash-Barka', 'er', 786964, 33200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maekel', 'er', 766534, 1300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Semien-Keih-Bahri', 'er', 599304, 27800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Harju', 'ee', 519133, 4331.7, 'Tallinn', 'Harju');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hiiu', 'ee', 10275, 1023.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ida-Viru', 'ee', 173514, 3172.9, 'Johvi', 'Ida-Viru');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jaerva', 'ee', 38142, 2622.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jogeva', 'ee', 37547, 2603.8, 'Jogeva', 'Jogeva');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laeaene', 'ee', 27904, 2382.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laeaene-Viru', 'ee', 66409, 3463.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paernu', 'ee', 89335, 4806.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Polva', 'ee', 31730, 2164.8, 'Polva', 'Polva');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rapla', 'ee', 37100, 2980.1, 'Rapla', 'Rapla');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saare', 'ee', 35275, 2922.2, 'Kuressaare', 'Saare');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tartu', 'ee', 148501, 3089.4, 'Tartu', 'Tartu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valga', 'ee', 34790, 2046.5, 'Valga', 'Valga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Viljandi', 'ee', 56499, 3589.1, 'Viljandi', 'Viljandi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Voru', 'ee', 38686, 2305.4, 'Voru', 'Voru');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Addis Abeba', 'et', 2777241, 546, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Afar', 'et', 1454366, 96708, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amhara', 'et', 18185502, 156960, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Benishangul', 'et', 605284, 50248, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diredawa', 'et', 331081, 1025, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gambella', 'et', 239062, 25369, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Harar', 'et', 172385, 374, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oromia', 'et', 24624336, 353632, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Somali', 'et', 4447248, 279252, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern', 'et', 13640842, 112727, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tigray', 'et', 4122696, 50286, 'Mekele', 'Tigray');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Falkland Islands', 'fk', 2638, 12173, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Georgia', 'fk', 23, 3592, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Sandwich Islands', 'fk', 0, 311, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Klaksvik', 'fo', 5268, 12.65, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noreara Eysturoy', 'fo', 1616, 125.42, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noreoy', 'fo', 818, 228.12, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sandoy', 'fo', 1353, 124.74, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Streymoy', 'fo', 3356, 392.29, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sueuroy', 'fo', 5285, 166.83, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Syera Eysturoy', 'fo', 9395, 160.91, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Torshavn', 'fo', 19266, 15.33, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaga', 'fo', 2972, 187.89, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'fj', 341880, 4293, 'Suva', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'fj', 40065, 1422, 'Levuka', 'Eastern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ahvenanmaa', 'fi', 26678, 1527, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Finland', 'fi', 268963, 16248, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central Ostrobothnia', 'fi', 70106, 5286, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern Uusimaa', 'fi', 93024, 2747, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kainuu', 'fi', 84498, 21567, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanta-Haeme', 'fi', 167442, 5204, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kymenlaakso', 'fi', 184318, 5106, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lapland', 'fi', 183481, 93003, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Karelia', 'fi', 167565, 17782, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Ostrobothnia', 'fi', 376842, 35291, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Savo', 'fi', 250294, 16510, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ostrobothnia', 'fi', 172987, 7675, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paeijaet-Haeme', 'fi', 199059, 5133, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Region of Tampere', 'fi', 462628, 12605, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Satakunta', 'fi', 232688, 8290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Karelia', 'fi', 135844, 5674, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Ostrobothnia', 'fi', 192675, 13458, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Savo', 'fi', 159305, 14436, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southwest Finland', 'fi', 456054, 10624, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uusimaa', 'fi', 1362469, 6366, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ain', 'fr', 551910, 5762, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aisne', 'fr', 539303, 7369, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Allier', 'fr', 339308, 7340, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alpes-de-Haute-Provence', 'fr', 146857, 6925, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alpes-Maritimes', 'fr', 1046077, 4299, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ardeche', 'fr', 294168, 5529, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ardennes', 'fr', 288309, 5229, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ariege', 'fr', 138542, 4890, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aube', 'fr', 296264, 6004, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aude', 'fr', 319864, 6139, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aveyron', 'fr', 261923, 8736, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bas-Rhin', 'fr', 1081568, 4755, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bouches-du-Rhone', 'fr', 1900086, 5087, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Calvados', 'fr', 673823, 5548, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cantal', 'fr', 147266, 5726, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Charente', 'fr', 341113, 5956, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Charente-Maritime', 'fr', 580569, 6864, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cher', 'fr', 313332, 7235, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Correze', 'fr', 231272, 5857, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Corse-du-Sud', 'fr', 118954, 4014, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cote-dOr', 'fr', 520485, 8763, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cotes-dArmor', 'fr', 545187, 6878, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Creuse', 'fr', 121076, 5565, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Deux-Sevres', 'fr', 346613, 5999, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dordogne', 'fr', 393012, 9060, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Doubs', 'fr', 510992, 5234, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Drome', 'fr', 456654, 6530, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Essonne', 'fr', 1178057, 1804, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eure', 'fr', 566400, 6040, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eure-et-Loir', 'fr', 420764, 5880, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Finistere', 'fr', 868465, 6733, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gard', 'fr', 655734, 5853, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gers', 'fr', 172358, 6257, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gironde', 'fr', 1349015, 10000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Corse', 'fr', 147391, 4666, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Garonne', 'fr', 1137655, 6309, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Loire', 'fr', 212234, 4977, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Marne', 'fr', 190910, 6211, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hautes-Alpes', 'fr', 128044, 5549, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Saone', 'fr', 231897, 5360, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Savoie', 'fr', 683165, 4388, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hautes-Pyrenees', 'fr', 222615, 4464, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haute-Vienne', 'fr', 360559, 5520, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haut-Rhin', 'fr', 737147, 3525, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hauts-de-Seine', 'fr', 1453877, 176, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Herault', 'fr', 976058, 6101, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ille-et-Vilaine', 'fr', 921418, 6775, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Indre', 'fr', 228880, 6791, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Indre-et-Loire', 'fr', 575406, 6127, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Isere', 'fr', 1157592, 7431, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jura', 'fr', 254464, 4999, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Landes', 'fr', 340462, 9243, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loire', 'fr', 723506, 4781, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loire-Atlantique', 'fr', 1196406, 6815, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loiret', 'fr', 649918, 6775, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Loir-et-Cher', 'fr', 323842, 6343, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lot', 'fr', 164233, 5217, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lot-et-Garonne', 'fr', 308016, 5361, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lozere', 'fr', 74376, 5167, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maine-et-Loire', 'fr', 758397, 7166, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manche', 'fr', 487545, 5938, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marne', 'fr', 574961, 8162, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayenne', 'fr', 292588, 5175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meurthe-et-Moselle', 'fr', 719691, 5241, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meuse', 'fr', 191102, 6216, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morbihan', 'fr', 666255, 6823, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moselle', 'fr', 1038871, 6216, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nievre', 'fr', 221975, 6817, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord', 'fr', 2585765, 5742, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oise', 'fr', 803077, 5860, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orne', 'fr', 294082, 6103, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paris', 'fr', 2110694, 105, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pas-de-Calais', 'fr', 1458837, 6671, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puy-de-Dome', 'fr', 613235, 7970, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyrenees-Atlantiques', 'fr', 619151, 7645, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pyrenees-Orientales', 'fr', 417069, 4116, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rhone', 'fr', 1631845, 3249, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saone-et-Loire', 'fr', 540093, 8575, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sarthe', 'fr', 544545, 6206, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Savoie', 'fr', 393827, 6028, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Seine-et-Marne', 'fr', 1295190, 5915, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Seine-Maritime', 'fr', 1258313, 6278, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Seine-Saint-Denis', 'fr', 1396682, 236, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Somme', 'fr', 564694, 6170, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarn', 'fr', 346559, 5758, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tarn-et-Garonne', 'fr', 211864, 3718, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Territoire de Belfort', 'fr', 140684, 609, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Val-de-Marne', 'fr', 1242789, 245, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Val-dOise', 'fr', 1158315, 1246, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Var', 'fr', 964504, 5973, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaucluse', 'fr', 528178, 3567, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vendee', 'fr', 565048, 6720, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vienne', 'fr', 414452, 6990, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vosges', 'fr', 380361, 5874, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yonne', 'fr', 342870, 7427, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yvelines', 'fr', 1404428, 2284, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cayenne', 'gf', 147863, 45913, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint-Laurent-du-Maroni', 'gf', 46414, 37621, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Clipperton Island', 'pf', 0, 7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iles du Vent', 'pf', 194937, 1176, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iles sous le Vent', 'pf', 31816, 471, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marquises', 'pf', 8982, 1276, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tuamotu-Gambier', 'pf', 16267, 916, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tubuai', 'pf', 6288, 48, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Estuaire', 'ga', 638219, 20740, 'Libreville', 'Estuaire');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haut-Ogooue', 'ga', 143715, 36547, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Moyen-Ogooue', 'ga', 58307, 18535, 'Lambarene', 'Moyen-Ogooue');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngounie', 'ga', 107173, 37750, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nyanga', 'ga', 54330, 21285, 'Tchibanga', 'Nyanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ogooue-Ivindo', 'ga', 67326, 46075, 'Makokou', 'Ogooue-Ivindo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ogooue-Lolo', 'ga', 60510, 25380, 'Koulamoutou', 'Ogooue-Lolo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ogooue-Maritime', 'ga', 134913, 22890, 'Port-Gentil', 'Ogooue-Maritime');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Woleu-Ntem', 'ga', 134028, 38465, 'Oyem', 'Woleu-Ntem');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banjul', 'gm', 34598, 12, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basse', 'gm', 187972, 2069, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brikama', 'gm', 428098, 1764, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Janjanbureh', 'gm', 109905, 1280, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kanifing', 'gm', 345189, 76, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerewan', 'gm', 175565, 2256, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kuntaur', 'gm', 80710, 1614, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mansakonko', 'gm', 73473, 1618, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Abkhasia', 'ge', 162453, 8700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ajaria', 'ge', 370052, 2880, 'Batumi', 'Ajaria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guria', 'ge', 141826, 2000, 'Ozurgeti', 'Guria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Imereti', 'ge', 703480, 6600, 'Kutaisi', 'Imereti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kakheti', 'ge', 395453, 11400, 'Telavi', 'Kakheti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kvemo Kartli', 'ge', 518116, 6400, 'Rustavi', 'Kvemo Kartli');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mtskheta-Mtianeti', 'ge', 122575, 6800, 'Mtskheta', 'Mtskheta-Mtianeti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Raga-Lechkumi and Kverno Svaneti', 'ge', 48571, 4900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samagrelo and Zemo Svaneti', 'ge', 382030, 7400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samtskhe-Javakheti', 'ge', 207441, 6400, 'Akhaltsikhe', 'Samtskhe-Javakheti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shida Kartli', 'ge', 320655, 4800, 'Gori', 'Shida Kartli');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tbilisi', 'ge', 1106528, 1420, 'Tbilisi', 'Tbilisi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baden-Wuerttemberg', 'de', 10781006, 35751.64, 'Stuttgart', 'Baden-Wuerttemberg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Berlin', 'de', 3398362, 891.75, 'Berlin', 'Berlin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brandenburg', 'de', 2560028, 29476.67, 'Potsdam', 'Brandenburg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bremen', 'de', 666117, 404.28, 'Bremen', 'Bremen');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamburg', 'de', 1733846, 755.26, 'Hamburg', 'Hamburg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hassia', 'de', 6120010, 21114.88, 'Wiesbaden', 'Hassia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lower Saxony', 'de', 8029107, 47617.97, 'Hanover', 'Lower Saxony');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rhineland-Palatinate', 'de', 4076208, 19846.91, 'Mainz', 'Rhineland-Palatinate');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saarland', 'de', 1061840, 2568.53, 'Saarbruecken', 'Saarland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sachsen-Anhalt', 'de', 2486108, 20444.72, 'Magdeburg', 'Sachsen-Anhalt');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saxony', 'de', 4278157, 18413.29, 'Dresden', 'Saxony');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Schleswig-Holstein', 'de', 2840122, 15762.9, 'Kiel', 'Schleswig-Holstein');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ashanti', 'gh', 4105345, 24535, 'Kumasi', 'Ashanti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brong-Ahafo', 'gh', 1973210, 39557, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Central', 'gh', 1717556, 9826, 'Cape Coast', 'Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Eastern', 'gh', 2194271, 19977, 'Koforidua', 'Eastern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Greater Accra', 'gh', 3460757, 3685, 'Accra', 'Greater Accra');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'gh', 2003161, 70383, 'Tamale', 'Northern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Upper East', 'gh', 948133, 8842, 'Bolgatanga', 'Upper East');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Upper West', 'gh', 610463, 20814, 'Wa', 'Upper West');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Volta', 'gh', 1738725, 20572, 'Ho', 'Volta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'gh', 2165352, 24292, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ahaia', 'gr', 331316, 3271, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aitolia kai Akarnania', 'gr', 223188, 5461, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Argolis', 'gr', 108637, 2154, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arkadia', 'gr', 100611, 4419, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arta', 'gr', 77681, 1662, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Attiki', 'gr', 3841406, 3808, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ayion Oros', 'gr', 2567, 336, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dodekanisos', 'gr', 200452, 2714, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Drama', 'gr', 106371, 3468, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Evritania', 'gr', 34855, 1869, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Evros', 'gr', 150580, 4242, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Evvoia', 'gr', 218031, 4167, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Florina', 'gr', 55210, 1924, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fokis', 'gr', 49577, 2120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fthiotis', 'gr', 181383, 4441, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grevena', 'gr', 38256, 2291, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Halkidiki', 'gr', 109586, 2918, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hania', 'gr', 156371, 2376, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hios', 'gr', 53817, 904, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilia', 'gr', 198762, 2618, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Imathia', 'gr', 144834, 1701, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ioannina', 'gr', 174606, 4990, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iraklion', 'gr', 302847, 2641, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karditsa', 'gr', 130214, 2636, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kastoria', 'gr', 53584, 1720, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kavala', 'gr', 147885, 2111, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kefallinia', 'gr', 42088, 904, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerkira', 'gr', 113658, 641, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kiklades', 'gr', 119549, 2572, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kilkis', 'gr', 91828, 2519, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Korinthia', 'gr', 159928, 2290, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kozani', 'gr', 156806, 3516, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lakonia', 'gr', 100872, 3636, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Larisa', 'gr', 282447, 5381, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lasithi', 'gr', 77917, 1823, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lesvos', 'gr', 110220, 2154, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Levkas', 'gr', 22879, 356, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Magnisia', 'gr', 210330, 2636, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Messinia', 'gr', 180265, 2991, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pella', 'gr', 148191, 2506, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pieria', 'gr', 134739, 1516, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Preveza', 'gr', 59600, 1036, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rethimni', 'gr', 86532, 1496, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rodopi', 'gr', 112884, 2543, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Samos', 'gr', 44115, 778, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Serrai', 'gr', 203093, 3968, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thesprotia', 'gr', 46811, 1515, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thessaloniki', 'gr', 1099599, 3683, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Trikala', 'gr', 137723, 3384, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Voiotia', 'gr', 130769, 2952, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xanthi', 'gr', 105530, 1793, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zakinthos', 'gr', 41468, 406, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aasiaat', 'gl', 3330, 600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ammassalik', 'gl', 3068, 232100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Illoqqortoormiut', 'gl', 539, 227800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilulissat', 'gl', 4842, 36400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ivittuut', 'gl', 188, 100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kangaatsiaq', 'gl', 1514, 38700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maniitsoq', 'gl', 3587, 62600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nanortalik', 'gl', 2390, 18000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Narsaq', 'gl', 2019, 28900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nuuk', 'gl', 15165, 88200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Outside municipalities', 'gl', 289, 867200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paamiut', 'gl', 2003, 27100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qaanaaq', 'gl', 846, 225500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qaqortoq', 'gl', 3513, 4100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qasigiannguit', 'gl', 1432, 13400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qeqertarsuaq', 'gl', 1025, 9700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sisimiut', 'gl', 5931, 34400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Upernavik', 'gl', 2907, 186300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uummannaq', 'gl', 2436, 74500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carriacou-Petite Martinique', 'gd', 5944, 34.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'gd', 25339, 99, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Davids', 'gd', 11471, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint George', 'gd', 33264, 65, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint John', 'gd', 9176, 35, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Mark', 'gd', 4067, 25, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Patrick', 'gd', 10533, 42, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Basse-Terre', 'gp', 178231, 848, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Grande-Terre', 'gp', 211070, 590, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Iles des Saintes', 'gp', 2420, 13, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Desirade', 'gp', 1914, 20, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Marie-Galante', 'gp', 16003, 158, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Barthelemy', 'gp', 5988, 21, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Martin', 'gp', 33898, 54, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agana Heights', 'gu', 3966, 3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Agat', 'gu', 5840, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Asan', 'gu', 2038, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barrigada', 'gu', 8305, 23, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chalan-Pago-Ordot', 'gu', 6573, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dededo', 'gu', 47908, 78, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hagatna', 'gu', 1050, 3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Inarajan', 'gu', 3273, 49, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mangilao', 'gu', 14450, 26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Merizo', 'gu', 2325, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mongmong-Toto-Maite', 'gu', 7043, 5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Piti', 'gu', 1549, 18, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Rita', 'gu', 7000, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sinajana', 'gu', 2863, 3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Talofofo', 'gu', 3645, 44, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tamuning', 'gu', 18118, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umatac', 'gu', 857, 16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yigo', 'gu', 21878, 91, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yona', 'gu', 6894, 52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alta Verapaz', 'gt', 174992, 8686, 'Coban', 'Alta Verapaz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baja Verapaz', 'gt', 1160660, 3124, 'Salama', 'Baja Verapaz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chimaltenango', 'gt', 486420, 1979, 'Chimaltenango', 'Chimaltenango');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chiquimula', 'gt', 321990, 2376, 'Chiquimula', 'Chiquimula');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('El Progreso', 'gt', 147544, 1922, 'Guastatoya', 'El Progreso');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Escuintla', 'gt', 581271, 4384, 'Escuintla', 'Escuintla');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guatemala', 'gt', 2760338, 2126, 'Guatemala', 'Guatemala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huehuetenango', 'gt', 908054, 7403, 'Huehuetenango', 'Huehuetenango');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Izabal', 'gt', 328514, 9038, 'Puerto Barrios', 'Izabal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peten', 'gt', 420306, 35854, 'Flores', 'Peten');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quezaltenango', 'gt', 653715, 1951, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Retalhuleu', 'gt', 254328, 1858, 'Retalhuleu', 'Retalhuleu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Marcos', 'gt', 829953, 3791, 'San Marcos', 'San Marcos');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Solola', 'gt', 333662, 1061, 'Solola', 'Solola');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Totonicapan', 'gt', 355309, 1061, 'Totonicapan', 'Totonicapan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alderney', 'gg', 2027, 7.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Castel', 'gg', 9046, 10.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Forest', 'gg', 1648, 4.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Herm and Jethou', 'gg', 96, 14.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Andrew', 'gg', 2461, 4.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Martin', 'gg', 6373, 7.3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Peter Port', 'gg', 16688, 6.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Pierre du Bois', 'gg', 2214, 6.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Sampson', 'gg', 8736, 6, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saint Saviour', 'gg', 2866, 6.2, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sark', 'gg', 644, 5.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Torteval', 'gg', 987, 3.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vale', 'gg', 9670, 8.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Beyla', 'gn', 188037, 17452, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boffa', 'gn', 165188, 5003, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boke', 'gn', 289443, 10053, 'Boke', 'Boke');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Coyah', 'gn', 156445, 5576, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dabola', 'gn', 114244, 6000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dalaba', 'gn', 154812, 3400, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dinguiraye', 'gn', 155629, 11000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Faranah', 'gn', 166587, 12400, 'Faranah', 'Faranah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Forecariah', 'gn', 135811, 4265, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fria', 'gn', 82070, 2175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaoual', 'gn', 158193, 11500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gueckedou', 'gn', 404739, 4157, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerouane', 'gn', 124620, 7950, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kindia', 'gn', 286188, 8828, 'Kindia', 'Kindia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kissidougou', 'gn', 213567, 8872, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koubia', 'gn', 114361, 1480, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koundara', 'gn', 109814, 5500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kouroussa', 'gn', 159593, 12035, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lelouma', 'gn', 161457, 2150, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lola', 'gn', 124387, 4219, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Macenta', 'gn', 296228, 8710, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mali', 'gn', 245859, 8800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mamou', 'gn', 222077, 6160, 'Mamou', 'Mamou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mandiana', 'gn', 158893, 12950, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pita', 'gn', 265676, 4000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Siguiri', 'gn', 243877, 19750, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Telimele', 'gn', 283629, 8080, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tougue', 'gn', 132080, 6200, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yomou', 'gn', 86730, 6000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bafata', 'gw', 194592, 5981, 'Bafata', 'Bafata');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bissau', 'gw', 396747, 78, 'Bissau', 'Bissau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolama', 'gw', 30146, 2624, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gabu', 'gw', 192904, 9150, 'Gabu', 'Gabu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tombali', 'gw', 105485, 3736, 'Catio', 'Tombali');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barima-Waini', 'gy', 21521, 20339, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cuyuni-Mazaruni', 'gy', 20798, 47213, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Demerara-Mahaica', 'gy', 360542, 2233, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('East Berbice-Corentyne', 'gy', 172917, 36255, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Essequibo Islands-West Demerara', 'gy', 119420, 3755, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mahaica-Berbice', 'gy', 64515, 4170, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pomeroon-Supenaam', 'gy', 48751, 6195, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Potaro-Siparuni', 'gy', 6672, 20052, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Upper Demerara-Berbice', 'gy', 44878, 17081, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Upper Takutu-Upper Essequibo', 'gy', 17707, 57790, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Centre', 'ht', 538556, 3597, 'Hinche', 'Centre');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('GrandAnse', 'ht', 684632, 3100, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord', 'ht', 829603, 2175, 'Cap-Haitien', 'Nord');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ouest', 'ht', 3088962, 4595, 'Port-au-Prince', 'Ouest');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud', 'ht', 690256, 2602, 'Les Cayes', 'Sud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Choluteca', 'hn', 382339, 4211, 'Choluteca', 'Choluteca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Comayagua', 'hn', 359889, 5196, 'Comayagua', 'Comayagua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Copan', 'hn', 291053, 3203, 'Santa Rosa de Copan', 'Copan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cortes', 'hn', 1217627, 3954, 'San Pedro Sula', 'Cortes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Central', 'hn', 936064, 1648, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('El Paraiso', 'hn', 352745, 7218, 'Yuscaran', 'El Paraiso');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Francisco Morazan', 'hn', 258889, 6298, 'Tegucigalpa', 'Distrito Central');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gracias a Dios', 'hn', 64157, 16630, 'Puerto Lempira', 'Gracias a Dios');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Islas de la Bahia', 'hn', 34490, 261, 'Roatan', 'Islas de la Bahia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Paz', 'hn', 160405, 2331, 'La Paz', 'La Paz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lempira', 'hn', 263849, 4290, 'Gracias', 'Lempira');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ocotepeque', 'hn', 110471, 1680, 'Ocotepeque', 'Ocotepeque');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Olancho', 'hn', 414287, 24351, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Barbara', 'hn', 338398, 5115, 'Santa Barbara', 'Santa Barbara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Valle', 'hn', 147058, 1565, 'Nacaome', 'Valle');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yoro', 'hn', 470283, 7939, 'Yoro', 'Yoro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bacs-Kiskun', 'hu', 539854, 8445.15, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baranya', 'hu', 398363, 4429.5, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bekes', 'hu', 390610, 5631.05, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Borsod-Abauj-Zemplen', 'hu', 736875, 7247.16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Budapest', 'hu', 1708088, 525.16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Csongrad', 'hu', 420062, 4262.68, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fejer', 'hu', 427741, 4358.76, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gyor-Moson-Sopron', 'hu', 438297, 4208.49, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hajdu-Bihar', 'hu', 547828, 6210.56, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Heves', 'hu', 320808, 3637.41, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jasz-Nagykun-Szolnok', 'hu', 411826, 5581.7, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Komarom-Esztergom', 'hu', 313761, 2265.08, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nograd', 'hu', 216104, 2544.19, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pest', 'hu', 1128187, 6393.52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Somogy', 'hu', 330602, 6035.86, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Szabolcs-Szatmar-Bereg', 'hu', 587025, 5936.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tolna', 'hu', 246557, 3703.26, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vas', 'hu', 263311, 3336.18, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Veszprem', 'hu', 364054, 4429.8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zala', 'hu', 293524, 3784.1, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Almenningur', 'is', 0, 122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Austurland', 'is', 12153, 22721, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hoefueborgarsvaeei', 'is', 186010, 1062, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noreurland eystra', 'is', 26900, 21968, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noreurland vestra', 'is', 9027, 12737, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sueurland', 'is', 21704, 24526, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sueurnes', 'is', 17203, 829, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vestfireir', 'is', 7648, 9409, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vesturland', 'is', 14302, 9554, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andhra Pradesh', 'in', 78950682, 276814, 'Hyderabad', 'Andhra Pradesh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chandigarh', 'in', 1013320, 114, 'Chandigarh', 'Chandigarh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chhattisgarh', 'in', 21957319, 146361, 'Raipur', 'Chhattisgarh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Daman and Diu', 'in', 185043, 110, 'Daman', 'Daman and Diu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delhi', 'in', 15766865, 1485, 'Delhi', 'Delhi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Goa', 'in', 1404863, 3702, 'Panaji', 'Goa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gujarat', 'in', 53957041, 195984, 'Gandhinagar', 'Gujarat');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Himachal Pradesh', 'in', 6394018, 55673, 'Shimla', 'Himachal Pradesh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jammu and Kashmir', 'in', 10967895, 101387, 'Srinagar', 'Jammu and Kashmir');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jharkhand', 'in', 28866327, 74677, 'Ranchi', 'Jharkhand');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lakshadweep', 'in', 63911, 32, 'Kavaratti', 'Lakshadweep');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manipur', 'in', 2607021, 22356, 'Imphal', 'Manipur');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meghalaya', 'in', 2520136, 22489, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nagaland', 'in', 2367467, 16527, 'Kohima', 'Nagaland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sikkim', 'in', 594054, 7299, 'Gangtok', 'Sikkim');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tamil Nadu', 'in', 63995163, 130069, 'Madras', 'Tamil Nadu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tripura', 'in', 3360263, 10477, 'Agartala', 'Tripura');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uttaranchal', 'in', 8986028, 51125, 'Dehra Dun', 'Uttaranchal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Uttar Pradesh', 'in', 179388842, 243288, 'Lakhnau', 'Uttar Pradesh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aceh', 'id', 4221922, 55392, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bali', 'id', 3331485, 5561, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bangka-Belitung', 'id', 960327, 16448, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Banten', 'id', 8639752, 8235, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bengkulu', 'id', 1805536, 21168, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gorontalo', 'id', 890823, 7957, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jakarta', 'id', 8540306, 661, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jambi', 'id', 2644397, 44800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jawa Barat', 'id', 38116154, 37994, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jawa Tengah', 'id', 32513230, 34206, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jawa Timur', 'id', 35839269, 47921, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalimantan Barat', 'id', 4480028, 146760, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalimantan Selatan', 'id', 3196446, 37660, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalimantan Tengah', 'id', 2132633, 152600, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kalimantan Timur', 'id', 2810030, 202440, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lampung', 'id', 7158163, 33307, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maluku', 'id', 1286065, 42853, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maluku Utara', 'id', 837498, 31652, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nusa Tenggara Barat', 'id', 4349795, 20177, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nusa Tenggara Timur', 'id', 4306693, 47876, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Papua', 'id', 2557281, 421981, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Riau', 'id', 5162023, 72569, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Riau Kepulauan', 'id', 832399, 21992, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sulawesi Selatan', 'id', 8594288, 72781, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sulawesi Tengah', 'id', 2505019, 69726, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sulawesi Tenggara', 'id', 2101387, 27686, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sulawesi Utara', 'id', 2146499, 11066, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumatera Barat', 'id', 4383935, 49778, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumatera Selatan', 'id', 7360551, 87240, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sumatera Utara', 'id', 12391449, 70787, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yogyakarta', 'id', 3211764, 3169, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ardabil', 'ir', 1265606, 17881, 'Ardabil', 'Ardabil');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Azarbayejan-e Gharbi', 'ir', 2955634, 39487, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Azarbayejan-e Sharqi', 'ir', 3529129, 47830, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bushehr', 'ir', 815167, 23191, 'Bushehr', 'Bushehr');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Chahar Mahal-e Bakhtiari', 'ir', 849399, 16201, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Esfahan', 'ir', 4440427, 107027, 'Esfahan', 'Esfahan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fars', 'ir', 4409753, 122416, 'Shiraz', 'Fars');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gilan', 'ir', 2421673, 14106, 'Rasht', 'Gilan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Golestan', 'ir', 1642331, 20891, 'Gorgan', 'Golestan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hamadan', 'ir', 1738484, 19547, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hormozgan', 'ir', 1311681, 71193, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ilam', 'ir', 536882, 20151, 'Ilam', 'Ilam');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerman', 'ir', 2454958, 181814, 'Kerman', 'Kerman');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kermanshah', 'ir', 1913209, 24741, 'Kermanshah', 'Kermanshah');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khorasan', 'ir', 6583062, 302766, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khuzestan', 'ir', 4225334, 63238, 'Ahvaz', 'Khuzestan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kohgiluyeh-e Boyerahmad', 'ir', 696132, 15563, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kordestan', 'ir', 1573222, 29151, 'Sanandaj', 'Kordestan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lorestan', 'ir', 1769428, 28392, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Markazi', 'ir', 1364518, 29406, 'Arak', 'Markazi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mazandaran', 'ir', 2822034, 23064, 'Sari', 'Mazandaran');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qazvin', 'ir', 1165936, 15502, 'Qazvin', 'Qazvin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Qom', 'ir', 1071475, 11237, 'Qom', 'Qom');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Semnan', 'ir', 587080, 96816, 'Semnan', 'Semnan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sistan-e Baluchestan', 'ir', 2288465, 178431, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tehran', 'ir', 12066503, 18637, 'Tehran', 'Tehran');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yazd', 'ir', 985463, 73467, 'Yazd', 'Yazd');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zanjan', 'ir', 975695, 21841, 'Zanjan', 'Zanjan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Anbar', 'iq', 1170193, 138501, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Basrah', 'iq', 2325325, 19070, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Mutzanna', 'iq', 540360, 51740, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Qadisiyah', 'iq', 908205, 8153, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('an-Najaf', 'iq', 921581, 28824, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Sulaymaniyah', 'iq', 1729388, 17023, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('at-Tamim', 'iq', 863829, 10282, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Babil', 'iq', 1195824, 6468, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baghdad', 'iq', 5960531, 734, 'Baghdad', 'Baghdad');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dahuk', 'iq', 497237, 6553, 'Dahuk', 'Dahuk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Di Qar', 'iq', 1386351, 12900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Diyala', 'iq', 1244442, 19076, 'Baqubah', 'Diyala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Irbil', 'iq', 1384336, 14471, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karbala', 'iq', 687197, 5034, 'Karbala', 'Karbala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maysan', 'iq', 754823, 16072, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ninawa', 'iq', 2521397, 35899, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salah-ad-Din', 'iq', 1032689, 26175, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wasit', 'iq', 971575, 17153, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Carlow', 'ie', 47393, 896.55, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cavan', 'ie', 57473, 1931.77, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Clare', 'ie', 106924, 3450.04, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cork', 'ie', 458068, 7499.95, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Donegal', 'ie', 139839, 4860.91, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dublin', 'ie', 1146503, 922.27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Galway', 'ie', 216926, 6148.47, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerry', 'ie', 134656, 4806.89, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kildare', 'ie', 177574, 1695.4, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kilkenny', 'ie', 82284, 2072.89, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Laois', 'ie', 60804, 1719.9, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Leitrim', 'ie', 25895, 1590.03, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limerick', 'ie', 179071, 2755.91, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Longford', 'ie', 31308, 1091.16, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Louth', 'ie', 105295, 826.13, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mayo', 'ie', 119088, 5586.05, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Meath', 'ie', 144184, 2342.07, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Monaghan', 'ie', 53085, 1295.08, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Offaly', 'ie', 65231, 2001.17, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Roscommon', 'ie', 54173, 2548.19, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sligo', 'ie', 58900, 1837.52, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tipperary North Riding', 'ie', 61926, 2046.27, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tipperary South Riding', 'ie', 80276, 2258.45, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Waterford', 'ie', 104132, 1856.59, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Westmeath', 'ie', 75298, 1839.65, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wexford', 'ie', 121123, 2366.85, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wicklow', 'ie', 119874, 2026.62, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Islands', 'mp', 8, 171, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rota', 'mp', 3169, 83, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saipan', 'mp', 72058, 122, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tinian', 'mp', 4490, 101, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Akershus', 'no', 493645, 4587, 'Oslo', 'Akershus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aust-Agder', 'no', 103575, 8485, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Buskerud', 'no', 243437, 13856, 'Drammen', 'Buskerud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Finnmark', 'no', 72961, 45879, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hedmark', 'no', 188463, 26120, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hordaland', 'no', 448000, 14962, 'Bergen', 'Hordaland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('More og Romsdal', 'no', 244852, 14596, 'Molde', 'More og Romsdal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nordland', 'no', 236830, 36302, 'Bodo', 'Nordland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord-Trondelag', 'no', 128170, 20777, 'Steinkjer', 'Nord-Trondelag');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oppland', 'no', 183847, 23827, 'Lillehammer', 'Oppland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oslo', 'no', 525971, 427, 'Oslo', 'Akershus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ostfold', 'no', 258349, 3889, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rogaland', 'no', 392163, 8553, 'Stavanger', 'Rogaland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sogn og Fjordane', 'no', 107190, 17864, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sor-Trondelag', 'no', 271957, 17839, 'Trondheim', 'Sor-Trondelag');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Telemark', 'no', 166282, 14186, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Troms', 'no', 153026, 25147, 'Tromso', 'Troms');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vest-Agder', 'no', 161126, 6817, 'Kristiansand', 'Vest-Agder');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vestfold', 'no', 220800, 2140, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('ad-Dahziliyah', 'om', 273659, 31900, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Batinah', 'om', 668615, 12500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('al-Wusta', 'om', 24196, 79700, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('as-Sarqiyah', 'om', 323917, 36800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('az-Zahirah', 'om', 211396, 44000, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Musandam', 'om', 28218, 1800, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Muscat', 'om', 646024, 3500, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zufar', 'om', 220520, 99300, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Azad Kashmir', 'pk', 3865219, 11639, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Baluchistan', 'pk', 7707313, 347190, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Federal Capital Area', 'pk', 1115523, 907, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Federally administered Tribal Areas', 'pk', 3646348, 27219, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern Areas', 'pk', 1097651, 72520, 'Gilgit', 'Northern Areas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North-West Frontier', 'pk', 21165114, 74521, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Punjab', 'pk', 85575495, 205344, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sind', 'pk', 35994079, 140914, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Aimeliik', 'pw', 221, 52, 'Ulimang', 'Aimeliik');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Airai', 'pw', 2806, 44, 'Airai', 'Airai');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Angaur', 'pw', 181, 8, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hatobohei', 'pw', 13, 3, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kayangel', 'pw', 145, 3, 'Kayangel', 'Kayangel');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Koror', 'pw', 14048, 65, 'Koror', 'Koror');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Melekeok', 'pw', 217, 28, 'Melekeok', 'Melekeok');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngaraard', 'pw', 903, 36, 'Ngermechau', 'Ngaraard');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngardmau', 'pw', 456, 47, 'Chol', 'Ngardmau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngaremlengui', 'pw', 209, 65, 'Ollei', 'Ngaremlengui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngatpang', 'pw', 537, 47, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngchesar', 'pw', 315, 41, 'Ngerkeai', 'Ngchesar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngerchelong', 'pw', 272, 10, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngiwal', 'pw', 198, 26, 'Ngetkip', 'Ngiwal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Peleliu', 'pw', 547, 13, 'Kloulklubed', 'Peleliu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sonsorol', 'pw', 24, 3, 'Dongosaru', 'Sonsorol');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Singapore', 'sg', 3547809, 683, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tombouctou', 'ml', 463019, 408977, 'Tombouctou', 'Tombouctou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nouakchott', 'mr', 709835, 1000, 'Nouakchott', 'Nouakchott');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caprivi', 'na', 78108, 19532, 'Katima Mulilo', 'Caprivi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hardap', 'na', 65799, 109888, 'Mariental', 'Hardap');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karas', 'na', 70222, 161324, 'Keetmanshoop', 'Karas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Khomas', 'na', 279037, 36804, 'Windhoek', 'Khomas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ohangwena', 'na', 238741, 10582, 'Eenhana', 'Ohangwena');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oshana', 'na', 210120, 5290, 'Oshakati', 'Oshana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Otjozondjupa', 'na', 144649, 105327, 'Otjiwarongo', 'Otjozondjupa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Flevoland', 'nl', 360833, 1425.66, 'Lelystad', 'Flevoland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gelderland', 'nl', 1975063, 4995.23, 'Arnhem', 'Gelderland');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Limburg', 'nl', 1143970, 2167.46, 'Maastricht', 'Limburg');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Noord-Brabant', 'nl', 2413546, 4938.23, 's-Hertogenbosch', 'Noord-Brabant');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Utrecht', 'nl', 1166286, 1356.11, 'Utrecht', 'Utrecht');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bonaire', 'an', 10460, 288, 'Kralendijk', 'Bonaire');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Saba', 'an', 1426, 13, 'The Bottom', 'Saba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sint Eustatius', 'an', 2506, 21, 'Oranjestad', 'Sint Eustatius');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manus', 'pg', 48634, 2100, 'Lorengau', 'Manus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Milne Bay', 'pg', 232915, 14000, 'Alotau', 'Milne Bay');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('National Capital District', 'pg', 283733, 240, 'Port Moresby', 'National Capital District');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oro', 'pg', 149967, 22800, 'Popondetta', 'Oro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Southern Highlands', 'pg', 687138, 23800, 'Mendi', 'Southern Highlands');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western Highlands', 'pg', 511371, 8500, 'Mount Hagen', 'Western Highlands');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alto Parana', 'py', 618273, 14895, 'Ciudad del Este', 'Alto Parana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amambay', 'py', 120681, 12933, 'Pedro Juan Caballero', 'Amambay');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Boqueron', 'py', 49756, 91669, 'Filadelfia', 'Boqueron');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caazapa', 'py', 141150, 9496, 'Caazapa', 'Caazapa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Concepcion', 'py', 181531, 18051, 'Concepcion', 'Concepcion');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guaira', 'py', 181129, 3846, 'Villarrica', 'Guaira');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Misiones', 'py', 105164, 9556, 'San Juan Bautista', 'Misiones');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paraguari', 'py', 227921, 8705, 'Paraguari', 'Paraguari');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Presidente Hayes', 'py', 88961, 72907, 'Pozo Colorado', 'Presidente Hayes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Apurimac', 'pe', 449049, 20895.79, 'Abancay', 'Apurimac');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ayacucho', 'pe', 544566, 43814.8, 'Ayacucho', 'Ayacucho');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cusco', 'pe', 1214299, 71891.97, 'Cusco', 'Cusco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Huancavelica', 'pe', 454366, 22131.47, 'Huancavelica', 'Huancavelica');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Junin', 'pe', 1256529, 44409.67, 'Huancayo', 'Junin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lambayeque', 'pe', 1196366, 14231.3, 'Chiclayo', 'Lambayeque');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madre de Dios', 'pe', 95187, 85182.63, 'Puerto Maldonado', 'Madre de Dios');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pasco', 'pe', 252650, 25319.59, 'Cerro de Pasco', 'Pasco');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Martin', 'pe', 920966, 51253.31, 'Moyobamba', 'San Martin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ucayali', 'pe', 505724, 102410.55, 'Pucallpa', 'Ucayali');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dolnoslaskie', 'pl', 2889395, 19948, 'Wroclaw', 'Dolnoslaskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lodzkie', 'pl', 2581060, 18219, 'Lodz', 'Lodzkie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lubuskie', 'pl', 1006273, 13984, 'Zielona Gora', 'Lubuskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Podkarpackie', 'pl', 2084040, 17926, 'Rzeszow', 'Podkarpackie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pomorskie', 'pl', 2196399, 18293, 'Gdansk', 'Pomorskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Swietokrzyskie', 'pl', 1285509, 11672, 'Kielce', 'Swietokrzyskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wielkopolskie', 'pl', 3364886, 29826, 'Poznan', 'Wielkopolskie');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Umm Salal', 'qa', 33908, 470.37, 'Umm Salal', 'Umm Salal');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arges', 'ro', 644458, 6826, 'Pitesti', 'Arges');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bihor', 'ro', 588020, 7544, 'Oradea', 'Bihor');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bistrita-Nasaud', 'ro', 307427, 5355, 'Bistrita', 'Bistrita-Nasaud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Brasov', 'ro', 572108, 5363, 'Brasov', 'Brasov');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caras-Severin', 'ro', 321302, 8520, 'Resita', 'Caras-Severin');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Constanta', 'ro', 703863, 7071, 'Constanta', 'Constanta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Giurgiu', 'ro', 292956, 3526, 'Giurgiu', 'Giurgiu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Harghita', 'ro', 320818, 6639, 'Miercurea-Ciuc', 'Harghita');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maramures', 'ro', 501196, 6304, 'Baia Mare', 'Maramures');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mehedinti', 'ro', 298156, 4933, 'Drobeta-Turnu Severin', 'Mehedinti');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salaj', 'ro', 242741, 3864, 'Zalau', 'Salaj');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suceava', 'ro', 685773, 8553, 'Suceava', 'Suceava');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Teleorman', 'ro', 423338, 5790, 'Alexandria', 'Teleorman');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaslui', 'ro', 452508, 5318, 'Vaslui', 'Vaslui');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vrancea', 'ro', 388168, 4857, 'Focsani', 'Vrancea');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gauteng', 'za', 10058106, 17010, 'Johannesburg', 'Gauteng');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mpumalanga', 'za', 3409747, 79490, 'Nelspruit', 'Mpumalanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sughd', 'tj', 1989842, 26100, 'Khujand', 'Sughd');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arusha', 'tz', 1428690, 36486, 'Arusha', 'Arusha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dodoma', 'tz', 1791151, 41311, 'Dodoma', 'Dodoma');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kagera', 'tz', 2189846, 28388, 'Bukoba', 'Kagera');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kilimanjaro', 'tz', 1430404, 13309, 'Moshi', 'Kilimanjaro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mara', 'tz', 1456992, 19566, 'Musoma', 'Mara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Morogoro', 'tz', 1871927, 70799, 'Morogoro', 'Morogoro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pwani', 'tz', 938922, 32407, 'Dar es Salaam', 'Dar es Salaam');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ruvuma', 'tz', 1190348, 63498, 'Songea', 'Ruvuma');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Singida', 'tz', 1150946, 49341, 'Singida', 'Singida');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tanga', 'tz', 1708458, 26808, 'Tanga', 'Tanga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gegharkunik', 'am', 213817, 3655, 'Gavar', 'Gegharkunik');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shirak', 'am', 255386, 2679, 'Gyumri', 'Shirak');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yerevan', 'am', 1083361, 210, 'Yerevan', 'Yerevan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Niutao', 'tv', 624, 2.53, 'Kua', 'Niutao');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nukufetau', 'tv', 565, 2.99, 'Savave', 'Nukufetau');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nukulaelae', 'tv', 402, 1.82, 'Fangaua', 'Nukulaelae');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Artigas', 'uy', 79535, 11928, 'Artigas', 'Artigas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cerro Largo', 'uy', 87447, 13648, 'Melo', 'Cerro Largo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Durazno', 'uy', 58232, 11643, 'Durazno', 'Durazno');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lavalleja', 'uy', 62824, 10016, 'Minas', 'Lavalleja');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maldonado', 'uy', 164717, 4793, 'Maldonado', 'Maldonado');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Paysandu', 'uy', 120906, 13922, 'Paysandu', 'Paysandu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rivera', 'uy', 108651, 9370, 'Rivera', 'Rivera');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Salto', 'uy', 132347, 14163, 'Salto', 'Salto');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tacuarembo', 'uy', 88622, 15438, 'Tacuarembo', 'Tacuarembo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Treinta y Tres', 'uy', 53011, 9529, 'Treinta y Tres', 'Treinta y Tres');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Malampa', 'vu', 35329, 2779, 'Lakatoro', 'Malampa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sanma', 'vu', 42868, 4248, 'Luganville', 'Sanma');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Torba', 'vu', 8931, 882, 'Sola', 'Torba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Amazonas', 've', 75538, 177617, 'Puerto Ayacucho', 'Amazonas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Apure', 've', 415795, 76500, 'San Fernando', 'Apure');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Barinas', 've', 702663, 35200, 'Barinas', 'Barinas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bolivar', 've', 1335034, 240528, 'Ciudad Bolivar', 'Bolivar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Delta Amacuro', 've', 103602, 40200, 'Tucupita', 'Delta Amacuro');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lara', 've', 1686781, 19800, 'Barquisimeto', 'Lara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Miranda', 've', 2497804, 7950, 'Los Teques', 'Miranda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Portuguesa', 've', 781812, 15200, 'Guanare', 'Portuguesa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tovuz', 'az', 149760, 1900, 'Tovuz', 'Tovuz');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Minsk', 'by', 1742123, 2500, 'Minsk', 'Minsk');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Makamba', 'bi', 499686, 1959.6, 'Makamba', 'Makamba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Muyinga', 'bi', 595952, 1836.26, 'Muyinga', 'Muyinga');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ngozi', 'bi', 719163, 1473.86, 'Ngozi', 'Ngozi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ruyigi', 'bi', 369801, 2338.88, 'Ruyigi', 'Ruyigi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kampong Cham', 'kh', 1965921, 9799, 'Kampong Cham', 'Kampong Cham');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kampot', 'kh', 645644, 4873, 'Kampot', 'Kampot');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Svay Rieng', 'kh', 604770, 2966, 'Svay Rieng', 'Svay Rieng');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Est', 'cm', 836906, 109011, 'Bertoua', 'Est');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Littoral', 'cm', 2192267, 20239, 'Douala', 'Littoral');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud', 'cm', 604864, 47110, 'Ebolowa', 'Sud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Alberta', 'ca', 3231873, 661185, 'Edmonton', 'Alberta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Manitoba', 'ca', 1185870, 650086, 'Winnipeg', 'Manitoba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Brunswick', 'ca', 738296, 73437, 'Fredericton', 'New Brunswick');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nova Scotia', 'ca', 918312, 55490, 'Halifax', 'Nova Scotia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ontario', 'ca', 12569177, 1068582, 'Toronto', 'Ontario');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Prince Edward Island', 'ca', 142863, 5657, 'Charlottetown', 'Prince Edward Island');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Norte de Santander', 'co', 1493932, 21658, 'Cucuta', 'Norte de Santander');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Risaralda', 'co', 1024362, 4140, 'Pereira', 'Risaralda');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sucre', 'co', 868648, 10917, 'Sincelejo', 'Sucre');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vaupes', 'co', 33152, 54135, 'Mitu', 'Vaupes');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vichada', 'co', 97276, 100242, 'Puerto Carreno', 'Vichada');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bouenza', 'cg', 309059, 12266, 'Madingou', 'Bouenza');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Lekoumou', 'cg', 74122, 20950, 'Sibiti', 'Lekoumou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Plateaux', 'cg', 119077, 38400, 'Djambala', 'Plateaux');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sangha', 'cg', 52676, 55800, 'Ouesso', 'Sangha');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bas-Congo', 'cd', 3802499, 53920, 'Matadi', 'Bas-Congo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kasai-Occidental', 'cd', 4545647, 154742, 'Kananga', 'Kasai-Occidental');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kasai-Oriental', 'cd', 5719300, 170302, 'Mbuji-Mayi', 'Kasai-Oriental');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maniema', 'cd', 1718160, 132250, 'Kindu', 'Maniema');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud-Kivu', 'cd', 3908889, 65070, 'Bukavu', 'Sud-Kivu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cartago', 'cr', 485516, 3124.61, 'Cartago', 'Cartago');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Heredia', 'cr', 399581, 2656.98, 'Heredia', 'Heredia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puntarenas', 'cr', 406732, 11265.71, 'Puntarenas', 'Puntarenas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ciego de Avila', 'cu', 418280, 6485, 'Ciego de Avila', 'Ciego de Avila');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Granma', 'cu', 844762, 8452, 'Bayamo', 'Granma');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guantanamo', 'cu', 521680, 6366, 'Guantanamo', 'Guantanamo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Isla de la Juventud', 'cu', 81158, 2199, 'Nueva Gerona', 'Isla de la Juventud');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sancti Spiritus', 'cu', 465026, 6737, 'Sancti Spiritus', 'Sancti Spiritus');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santiago de Cuba', 'cu', 1050572, 6343, 'Santiago de Cuba', 'Santiago de Cuba');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Azua', 'do', 210358, 2531.77, 'Azua', 'Azua');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dajabon', 'do', 59725, 1020.73, 'Dajabon', 'Dajabon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Distrito Nacional', 'do', 907317, 104.44, 'Santo Domingo', 'Distrito Nacional');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Elias Pina', 'do', 63214, 1426.2, 'Comendador', 'Elias Pina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hato Mayor', 'do', 89526, 1329.28, 'Hato Mayor', 'Hato Mayor');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('La Romana', 'do', 238053, 653.95, 'La Romana', 'La Romana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maria Trinidad Sanchez', 'do', 138333, 1271.71, 'Nagua', 'Maria Trinidad Sanchez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Northern', 'fj', 152807, 6199, 'Labasa', 'Northern');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Western', 'fj', 317068, 6360, 'Lautoka', 'Western');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jalapa', 'gt', 254270, 2063, 'Jalapa', 'Jalapa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jutiapa', 'gt', 408261, 3219, 'Jutiapa', 'Jutiapa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quiche', 'gt', 726260, 8378, 'Santa Cruz del Quiche', 'Quiche');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sacatepequez', 'gt', 268547, 465, 'Antigua Guatemala', 'Sacatepequez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Santa Rosa', 'gt', 313191, 2955, 'Cuilapa', 'Santa Rosa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Suchitepequez', 'gt', 429648, 2510, 'Mazatenango', 'Suchitepequez');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Zacapa', 'gt', 211220, 2690, 'Zacapa', 'Zacapa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Conakry', 'gn', 1871185, 308, 'Conakry', 'Conakry');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kankan', 'gn', 234815, 18400, 'Kankan', 'Kankan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Labe', 'gn', 204220, 2520, 'Labe', 'Labe');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nzerekore', 'gn', 278070, 3781, 'Nzerekore', 'Nzerekore');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Biombo', 'gw', 69752, 838, 'Quinhamel', 'Biombo');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Cacheu', 'gw', 179740, 5175, 'Cacheu', 'Cacheu');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oio', 'gw', 196058, 5403, 'Farim', 'Oio');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Quinara', 'gw', 62261, 3138, 'Fulacunda', 'Quinara');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Artibonite', 'ht', 1128049, 4895, 'Gonaives', 'Artibonite');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord-Est', 'ht', 263634, 1698, 'Fort-Liberte', 'Nord-Est');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nord-Ouest', 'ht', 482863, 2094, 'Port-de-Paix', 'Nord-Ouest');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Sud-Est', 'ht', 469055, 2077, 'Jacmel', 'Sud-Est');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Atlantida', 'hn', 336579, 4251, 'La Ceiba', 'Atlantida');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Colon', 'hn', 240041, 8875, 'Trujillo', 'Colon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Gaza Strip', 'ps', 1389789, 365, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('West Bank', 'ps', 2372216, 5655, NULL, NULL);
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bavaria', 'de', 12502158, 70549.32, 'Munich', 'Bavaria');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Thuringia', 'de', 2353016, 16172.21, 'Erfurt', 'Thuringia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Rhine-Westphalia', 'de', 18125802, 34082.76, 'Duesseldorf', 'North Rhine-Westphalia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mecklenburg-West Pommerania', 'de', 1714301, 23173.46, 'Schwerin', 'Mecklenburg-West Pommerania');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Dadra and Nagar Haveli', 'in', 257513, 491, 'Silvassa', 'Dadra and Nagar Haveli');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pondicherry', 'in', 1038875, 492, 'Pondicherry', 'Pondicherry');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Andaman and Nicobar Islands', 'in', 388782, 8293, 'Port Blair', 'Andaman and Nicobar Islands');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Punjab', 'in', 25710906, 50362, 'Chandigarh', 'Chandigarh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Haryana', 'in', 22876486, 44222, 'Chandigarh', 'Chandigarh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Rajasthan', 'in', 61336965, 342214, 'Jaipur', 'Rajasthan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bihar', 'in', 90268487, 99199, 'Patna', 'Bihar');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arunachal Pradesh', 'in', 1183042, 83578, 'Itanagar', 'Arunachal Pradesh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mizoram', 'in', 974614, 21087, 'Aizawl', 'Mizoram');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Assam', 'in', 28019522, 78523, 'Dispur', 'Assam');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Bangla', 'in', 84599353, 87853, 'Calcutta', 'Bangla');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Orissa', 'in', 38431586, 155782, 'Bhubaneswar', 'Orissa');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Madhya Pradesh', 'in', 64989164, 296480, 'Bhopal', 'Madhya Pradesh');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Maharashtra', 'in', 103390867, 307762, 'Bombay', 'Maharashtra');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Karnataka', 'in', 55436928, 191773, 'Bangalore', 'Karnataka');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kerala', 'in', 32621329, 38864, 'Thiruvananthapuram', 'Kerala');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hong Kong', 'cn', 6983938, 1085, 'Victoria', 'Hong Kong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Fujian', 'cn', 34062204, 123603, 'Fuzhou', 'Fujian');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guangdong', 'cn', 77333529, 177933, 'Guangzhou', 'Guangdong');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Guizhou', 'cn', 38090358, 176505, 'Guiyang', 'Guizhou');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hebei', 'cn', 68949170, 187991, 'Shijiazhuang', 'Hebei');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Henan', 'cn', 94811791, 166499, 'Zhengzhou', 'Henan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hunan', 'cn', 67787707, 211836, 'Changsha', 'Hunan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Jiangxi', 'cn', 42590186, 167430, 'Nanchang', 'Jiangxi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Liaoning', 'cn', 41699162, 147785, 'Shenyang', 'Liaoning');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Ningxia', 'cn', 6234044, 55461, 'Yinchuan', 'Ningxia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shaanxi', 'cn', 36881993, 205693, 'Xian', 'Shaanxi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Shanxi', 'cn', 34024073, 157023, 'Taiyuan', 'Shanxi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Yunnan', 'cn', 41997191, 393734, 'Kunming', 'Yunnan');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Xizang', 'cn', 2610891, 1268947, 'Lasa', 'Xizang');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Arizona', 'us', 5863808, 294333, 'Phoenix', 'Arizona');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('California', 'us', 36354316, 403971, 'Sacramento', 'California');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Florida', 'us', 17671451, 139697, 'Tallahassee', 'Florida');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Hawaii', 'us', 1284220, 16636, 'Honolulu', 'Hawaii');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kansas', 'us', 2740760, 211922, 'Topeka', 'Kansas');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Louisiana', 'us', 4515939, 112836, 'Baton Rouge', 'Louisiana');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Massachusetts', 'us', 6460024, 20300, 'Boston', 'Massachusetts');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Missouri', 'us', 5768152, 178446, 'Jefferson City', 'Missouri');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('North Carolina', 'us', 8611367, 126180, 'Raleigh', 'North Carolina');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oklahoma', 'us', 3547050, 177877, 'Oklahoma City', 'Oklahoma');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('South Dakota', 'us', 770185, 196576, 'Pierre', 'South Dakota');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Vermont', 'us', 624501, 23955, 'Montpelier', 'Vermont');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Wyoming', 'us', 505909, 251501, 'Cheyenne', 'Wyoming');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Puebla', 'mx', 5522918, 33919, 'Puebla', 'Puebla');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Darien', 'pa', 42391, 11090.6, 'La Palma', 'Darien');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Olt', 'ro', 479933, 5498, 'Slatina', 'Olt');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Connecticut', 'us', 3527249, 12547, 'Hartford', 'Connecticut');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('District of Columbia', 'us', 552433, 159, 'Washington', 'District of Columbia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Kentucky', 'us', 4165047, 102907, 'Frankfort', 'Kentucky');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Mississippi', 'us', 2901372, 122331, 'Jackson', 'Mississippi');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Nebraska', 'us', 1757399, 199113, 'Lincoln', 'Nebraska');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Jersey', 'us', 8751437, 19210, 'Trenton', 'New Jersey');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('New Mexico', 'us', 1912685, 314334, 'Santa Fe', 'New Mexico');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Oregon', 'us', 3642919, 251385, 'Salem', 'Oregon');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Pennsylvania', 'us', 12411466, 116083, 'Harrisburg', 'Pennsylvania');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Virginia', 'us', 7576559, 102558, 'Richmond', 'Virginia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('West Virginia', 'us', 1817872, 62385, 'Charleston', 'West Virginia');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Caqueta', 'co', 463333, 88965, 'Florencia', 'Caqueta');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('San Jose', 'cr', 1510024, 4959.9, 'San Jose', 'San Jose');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Intibuca', 'hn', 190402, 3072, 'La Esperanza', 'Intibuca');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Idaho', 'us', 1416564, 214325, 'Boise City', 'Idaho');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tennessee', 'us', 5935099, 106759, 'Nashville-Davidson', 'Tennessee');
INSERT INTO Province (Name, Country, Population, Area, Capital, CapProv)
    VALUES ('Tibet', 'cn', 2630000, 1228400, 'Lhasa', 'Tibet');
COMMIT;
