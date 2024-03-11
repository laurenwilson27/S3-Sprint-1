CREATE TABLE Route (
    Route_ID INT PRIMARY KEY,
    Distance VARCHAR(10),
    Duration VARCHAR(6),
    Notices TEXT,
    DepartureStation VARCHAR(6),
    DestinationStation VARCHAR(6),
    FOREIGN KEY (DepartureStation) REFERENCES Station(Station_ID),
    FOREIGN KEY (DestinationStation) REFERENCES Station(Station_ID)
);

insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (1, '755km', '8h00m', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'STA038', 'STA029');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (2, '798km', '10h15m', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'STA010', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (3, '655km', '10h15m', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'STA031', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (4, '229km', '12h15m', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'STA021', 'STA014');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (5, '681km', '8h15m', 'Fusce posuere felis sed lacus.', 'STA021', 'STA010');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (6, '228km', '2h00m', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'STA023', 'STA039');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (7, '863km', '7h00m', 'Integer ac neque.', 'STA001', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (8, '276km', '12h30m', 'Duis mattis egestas metus.', 'STA023', 'STA026');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (9, '194km', '2h30m', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'STA015', 'STA015');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (10, '614km', '8h00m', 'In sagittis dui vel nisl. Duis ac nibh.', 'STA006', 'STA017');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (11, '980km', '5h15m', 'Phasellus in felis. Donec semper sapien a libero.', 'STA002', 'STA011');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (12, '753km', '3h15m', 'Vestibulum sed magna at nunc commodo placerat.', 'STA014', 'STA033');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (13, '749km', '7h45m', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 'STA038', 'STA008');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (14, '297km', '1h22m', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 'STA019', 'STA011');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (15, '495km', '7h45m', 'Proin interdum mauris non ligula pellentesque ultrices.', 'STA027', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (16, '813km', '11h15m', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'STA037', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (17, '366km', '2h00m', 'Suspendisse potenti.', 'STA031', 'STA030');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (18, '326km', '4h45m', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'STA038', 'STA018');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (19, '622km', '8h15m', 'Integer ac neque. Duis bibendum.', 'STA006', 'STA040');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (20, '536km', '2h30m', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'STA010', 'STA011');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (21, '973km', '5h15m', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'STA018', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (22, '634km', '12h00m', 'Suspendisse potenti.', 'STA014', 'STA016');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (23, '9km', '7h45m', 'Etiam justo. Etiam pretium iaculis justo.', 'STA040', 'STA013');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (24, '112km', '12h15m', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 'STA016', 'STA027');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (25, '444km', '10h15m', 'Etiam faucibus cursus urna.', 'STA006', 'STA033');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (26, '522km', '7h30m', 'Duis at velit eu est congue elementum.', 'STA023', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (27, '588km', '6h00m', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'STA024', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (28, '108km', '2h30m', 'Quisque id justo sit amet sapien dignissim vestibulum.', 'STA006', 'STA032');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (29, '297km', '11h30m', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'STA019', 'STA027');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (30, '835km', '3h00m', 'Proin eu mi. Nulla ac enim.', 'STA007', 'STA028');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (31, '365km', '2h30m', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'STA009', 'STA007');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (32, '313km', '3h00m', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 'STA005', 'STA014');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (33, '579km', '7h00m', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'STA014', 'STA010');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (34, '793km', '4h30m', 'Vestibulum rutrum rutrum neque.', 'STA016', 'STA032');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (35, '439km', '7h15m', 'Duis aliquam convallis nunc.', 'STA010', 'STA017');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (36, '874km', '10h15m', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'STA012', 'STA005');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (37, '41km', '6h30m', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'STA013', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (38, '268km', '2h45m', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'STA023', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (39, '872km', '4h15m', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 'STA019', 'STA040');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (40, '95km', '4h45m', 'Duis bibendum. Morbi non quam nec dui luctus rutrum.', 'STA010', 'STA019');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (41, '694km', '10h00m', 'Nulla suscipit ligula in lacus.', 'STA028', 'STA033');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (42, '329km', '4h15m', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'STA005', 'STA024');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (43, '494km', '2h45m', 'Pellentesque ultrices mattis odio.', 'STA027', 'STA002');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (44, '633km', '10h15m', 'Integer a nibh.', 'STA029', 'STA018');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (45, '247km', '9h45m', 'Curabitur in libero ut massa volutpat convallis.', 'STA035', 'STA005');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (46, '102km', '7h00m', 'Aliquam quis turpis eget elit sodales scelerisque.', 'STA038', 'STA021');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (47, '203km', '5h30m', 'Nulla ac enim.', 'STA035', 'STA010');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (48, '756km', '9h45m', 'In hac habitasse platea dictumst.', 'STA018', 'STA031');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (49, '772km', '11h15m', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'STA024', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (50, '989km', '1h45m', 'Suspendisse potenti. In eleifend quam a odio.', 'STA017', 'STA001');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (51, '373km', '2h30m', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'STA002', 'STA035');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (52, '558km', '9h45m', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'STA018', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (53, '654km', '10h15m', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'STA013', 'STA020');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (54, '927km', '7h00m', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'STA018', 'STA009');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (55, '599km', '6h15m', 'Quisque ut erat.', 'STA002', 'STA026');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (56, '634km', '5h30m', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'STA020', 'STA037');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (57, '956km', '4h45m', 'Pellentesque eget nunc.', 'STA022', 'STA025');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (58, '200km', '6h00m', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'STA035', 'STA003');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (59, '33km', '2h00m', 'Suspendisse accumsan tortor quis turpis.', 'STA015', 'STA020');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (60, '558km', '7h15m', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'STA007', 'STA019');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (61, '189km', '2h30m', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 'STA002', 'STA016');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (62, '343km', '12h00m', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'STA029', 'STA026');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (63, '688km', '10h15m', 'Nulla mollis molestie lorem.', 'STA024', 'STA008');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (64, '433km', '12h00m', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'STA040', 'STA017');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (65, '875km', '1h15m', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'STA037', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (66, '819km', '6h00m', 'Fusce consequat.', 'STA017', 'STA023');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (67, '46km', '7h45m', 'Maecenas rhoncus aliquam lacus.', 'STA025', 'STA008');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (68, '119km', '2h30m', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 'STA014', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (69, '539km', '11h45m', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'STA026', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (70, '219km', '2h30m', 'Fusce consequat.', 'STA032', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (71, '204km', '8h00m', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'STA020', 'STA031');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (72, '810km', '3h00m', 'Aenean lectus. Pellentesque eget nunc.', 'STA039', 'STA006');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (73, '410km', '3h00m', 'Donec ut mauris eget massa tempor convallis.', 'STA016', 'STA021');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (74, '453km', '4h45m', 'Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'STA039', 'STA026');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (75, '174km', '3h00m', 'Phasellus in felis.', 'STA001', 'STA016');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (76, '1km', '11h30m', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 'STA007', 'STA013');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (77, '413km', '7h15m', 'Vestibulum rutrum rutrum neque.', 'STA021', 'STA023');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (78, '998km', '12h15m', 'Nulla tellus. In sagittis dui vel nisl.', 'STA025', 'STA028');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (79, '95km', '6h00m', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 'STA010', 'STA005');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (80, '350km', '9h45m', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 'STA017', 'STA030');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (81, '694km', '4h45m', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'STA007', 'STA005');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (82, '10km', '5h45m', 'Phasellus sit amet erat. Nulla tempus.', 'STA007', 'STA015');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (83, '787km', '5h15m', 'Ut at dolor quis odio consequat varius. Integer ac leo.', 'STA018', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (84, '64km', '7h00m', 'Pellentesque ultrices mattis odio. Donec vitae nisi.', 'STA007', 'STA025');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (85, '361km', '2h45m', 'Integer ac neque.', 'STA003', 'STA035');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (86, '929km', '2h00m', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'STA016', 'STA002');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (87, '291km', '11h30m', 'Duis at velit eu est congue elementum.', 'STA006', 'STA024');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (88, '27km', '2h30m', 'Vivamus in felis eu sapien cursus vestibulum.', 'STA006', 'STA018');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (89, '626km', '7h15m', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'STA006', 'STA011');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (90, '724km', '11h30m', 'Duis ac nibh.', 'STA018', 'STA020');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (91, '284km', '11h30m', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'STA013', 'STA021');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (92, '342km', '1h45m', 'Nulla mollis molestie lorem. Quisque ut erat.', 'STA021', 'STA001');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (93, '186km', '2h00m', 'Nullam molestie nibh in lectus.', 'STA037', 'STA004');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (94, '531km', '11h45m', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'STA019', 'STA007');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (95, '104km', '2h45m', 'Curabitur in libero ut massa volutpat convallis.', 'STA031', 'STA025');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (96, '103km', '12h00m', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'STA012', 'STA014');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (97, '406km', '6h45m', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'STA033', 'STA015');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (98, '891km', '9h45m', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'STA032', 'STA010');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (99, '113km', '11h15m', 'Vestibulum sed magna at nunc commodo placerat.', 'STA017', 'STA034');
insert into Route (Route_ID, Distance, Duration, Notices, DepartureStation, DestinationStation) values (100, '155km', '7h00m', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 'STA037', 'STA017');

select * from public.route