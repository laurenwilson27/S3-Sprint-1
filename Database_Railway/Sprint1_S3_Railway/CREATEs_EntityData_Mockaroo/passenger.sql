CREATE TABLE Passenger (
    Passenger_ID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Birthdate DATE,
    Gender VARCHAR(50),
    Phone VARCHAR(50),
    Email VARCHAR(50),
    Address_ID INT,
    FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);

insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (1, 'Paulie Letts', '1988-07-12', 'Agender', '(796) 3101412', 'pletts0@drupal.org', 2000138);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (2, 'Eleni Arboin', '1957-01-15', 'Female', '(216) 1002056', 'earboin1@ucsd.edu', 2000119);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (3, 'Barby Trollope', '1965-07-19', 'Female', '(581) 9570350', 'btrollope2@vinaora.com', 2000126);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (4, 'Clementius Blaydes', '2010-06-09', 'Male', '(765) 9332182', 'cblaydes3@oracle.com', 2000141);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (5, 'Cristal Blanque', '1985-10-20', 'Female', '(216) 9908930', 'cblanque4@dagondesign.com', 2000150);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (6, 'Robinetta Maffione', '2008-02-27', 'Female', '(476) 5049342', 'rmaffione5@hugedomains.com', 2000105);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (7, 'Alexandra Linebarger', '2006-05-28', 'Female', '(720) 5029388', 'alinebarger6@unesco.org', 2000132);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (8, 'Giulietta Badland', '1993-07-30', 'Female', '(748) 6080433', 'gbadland7@elpais.com', 2000106);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (9, 'Jobye Francklin', '1964-07-22', 'Female', '(193) 1693839', 'jfrancklin8@ca.gov', 2000122);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (10, 'Thorny Hanselman', '2006-08-14', 'Male', '(366) 3407937', 'thanselman9@army.mil', 2000112);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (11, 'Harley Gittis', '1979-02-07', 'Female', '(162) 3744856', 'hgittisa@stumbleupon.com', 2000117);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (12, 'Hercule Hazeley', '2011-08-12', 'Male', '(331) 2563814', 'hhazeleyb@youtube.com', 2000114);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (13, 'Verine Graalman', '1976-10-09', 'Female', '(668) 6497785', 'vgraalmanc@altervista.org', 2000116);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (14, 'Marlo Rapsey', '1953-02-20', 'Male', '(889) 3655515', 'mrapseyd@house.gov', 2000109);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (15, 'Zared Pendre', '2022-04-04', 'Male', '(901) 8519472', 'zpendree@mac.com', 2000113);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (16, 'Staford Grigoletti', '1964-08-17', 'Male', '(388) 1306988', 'sgrigolettif@dailymotion.com', 2000135);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (17, 'Meghann Barker', '1975-01-31', 'Female', '(233) 6289081', 'mbarkerg@utexas.edu', 2000133);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (18, 'Farra Hydes', '1967-03-30', 'Female', '(794) 8906036', 'fhydesh@answers.com', 2000132);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (19, 'Any Frances', '1988-08-19', 'Male', '(314) 5419893', 'afrancesi@privacy.gov.au', 2000130);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (20, 'Elwira McGann', '2005-01-18', 'Female', '(416) 1329172', 'emcgannj@cloudflare.com', 2000129);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (21, 'Vachel Haller', '1997-02-25', 'Male', '(123) 2141290', 'vhallerk@tumblr.com', 2000140);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (22, 'Barde Bartrap', '1991-09-04', 'Male', '(118) 5953545', 'bbartrapl@bandcamp.com', 2000145);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (23, 'Stafford Batchelar', '1940-04-14', 'Male', '(420) 4295658', 'sbatchelarm@ameblo.jp', 2000122);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (24, 'Genevieve Du Barry', '1954-09-01', 'Female', '(769) 3075232', 'gdun@businessweek.com', 2000100);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (25, 'Cody Hatch', '1961-08-08', 'Female', '(836) 4887823', 'chatcho@spotify.com', 2000104);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (26, 'Meara Giovannoni', '1973-07-09', 'Female', '(639) 7582437', 'mgiovannonip@icio.us', 2000107);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (27, 'Genovera Dinsell', '2006-12-10', 'Female', '(380) 6844587', 'gdinsellq@imageshack.us', 2000130);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (28, 'Sosanna Liggens', '2014-03-26', 'Female', '(604) 9333241', 'sliggensr@bigcartel.com', 2000126);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (29, 'Dermot Maughan', '1950-11-14', 'Male', '(868) 6988515', 'dmaughans@hexun.com', 2000147);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (30, 'Chaunce Lewcock', '2006-08-08', 'Male', '(812) 1228865', 'clewcockt@utexas.edu', 2000147);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (31, 'Helge MacKaig', '1953-10-03', 'Female', '(973) 7137953', 'hmackaigu@army.mil', 2000134);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (32, 'Norby Haysar', '1962-01-13', 'Male', '(164) 6952189', 'nhaysarv@woothemes.com', 2000133);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (33, 'Fayette Gannon', '1979-06-01', 'Polygender', '(597) 2341440', 'fgannonw@tinyurl.com', 2000116);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (34, 'Dew Maken', '2013-10-29', 'Male', '(660) 3217671', 'dmakenx@europa.eu', 2000147);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (35, 'Gladi L''Homme', '1987-09-06', 'Female', '(279) 1873213', 'glhommey@biglobe.ne.jp', 2000109);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (36, 'Vin Alcorn', '1999-09-26', 'Female', '(825) 3237230', 'valcornz@springer.com', 2000144);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (37, 'Connie Billings', '1972-09-22', 'Female', '(957) 1701029', 'cbillings10@auda.org.au', 2000109);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (38, 'Oswald Maundrell', '1941-12-30', 'Male', '(707) 8965179', 'omaundrell11@dailymotion.com', 2000110);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (39, 'Bertie Sawley', '2020-12-03', 'Female', '(470) 4938604', 'bsawley12@youku.com', 2000111);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (40, 'Jay Smithson', '1956-06-23', 'Polygender', '(725) 2216579', 'jsmithson13@sitemeter.com', 2000135);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (41, 'Obadias Tebald', '1943-01-11', 'Male', '(360) 6298378', 'otebald14@ihg.com', 2000108);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (42, 'Niles Peatman', '1955-06-13', 'Male', '(679) 2684374', 'npeatman15@so-net.ne.jp', 2000132);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (43, 'Jimmie Nazareth', '1957-04-06', 'Male', '(419) 6686117', 'jnazareth16@businessinsider.com', 2000129);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (44, 'Zacherie Belham', '2014-07-25', 'Male', '(275) 3594970', 'zbelham17@pinterest.com', 2000145);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (45, 'Ransom Doring', '2008-11-19', 'Male', '(223) 1698173', 'rdoring18@sciencedaily.com', 2000131);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (46, 'Royce Trazzi', '1945-12-24', 'Genderqueer', '(800) 7858056', 'rtrazzi19@time.com', 2000104);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (47, 'Derril Usborn', '2013-10-19', 'Male', '(356) 1303179', 'dusborn1a@vkontakte.ru', 2000139);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (48, 'Yetty Fowden', '1973-04-21', 'Female', '(692) 6280678', 'yfowden1b@ameblo.jp', 2000134);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (49, 'Ancell Glinde', '1971-06-04', 'Male', '(489) 8294808', 'aglinde1c@slate.com', 2000109);
insert into Passenger (Passenger_ID, Name, Birthdate, Gender, Phone, Email, Address_ID) values (50, 'Jeana Vasyutin', '1951-10-07', 'Female', '(192) 6334527', 'jvasyutin1d@hhs.gov', 2000104);

select * from Passenger