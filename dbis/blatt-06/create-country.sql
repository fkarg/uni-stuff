CREATE TABLE Country (
    Name VARCHAR2(40)
        CONSTRAINT Country_Name_NotNull NOT NULL
        CONSTRAINT Country_Name_Unique UNIQUE,
    Code CHAR(2)
        CONSTRAINT Country_Key PRIMARY KEY,
    Capital VARCHAR2(40),
    Province VARCHAR2(40),
    Population NUMBER
        CONSTRAINT Country_Population_Check CHECK (
             Population >= 0
        ),
    Area NUMBER
        CONSTRAINT Country_Area_Check CHECK (
             Area >= 0
        )
);

INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Andorra', 'ad', 'Andorra la Vella', 'Andorra la Vella', 69865, 468);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('United Arab Emirates', 'ae', 'Abu Dhabi', 'Abu Dhabi', 2523915, 82880);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Afghanistan', 'af', 'Kabul', 'Kabul', 28513677, 647500);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Antigua and Barbuda', 'ag', 'Saint Johns', 'Saint John', 68320, 442.6);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Anguilla', 'ai', NULL, NULL, 13008, 102);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Albania', 'al', 'Tirana', 'Tirana', 3544808, 28748);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Armenia', 'am', 'Yerevan', 'Yerevan', 2991360, 29800);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Netherlands Antilles', 'an', 'Willemstad', 'Curacao', 218126, 960);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Angola', 'ao', 'Luanda', 'Luanda', 10978552, 1246700);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Argentina', 'ar', 'Buenos Aires', 'Buenos Aires', 39144753, 2766890);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('American Samoa', 'as', 'Pago Pago', 'Eastern', 57902, 199);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Austria', 'at', 'Vienna', 'Wien', 8174762, 83870);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Australia', 'au', 'Canberra', 'Australian Capital Territory', 19913144, 7686850);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Aruba', 'aw', NULL, NULL, 71218, 193);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Azerbaijan', 'az', 'Baku', 'Baki', 7868385, 86600);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bosnia and Herzegovina', 'ba', 'Sarajevo', 'Federacija Bosna i Hercegovina', 4007608, 51129);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Barbados', 'bb', 'Bridgetown', 'Saint Michael', 278289, 431);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bangladesh', 'bd', 'Dhaka', 'Dhaka', 141340476, 144000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Belgium', 'be', 'Brussels', 'Brussels', 10348276, 30528);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Burkina Faso', 'bf', 'Ouagadougou', 'Kadiogo', 13574820, 274200);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bulgaria', 'bg', 'Sofia', 'Sofija grad', 7517973, 110910);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bahrain', 'bh', 'Manama', 'Manama', 677886, 665);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Burundi', 'bi', 'Bujumbura', 'Bujumbura', 6231221, 27830);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Benin', 'bj', 'Porto Novo', 'Oueme', 7250033, 112620);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bermuda', 'bm', 'Hamilton', 'Hamilton', 64935, 53.3);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Brunei', 'bn', 'Bandar Seri Begawan', 'Brunei-Muara', 365251, 5770);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bolivia', 'bo', 'La Paz', 'La Paz', 8724156, 1098580);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Brazil', 'br', 'Brasilia', 'Distrito Federal', 184101109, 8511965);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bahamas', 'bs', 'Nassau', 'New Providence', 299697, 13940);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Bhutan', 'bt', 'Timphu', 'Timphu', 2185569, 47000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Botswana', 'bw', 'Gaborone', 'Gaborone', 1561973, 600370);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Belarus', 'by', 'Minsk', 'Minsk', 10310520, 207600);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Belize', 'bz', 'Belmopan', 'Cayo', 272945, 22966);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Canada', 'ca', 'Ottawa', 'Ontario', 32507874, 9984670);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cocos Islands', 'cc', NULL, NULL, 629, 14);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Democratic Republic of the Congo', 'cd', 'Kinshasa', 'Kinshasa', 58317930, 2345410);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Central African Republic', 'cf', 'Bangui', 'Bangui', 3742482, 622984);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Republic of the Congo', 'cg', 'Brazzaville', 'Brazzaville', 2998040, 342000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Switzerland', 'ch', 'Bern', 'Bern', 7450867, 41290);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cote dIvoire', 'ci', 'Yamoussoukro', 'Lacs', 17327724, 322460);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cook Islands', 'ck', 'Avarua', 'Rarotonga', 21200, 240);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Chile', 'cl', 'Santiago', 'Metropolitana', 15823957, 756950);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cameroon', 'cm', 'Yaounde', 'Centre', 16063678, 475440);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('China', 'cn', 'Peking', 'Peking', 1298847624, 9596960);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Colombia', 'co', 'Bogota', 'Bogota', 42310775, 1138910);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Costa Rica', 'cr', 'San Jose', 'San Jose', 3956507, 51100);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cuba', 'cu', 'Havanna', 'Ciudad de la Habana', 11308764, 110860);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cape Verde', 'cv', 'Praia', 'Sao Tiago', 415294, 4033);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Christmas Island', 'cx', NULL, NULL, 396, 135);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cyprus', 'cy', 'Nicosia', 'Government controlled area', 775927, 9250);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Czech Republic', 'cz', 'Prague', 'Prague', 10246178, 78866);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Germany', 'de', 'Berlin', 'Berlin', 82424609, 357021);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Djibouti', 'dj', 'Jibuti', 'Jibuti', 466900, 23000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Denmark', 'dk', 'Copenhagen', 'Frederiksberg Kommune', 5413392, 43094);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Dominica', 'dm', 'Roseau', 'Saint George', 69278, 754);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Dominican Republic', 'do', 'Santo Domingo', 'Distrito Nacional', 8833634, 48730);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Algeria', 'dz', 'Algiers', 'Algiers', 32129324, 2381740);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Ecuador', 'ec', 'Quito', 'Pichincha', 13212742, 283560);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Estonia', 'ee', 'Tallinn', 'Harju', 1341664, 45226);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Egypt', 'eg', 'Cairo', 'Cairo', 76117421, 1001450);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Western Sahara', 'eh', NULL, NULL, 267405, 266000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Eritrea', 'er', 'Asmara', 'Maekel', 4447307, 121320);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Spain', 'es', 'Madrid', 'Madrid', 40280780, 504782);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Ethiopia', 'et', 'Addis Abeba', 'Addis Abeba', 67851281, 1127127);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Finland', 'fi', 'Helsinki', 'Uusimaa', 5214512, 338145);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Fiji', 'fj', 'Suva', 'Central', 880874, 18270);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Falkland Islands', 'fk', 'Port Stanley', 'Falkland Islands', 2967, 12173);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Micronesia', 'fm', 'Palikir', 'Pohnpei', 108155, 702);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Faroe Islands', 'fo', 'Torshavn', 'Torshavn', 46662, 1399);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('France', 'fr', 'Paris', 'Paris', 60424213, 547030);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Gabon', 'ga', 'Libreville', 'Estuaire', 1355246, 267667);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Grenada', 'gd', 'Saint Georges', 'Saint George', 89357, 344);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Georgia', 'ge', 'Tbilisi', 'Tbilisi', 4693892, 69700);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('French Guiana', 'gf', 'Cayenne', 'Cayenne', 191309, 91000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guernsey', 'gg', 'Saint Peter Port', 'Saint Peter Port', 65031, 78);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Ghana', 'gh', 'Accra', 'Greater Accra', 20757032, 239460);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Gibraltar', 'gi', NULL, NULL, 27833, 6.5);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Greenland', 'gl', 'Nuuk', 'Nuuk', 56384, 2166086);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Gambia', 'gm', 'Banjul', 'Banjul', 1546848, 11300);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guinea', 'gn', 'Conakry', 'Conakry', 9246462, 245857);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guadeloupe', 'gp', 'Basse-Terre', 'Basse-Terre', 444515, 1780);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Equatorial Guinea', 'gq', 'Malabo', 'Bioko Norte', 523051, 28051);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Greece', 'gr', 'Athens', 'Attiki', 10647529, 131940);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guatemala', 'gt', 'Guatemala', 'Guatemala', 14280596, 108890);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guam', 'gu', 'Agana', 'Hagatna', 166090, 549);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guinea Bissau', 'gw', 'Bissau', 'Bissau', 1388363, 36120);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Guyana', 'gy', 'Georgetown', 'Demerara-Mahaica', 705803, 214970);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Honduras', 'hn', 'Tegucigalpa', 'Distrito Central', 6823568, 112090);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Croatia', 'hr', 'Zagreb', 'Grad Zagreb', 4496869, 56542);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Haiti', 'ht', 'Port-au-Prince', 'Ouest', 7656166, 27750);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Hungary', 'hu', 'Budapest', 'Budapest', 10032375, 93030);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Indonesia', 'id', 'Jakarta', 'Jakarta', 238452952, 1919440);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Ireland', 'ie', 'Dublin', 'Dublin', 3969558, 70280);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Israel', 'il', 'Jerusalem', 'Jerusalem', 6199008, 20770);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Isle of Man', 'im', 'Douglas', 'Douglas', 74655, 572);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('India', 'in', 'Delhi', 'Delhi', 1065070607, 3287590);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Iraq', 'iq', 'Baghdad', 'Baghdad', 25374691, 437072);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Iran', 'ir', 'Tehran', 'Tehran', 69018924, 1648000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Iceland', 'is', 'Reykjavik', 'Hoefueborgarsvaeei', 293966, 103000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Italy', 'it', 'Rome', 'Lazio', 58057477, 301230);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Jersey', 'je', 'Saint Helier', 'Saint Helier', 90502, 116);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Jamaica', 'jm', 'Kingston', 'Kingston', 2713130, 10991);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Jordan', 'jo', 'Amman', 'Amman', 5611202, 92300);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Japan', 'jp', 'Tokyo', 'Tokyo', 127333002, 377835);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Kenya', 'ke', 'Nairobi', 'Nairobi', 32021856, 582650);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Kyrgyzstan', 'kg', 'Biskek', 'Biskek', 5081429, 198500);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cambodia', 'kh', 'Phnum Penh', 'Phnum Penh', 13363421, 181040);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Kiribati', 'ki', 'Bairiki', 'Tarawa South', 100798, 811);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Comoros', 'km', 'Moroni', 'Ngazidja', 651901, 2170);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saint Kitts and Nevis', 'kn', 'Basseterre', 'Saint George Basseterre', 38836, 261);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('North Korea', 'kp', 'Pyongyang', 'Pyongyang', 22697553, 120540);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('South Korea', 'kr', 'Soul', 'Soul', 48598175, 98480);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Kuwait', 'kw', 'al-Kuwayt', 'al-Asamah', 2257549, 17820);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Cayman Islands', 'ky', 'George Town', 'Grand Cayman', 43103, 262);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Kazakhstan', 'kz', 'Astana', 'Aqmola', 15143704, 2717300);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Laos', 'la', 'Vientiane', 'Viangchan Prefecture', 6068117, 236800);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Lebanon', 'lb', 'Bayrut', 'Bayrut', 3777218, 10400);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saint Lucia', 'lc', 'Castries', 'Castries', 164213, 616);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Liechtenstein', 'li', 'Vaduz', 'Vaduz', 33436, 160);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Sri Lanka', 'lk', 'Colombo', 'Colombo', 19905165, 65610);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Liberia', 'lr', 'Monrovia', 'Montserrado', 3390635, 111370);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Lesotho', 'ls', 'Maseru', 'Maseru', 1865040, 30355);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Lithuania', 'lt', 'Vilnius', 'Vilniaus', 3607899, 65200);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Luxembourg', 'lu', 'Luxemburg', 'Luxembourg', 462690, 2586);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Latvia', 'lv', 'Riga', 'Riga', 2306306, 64589);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Libya', 'ly', 'Tripoli', 'Tripoli', 5631585, 1759540);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Morocco', 'ma', 'Rabat', 'Rabat-Sale-Zammour-Zaer', 32209101, 446550);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Monaco', 'mc', 'Monaco-Ville', 'Monaco-Ville', 32270, 1.95);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Moldova', 'md', 'Chisinau', 'Chisinau Oras', 4446455, 33843);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Madagascar', 'mg', 'Antananarivo', 'Antananarivo', 17501871, 587040);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Marshall Islands', 'mh', NULL, NULL, 57738, 181.3);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Macedonia', 'mk', 'Skopje', 'Skopje', 2071210, 25333);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mali', 'ml', 'Bamako', 'Bamako', 11956788, 1240000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Burma', 'mm', 'Rangoon', 'Rangoon', 42720196, 678500);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mongolia', 'mn', 'Ulaanbaatar', 'Ulaanbaatar', 2751314, 1564116);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Northern Mariana Islands', 'mp', 'Capital Hill', 'Saipan', 78252, 477);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Martinique', 'mq', 'Fort-de-France', 'Fort-de-France', 429510, 1100);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mauritania', 'mr', 'Nouakchott', 'Nouakchott', 2998563, 1030700);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Montserrat', 'ms', NULL, NULL, 9245, 102);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Malta', 'mt', 'Valletta', 'Inner Harbour', 396851, 316);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mauritius', 'mu', 'Port Louis', 'Black River', 1220481, 2040);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Maldives', 'mv', 'Male', 'Male', 339330, 300);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Malawi', 'mw', 'Lilongwe', 'Lilongwe City', 11906855, 118480);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mexico', 'mx', 'Mexico City', 'Distrito Federal', 104959594, 1972550);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Malaysia', 'my', 'Kuala Lumpur', 'Kuala Lumpur', 23522482, 329750);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mozambique', 'mz', 'Maputo', 'Maputo', 18811731, 801590);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Namibia', 'na', 'Windhoek', 'Khomas', 1954033, 825418);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('New Caledonia', 'nc', 'Noumea', 'Sud', 213679, 19060);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Niger', 'ne', 'Niamey', 'Niamey', 11360538, 1267000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Norfolk Island', 'nf', NULL, NULL, 1841, 34.6);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Nigeria', 'ng', 'Abuja', 'Abuja Federal Capital Territory', 137253133, 923768);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Nicaragua', 'ni', 'Managua', 'Managua', 5359759, 129494);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Netherlands', 'nl', 'Amsterdam', 'Noord-Holland', 16318199, 41526);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Norway', 'no', 'Oslo', 'Akershus', 4574560, 324220);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Nepal', 'np', 'Kathmandu', 'Kathmandu', 27070666, 140800);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Nauru', 'nr', NULL, NULL, 12809, 21);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Niue', 'nu', NULL, NULL, 2156, 260);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('New Zealand', 'nz', 'Wellington', 'Wellington', 3993817, 268680);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Oman', 'om', 'Muscat', 'Muscat', 2903165, 212460);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Panama', 'pa', 'Panama', 'Panama', 3000463, 78200);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Peru', 'pe', 'Lima', 'Lima y Callao', 27544305, 1285220);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('French Polynesia', 'pf', 'Papeete', 'Iles du Vent', 266339, 4167);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Papua New Guinea', 'pg', 'Port Moresby', 'National Capital District', 5420280, 462840);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Philippines', 'ph', 'Manila', 'National Capital Region', 86241697, 300000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Pakistan', 'pk', 'Islamabad', 'Federal Capital Area', 159196336, 803940);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Poland', 'pl', 'Warsaw', 'Mazowieckie', 38626349, 312685);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saint Pierre and Miquelon', 'pm', 'Saint-Pierre', 'Saint-Pierre', 6995, 242);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Pitcairn Islands', 'pn', NULL, NULL, 46, 47);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Puerto Rico', 'pr', 'San Juan', 'San Juan', 3897960, 9104);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Palestine', 'ps', 'Ramallah', 'Gaza Strip', 3762005, 6220);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Portugal', 'pt', 'Lisbon', 'Lisboa e Vale do Tejo', 10524145, 92391);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Palau', 'pw', 'Koror', 'Koror', 20016, 458);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Paraguay', 'py', 'Asuncion', 'Asuncion', 6191368, 406750);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Qatar', 'qa', 'Doha', 'Doha', 840290, 11437);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Reunion', 're', 'Saint-Denis', 'Saint-Denis', 766153, 2517);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Romania', 'ro', 'Bucharest', 'Bucharest', 22355551, 237500);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Russia', 'ru', 'Moscow', 'Moscow', 143782338, 17075200);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Rwanda', 'rw', 'Kigali', 'Ville de Kigali', 7954013, 26338);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saudi Arabia', 'sa', 'Riyadh', 'Riyadh', 25795938, 1960582);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Solomon Islands', 'sb', 'Honiara', 'Guadalcanal', 523617, 28450);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Seychelles', 'sc', NULL, NULL, 80832, 455);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Sudan', 'sd', 'Khartoum', 'Khartoum', 39148162, 2505810);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Sweden', 'se', 'Stockholm', 'Stockholm', 8986400, 449964);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Singapore', 'sg', NULL, NULL, 4353893, 692.7);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saint Helena', 'sh', 'Jamestown', 'Saint Helena', 7415, 410);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Slovenia', 'si', 'Ljubljana', 'Osrednjeslovenska', 2011473, 20273);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Svalbard', 'sj', 'Longyearbyen', 'Svalbard', 2756, 62049);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Slovakia', 'sk', 'Bratislava', 'Bratislavsky', 5423567, 48845);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Sierra Leone', 'sl', 'Freetown', 'Western', 5883889, 71740);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('San Marino', 'sm', 'San Marino', 'San Marino', 28503, 61.2);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Senegal', 'sn', 'Dakar', 'Dakar', 10852147, 196190);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Somalia', 'so', 'Mogadishu', 'Banadir', 8304601, 637657);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Suriname', 'sr', 'Paramaribo', 'Paramaribo', 436935, 163270);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Sao Tome and Principe', 'st', 'Sao Tome', 'Agua Grande', 181565, 1001);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('El Salvador', 'sv', 'San Salvador', 'San Salvador', 6587541, 21040);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Syria', 'sy', 'Damascus', 'Damascus', 18016874, 185180);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Swaziland', 'sz', 'Mbabane', 'Hhohho', 1169241, 17363);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Turks and Caicos Islands', 'tc', NULL, NULL, 19956, 430);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Chad', 'td', 'NDjamena', 'Chari-Baguirmi', 9538544, 1284000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Togo', 'tg', 'Lome', 'Maritime', 5556812, 56785);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Thailand', 'th', 'Bangkok', 'Bangkok Metropolitan Area', 64865523, 514000);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tajikistan', 'tj', 'Dushanbe', 'Dushanbe', 7011556, 143100);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tokelau', 'tk', NULL, NULL, 1405, 10);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Turkmenistan', 'tm', 'Asgabat', 'Asgabat', 4863169, 488100);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tunisia', 'tn', 'Tunis', 'Tunis', 9974722, 163610);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tonga', 'to', 'Nukualofa', 'Tongatapu', 110237, 748);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('East Timor', 'tp', 'Dili', 'Dili', 1019252, 15007);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Turkey', 'tr', 'Ankara', 'Ankara', 68893918, 780580);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Trinidad and Tobago', 'tt', 'Port of Spain', 'Port of Spain', 1096585, 5128);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tuvalu', 'tv', 'Vaiaku', 'Funafuti', 11468, 26);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Taiwan', 'tw', 'Taipei', 'Taipei Hsien', 22749838, 35980);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Tanzania', 'tz', 'Dar es Salaam', 'Dar es Salaam', 36588225, 945087);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Ukraine', 'ua', 'Kiev', 'Kiev', 47732079, 603700);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Uganda', 'ug', 'Kampala', 'Central', 26404543, 236040);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('United Kingdom', 'uk', 'London', 'England', 60270708, 244820);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('United States', 'us', 'Washington', 'District of Columbia', 293027571, 9631418);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Uruguay', 'uy', 'Montevideo', 'Montevideo', 3399237, 176220);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Uzbekistan', 'uz', 'Tashkent', 'Tashkent', 26410416, 447400);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Holy See', 'va', NULL, NULL, 921, .44);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Saint Vincent and the Grenadines', 'vc', 'Kingstown', 'Saint George', 117193, 389);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Venezuela', 've', 'Caracas', 'Distrito Capital', 25017387, 912050);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('British Virgin Islands', 'vg', 'Road Town', 'Tortola', 22187, 153);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Virgin Islands', 'vi', 'Charlotte Amalie', 'Saint Thomas', 108775, 352);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Vietnam', 'vn', 'Ha Noi', 'Dong Bang Song Hong', 82689518, 329560);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Vanuatu', 'vu', 'Vila', 'Shefa', 202609, 12200);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Wallis and Futuna', 'wf', 'Matautu', 'Hahake', 15880, 274);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Samoa', 'ws', 'Apia', 'Apia Urban Area', 177714, 2944);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Yemen', 'ye', 'Sana', 'Amanah al-Asmah', 20024867, 527970);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Mayotte', 'yt', 'Mamoudzou', 'Mayotte', 186026, 374);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Serbia and Montenegro', 'yu', 'Belgrade', 'Central Serbia', 10825900, 102350);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('South Africa', 'za', 'Pretoria', 'Gauteng', 42718530, 1219912);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Zambia', 'zm', 'Lusaka', 'Lusaka', 10462436, 752614);
INSERT INTO Country (Name, Code, Capital, Province, Population, Area)
    VALUES ('Zimbabwe', 'zw', 'Harare', 'Harare', 12671860, 390580);
COMMIT;
