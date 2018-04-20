CREATE TABLE Language (
    Country CHAR(2),
    Name VARCHAR2(50),
    Percentage NUMBER
        CONSTRAINT Language_Percentage_Check CHECK (
             (Percentage > 0) AND (Percentage <= 100)
        ),
    CONSTRAINT Language_Key PRIMARY KEY (Country, Name)
);

INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Magar', 3.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Awadhi', 2.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nr', 'Nauruan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nu', 'Niuean', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nz', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nz', 'Maori', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('om', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('om', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('om', 'Baluchi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('om', 'Urdu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pa', 'English', 14);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pa', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pe', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pe', 'Quechua', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pe', 'Aymara', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pf', 'French', 61.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pf', 'Polynesian', 31.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ph', 'Cebuano', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ph', 'Ilocano', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ph', 'Bicol', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ph', 'Waray', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ph', 'Pampango', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Punjabi', 48);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Sindhi', 12);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Siraiki', 10);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Pashtu', 8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Urdu', 8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Balochi', 3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Hindko', 2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Brahui', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pk', 'Burushaski', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pl', 'Polish', 97.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pm', 'French', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pn', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pn', 'Pitcairnese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pr', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pr', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ps', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ps', 'Hebrew', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ps', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pt', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pt', 'Mirandese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Filipino', 13.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'English', 9.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Chinese', 5.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Carolinian', 1.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Japanese', 1.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Tobi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('pw', 'Angaur', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('py', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('py', 'Guarani', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('qa', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('re', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ro', 'Romanian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ro', 'Hungarian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ro', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('rw', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('rw', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sa', 'Arabic', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sc', 'Creole', 91.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sc', 'English', 4.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sd', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sd', 'Nubian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sd', 'Ta Bedawie', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sd', 'Nilo-Hamitic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sd', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('se', 'Swedish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Mandarin', 35);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'English', 23);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Malay', 14.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Hokkien', 11.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Cantonese', 5.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Teochew', 4.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sg', 'Tamil', 3.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sh', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('si', 'Slovenian', 91.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('si', 'Serbo-Croatian', 4.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sj', 'Norwegian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sj', 'Russian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sk', 'Slovak', 83.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sk', 'Hungarian', 10.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sk', 'Roma', 1.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sk', 'Ukrainian', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sl', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sl', 'Mende', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sl', 'Temne', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sl', 'Krio', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sm', 'Italian', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sn', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sn', 'Wolof', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sn', 'Pulaar', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sn', 'Jola', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sn', 'Mandinka', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('so', 'Somali', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('so', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('so', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('so', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sr', 'Dutch', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sr', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sr', 'Sranang Tongo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sr', 'Hindustani', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sr', 'Javanese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('st', 'Portuguese', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sv', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sv', 'Nahua', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sy', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sy', 'Armenian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sy', 'Aramaic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('sz', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tc', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('td', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('td', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('td', 'Sara', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tg', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('th', 'Thai', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('th', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tj', 'Tajik', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tk', 'Tokelauan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tk', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tm', 'Turkmen', 72);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tm', 'Russian', 12);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tm', 'Uzbek', 9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tn', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tn', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('to', 'Tongan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('to', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tr', 'Turkish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tr', 'Kurdish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tr', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tr', 'Armenian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tr', 'Greek', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tt', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tt', 'Hindi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tt', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tt', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tt', 'Chinese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tv', 'Tuvaluan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tv', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tv', 'Samoan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tv', 'Kiribati', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tw', 'Mandarin Chinese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tw', 'Taiwanese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tz', 'Kiunguja', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tz', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('tz', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ua', 'Ukrainian', 67);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ua', 'Russian', 24);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ug', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ug', 'Swahili', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ug', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uk', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uk', 'Welsh', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('us', 'English', 82.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('us', 'Spanish', 10.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uy', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uy', 'Portunol', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uz', 'Uzbek', 74.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uz', 'Russian', 14.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('uz', 'Tajik', 4.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('va', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('va', 'Latin', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('va', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vc', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ve', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vg', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vi', 'English', 74.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vn', 'Vietnamese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vn', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vn', 'Chinese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vu', 'English', 1.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('vu', 'French', 1.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('wf', 'Wallisian', 58.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('wf', 'Futunian', 30.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('wf', 'French', 10.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ws', 'Samoan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ws', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ye', 'Arabic', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('yt', 'Mahorian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('yu', 'Serbian', 95);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('yu', 'Albanian', 5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'IsiZulu', 23.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'IsiXhosa', 17.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'Afrikaans', 13.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'Sepedi', 9.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'English', 8.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'Setswana', 8.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'Sesotho', 7.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('za', 'Xitsonga', 4.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Kaonda', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Lozi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Lunda', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Luvale', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Nyanja', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zm', 'Tonga', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zw', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zw', 'Shona', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('zw', 'Sindebele', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Maithali', 12.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Bhojpuri', 7.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Tharu', 5.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Tamang', 5.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Newar', 3.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fi', 'Finnish', 92);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fi', 'Swedish', 5.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fj', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fj', 'Fijian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fj', 'Hindustani', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fk', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Trukese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Pohnpeian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Yapese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Kosrean', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Ulithian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Woleaian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Nukuoro', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fm', 'Kapingamarangi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fo', 'Faroese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fo', 'Danish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'French', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'Breton', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'Alsatian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'Corsican', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'Catalan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('fr', 'Basque', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ga', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ga', 'Fang', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ga', 'Myene', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ga', 'Nzebi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ga', 'Bandjabi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gd', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ge', 'Georgian', 71);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ge', 'Russian', 9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ge', 'Armenian', 7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ge', 'Azeri', 6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gf', 'French', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gg', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gg', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gh', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gh', 'Moshi-Dagomba', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gh', 'Ewe', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gi', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gi', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gi', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gi', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gl', 'Greenlandic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gl', 'Danish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gl', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gm', 'Mandinka', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gm', 'Wolof', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gm', 'Fula', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gn', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gp', 'French', 99);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gq', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gq', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gq', 'Fang', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gq', 'Bubi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gq', 'Ibo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gr', 'Greek', 99);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gr', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gr', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gt', 'Spanish', 60);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gt', 'Cakchiquel', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gt', 'Kekchi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gt', 'Mam', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gt', 'Garifuna', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gu', 'English', 38.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gu', 'Chamorro', 22.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gw', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gw', 'Crioulo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gy', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gy', 'Creole', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gy', 'Hindi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('gy', 'Urdu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hn', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hr', 'Croatian', 96.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hr', 'Serbian', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hr', 'Hungarian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hr', 'Czech', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hr', 'Slovak', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ht', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ht', 'Creole', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('hu', 'Hungarian', 93.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('id', 'Bahasa Indonesia', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('id', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('id', 'Dutch', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('il', 'Hebrew', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('im', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('im', 'Manx Gaelic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Telugu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Marathi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Tamil', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Urdu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Gujarati', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Malayalam', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Kannada', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Oriya', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Punjabi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Assamese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Kashmiri', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('in', 'Sindhi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('iq', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('iq', 'Kurdish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('iq', 'Assyrian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('iq', 'Armenian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ir', 'Kurdish', 9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ir', 'Luri', 2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ir', 'Balochi', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ir', 'Arabic', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ir', 'Turkish', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('is', 'Icelandic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('is', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('it', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('it', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('it', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('it', 'Slovene', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('je', 'English', 94.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('je', 'Portuguese', 4.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('jm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('jo', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('jp', 'Japanese', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ke', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ke', 'Kiswahili', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kg', 'Kyrgyz', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kg', 'Russian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kh', 'Khmer', 95);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kh', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kh', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ki', 'I-Kiribati', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ki', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('km', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('km', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('km', 'Shikomoro', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kn', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kp', 'Korean', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kr', 'Korean', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kw', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ky', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kz', 'Kazakh', 64.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('kz', 'Russian', 95);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('la', 'Lao', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('la', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('la', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lb', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lb', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lb', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lb', 'Armenian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lc', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('li', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lk', 'Sinhala', 74);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lk', 'Tamil', 18);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lr', 'English', 20);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ls', 'Sesotho', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ls', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ls', 'Zulu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ls', 'Xhosa', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lt', 'Lithuanian', 82);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lt', 'Russian', 8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lt', 'Polish', 5.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lu', 'Luxembourgish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lu', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lu', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lv', 'Latvian', 58.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('lv', 'Russian', 37.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ly', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ly', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ly', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ma', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mc', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mc', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mc', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mc', 'Monegasque', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('md', 'Moldovan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('md', 'Russian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('md', 'Gagauz', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mg', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mg', 'Malagasy', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mh', 'Marshallese', 98.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mk', 'Macedonian', 66.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mk', 'Albanian', 25.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mk', 'Turkish', 3.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mk', 'Roma', 1.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mk', 'Serbian', 1.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ml', 'Bambara', 80);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ml', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mm', 'Burmese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mn', 'Khalkha Mongol', 90);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mn', 'Turkic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mn', 'Russian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mp', 'Chinese', 23.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mp', 'Chamorro', 22.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mp', 'English', 10.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mq', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'Pulaar', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'Soninke', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'Hassaniya', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mr', 'Wolof', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ms', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mt', 'Maltese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mt', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mu', 'Creole', 80.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mu', 'Bhojpuri', 12.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mu', 'French', 3.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mv', 'Maldivian Dhivehi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chichewa', 57.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ad', 'Catalan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ad', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ad', 'Castilian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ad', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ae', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ae', 'Persian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ae', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ae', 'Hindi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ae', 'Urdu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('af', 'Afghan Persian', 50);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('af', 'Pashtu', 35);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ag', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ai', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('al', 'Albanian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('al', 'Greek', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('al', 'Vlach', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('al', 'Romani', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('am', 'Armenian', 97.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('am', 'Yezidi', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('am', 'Russian', .9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('an', 'Papiamento', 65.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('an', 'English', 15.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('an', 'Dutch', 7.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('an', 'Spanish', 6.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('an', 'Creole', 1.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ao', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ar', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ar', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ar', 'Italian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ar', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ar', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('as', 'Samoan', 90.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('as', 'English', 2.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('as', 'Tongan', 2.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('at', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('at', 'Slovene', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('at', 'Croatian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('at', 'Hungarian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('au', 'English', 79.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('au', 'Chinese', 2.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('au', 'Italian', 1.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('aw', 'Dutch', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('aw', 'Papiamento', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('aw', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('aw', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('az', 'Azeri', 89);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('az', 'Russian', 3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('az', 'Armenian', 2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ba', 'Bosnian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ba', 'Croatian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ba', 'Serbian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bb', 'English', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bd', 'Bangla', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bd', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('be', 'Dutch', 60);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('be', 'French', 40);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bf', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bg', 'Bulgarian', 84.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bg', 'Turkish', 9.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bg', 'Roma', 4.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bh', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bh', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bh', 'Farsi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bh', 'Urdu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bi', 'Kirundi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bi', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bi', 'Swahili', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bj', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bm', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bn', 'Malay', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bn', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bn', 'Chinese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bo', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bo', 'Quechua', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bo', 'Aymara', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('br', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('br', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('br', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('br', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bs', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bs', 'Creole', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bt', 'Dzongkha', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bw', 'Setswana', 78.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bw', 'Kalanga', 7.9);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bw', 'Sekgalagadi', 2.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bw', 'English', 2.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('by', 'Belarusian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('by', 'Russian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bz', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bz', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bz', 'Mayan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bz', 'Garifuna', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('bz', 'Creole', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ca', 'English', 59.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ca', 'French', 23.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cc', 'Malay', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cc', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cd', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cd', 'Lingala', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cd', 'Kingwana', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cd', 'Kikongo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cd', 'Tshiluba', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cf', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cf', 'Sangho', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cg', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'German', 63.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'French', 20.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Italian', 6.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Serbo-Croatian', 1.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Albanian', 1.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Portuguese', 1.2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Spanish', 1.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'English', 1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ch', 'Romansch', .5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ci', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ck', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ck', 'Maori', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cl', 'Spanish', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cm', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Yue', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Wu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Minbei', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Minnan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Xiang', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cn', 'Gan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('co', 'Spanish', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cr', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cr', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cu', 'Spanish', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cv', 'Portuguese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cv', 'Crioulo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cx', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cx', 'Chinese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cx', 'Malay', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cy', 'Greek', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cy', 'Turkish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cy', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('cz', 'Czech', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('de', 'German', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dj', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dj', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dj', 'Somali', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dj', 'Afar', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dk', 'Danish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dk', 'Faroese', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dk', 'Greenlandic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dk', 'German', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dm', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('do', 'Spanish', 100);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dz', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('dz', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ec', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ee', 'Estonian', 67.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ee', 'Russian', 29.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('eg', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('eh', 'Hassaniya Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('eh', 'Moroccan Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('er', 'Afar', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('er', 'Arabic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('er', 'Tigrinya', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('es', 'Castilian Spanish', 74);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('es', 'Catalan', 17);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('es', 'Galician', 7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('es', 'Basque', 2);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Amharic', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Tigrinya', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Oromigna', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Guaragigna', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('et', 'Somali', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chinyanja', 12.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chiyao', 10.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chitumbuka', 9.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chisena', 2.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chilomwe', 2.4);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mw', 'Chitonga', 1.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mx', 'Spanish', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mx', 'Nahuatl', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Bahasa Melayu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Mandarin', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Hokkien', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Hakka', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Hainan', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Tamil', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Telugu', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Malayalam', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Panjabi', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('my', 'Thai', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Emakhuwa', 26.1);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Xichangana', 11.3);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Portuguese', 8.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Elomwe', 7.6);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Cisena', 6.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('mz', 'Echuwabo', 5.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('na', 'English', 7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('na', 'German', 32);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('na', 'Herero', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('na', 'Nama', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nc', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ne', 'French', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ne', 'Hausa', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ne', 'Djerma', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nf', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ng', 'English', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ng', 'Hausa', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ng', 'Yoruba', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ng', 'Igbo', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ng', 'Fulani', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ni', 'Spanish', 97.5);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ni', 'Miskito', 1.7);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nl', 'Dutch', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('nl', 'Frisian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('no', 'Bokmal Norwegian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('no', 'Nynorsk Norwegian', NULL);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('np', 'Nepali', 47.8);
INSERT INTO Language (Country, Name, Percentage)
    VALUES ('ru', 'Russian', NULL);
COMMIT;
