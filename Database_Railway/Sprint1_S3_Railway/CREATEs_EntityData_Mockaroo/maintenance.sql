CREATE SEQUENCE maintenance_id_seq
    START WITH 10000;

DROP TABLE IF EXISTS maintenance; -- Drop the existing table if it exists
-- Now create the new table
CREATE TABLE maintenance (
    Maintenance_ID INT DEFAULT nextval('maintenance_id_seq') PRIMARY KEY,
    Details TEXT,
    Duration VARCHAR(10),
    WorkType VARCHAR(28),
    PerformedBy VARCHAR(50),
    ServiceDate DATE,
    NextServiceDate DATE,
    CompanyPhone VARCHAR(50),
    CompanyEmail VARCHAR(50),
    Address_ID INT,
    CONSTRAINT fk_address FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);

insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '11.0 hours', 'Upholstery Repair', 'Dazzlesphere', '2024-02-05', '2024-04-15', '(637) 2187821', 'bsunter0@nps.gov', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (2, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '8.0 hours', 'Carriage Cleaning', 'Jabbercube', '2023-10-04', '2024-08-11', '(215) 9069890', 'rgluyus1@columbia.edu', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (3, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '17.0 hours', 'HVAC Maintenance', 'Zoovu', '2023-05-02', '2024-10-27', '(294) 3272329', 'fboulds2@webs.com', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (4, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '42.0 hours', 'Brake Testing', 'Photobug', '2023-12-20', '2024-09-26', '(115) 8767593', 'hdifilippo3@java.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (5, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '17.0 hours', 'Upholstery Repair', 'Youspan', '2023-04-29', '2024-10-21', '(613) 1192224', 'hshakeshaft4@chron.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (6, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '42.0 hours', 'Electrical System Inspection', 'Jabbersphere', '2024-01-06', '2024-09-08', '(757) 7705846', 'gdury5@yellowbook.com', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (7, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '68.0 hours', 'Door Mechanism Repair', 'Rooxo', '2024-01-07', '2024-07-24', '(281) 7498298', 'dmitroshinov6@census.gov', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (8, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '57.0 hours', 'HVAC Maintenance', 'Feednation', '2023-12-24', '2024-10-10', '(811) 5948712', 'zlangcastle7@nhs.uk', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (9, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '25.0 hours', 'Emergency Equipment Testing', 'Avavee', '2023-05-18', '2024-09-25', '(205) 7000578', 'tjosephson8@wikipedia.org', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (10, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', '44.0 hours', 'Locomotive Repainting', 'Vidoo', '2023-08-18', '2024-07-01', '(670) 7688137', 'rcarse9@squarespace.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (11, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', '47.0 hours', 'Signal System Maintenance', 'Jaxspan', '2023-06-19', '2024-10-05', '(303) 4729534', 'edezamoraa@telegraph.co.uk', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (12, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '61.0 hours', 'Track Inspection', 'Linklinks', '2023-04-07', '2024-09-15', '(720) 8056521', 'hcowleb@unicef.org', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (13, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '58.0 hours', 'Carriage Cleaning', 'Blogtags', '2023-07-13', '2024-06-22', '(156) 1424995', 'fcleetonc@home.pl', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (14, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '44.0 hours', 'Carriage Cleaning', 'Photobean', '2024-02-01', '2024-08-20', '(832) 7323957', 'ymcmoyerd@archive.org', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (15, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2.0 hours', 'Rust Treatment', 'Gabvine', '2023-03-13', '2024-06-21', '(280) 1183339', 'iprickette@globo.com', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (16, 'Fusce consequat. Nulla nisl. Nunc nisl.', '32.0 hours', 'Safety Equipment Check', 'Avavee', '2023-08-26', '2024-12-04', '(460) 5617527', 'ekrolakf@usgs.gov', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (17, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '26.0 hours', 'Safety Equipment Check', 'Blognation', '2024-02-07', '2024-05-22', '(350) 1468258', 'cwinterg@php.net', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (18, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '60.0 hours', 'Signal System Maintenance', 'Twitterbridge', '2023-09-26', '2025-01-21', '(608) 7203220', 'senstoneh@walmart.com', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (19, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '4.0 hours', 'Upholstery Repair', 'Oozz', '2023-11-15', '2024-10-02', '(466) 7287138', 'lpatisei@prnewswire.com', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (20, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '8.0 hours', 'Emergency Equipment Testing', 'Photobug', '2024-02-19', '2024-03-05', '(409) 4355740', 'vohowbanej@smugmug.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (21, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '46.0 hours', 'Door Mechanism Repair', 'Dabvine', '2023-12-13', '2024-12-26', '(652) 4701972', 'lpolhillk@about.com', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (22, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '41.0 hours', 'Carriage Cleaning', 'Miboo', '2023-12-12', '2024-07-02', '(637) 6853857', 'ajozefczakl@storify.com', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (23, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '1.0 hours', 'Door Mechanism Repair', 'Realbuzz', '2023-06-24', '2024-03-13', '(363) 3126325', 'kosuairdm@google.ru', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (24, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '34.0 hours', 'Door Mechanism Repair', 'Twitterbridge', '2023-11-28', '2024-11-06', '(781) 8966429', 'nrucklidgen@printfriendly.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (25, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '42.0 hours', 'Track Inspection', 'Voonyx', '2023-07-17', '2024-02-29', '(124) 6282551', 'dahrenso@irs.gov', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (26, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '4.0 hours', 'Brake Testing', 'Jamia', '2024-02-23', '2024-10-17', '(886) 1205753', 'claughnanp@theglobeandmail.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (27, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '61.0 hours', 'Locomotive Repainting', 'Youtags', '2023-08-08', '2024-08-11', '(971) 7497006', 'pfilyukovq@dot.gov', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (28, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '67.0 hours', 'Track Inspection', 'Realbridge', '2023-08-24', '2024-08-06', '(384) 1422205', 'ctightr@unesco.org', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (29, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '37.0 hours', 'Locomotive Repainting', 'Voomm', '2023-11-12', '2024-07-29', '(846) 7982106', 'bverriers@sourceforge.net', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (30, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '6.0 hours', 'Rust Treatment', 'Quamba', '2023-09-01', '2024-04-16', '(661) 3914164', 'tcallachert@opensource.org', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (31, 'Fusce consequat. Nulla nisl. Nunc nisl.', '68.0 hours', 'Carriage Cleaning', 'Devshare', '2023-12-07', '2024-03-01', '(504) 3400152', 'llinneu@state.gov', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (32, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '7.0 hours', 'Graffiti Removal', 'Kwinu', '2023-11-29', '2024-06-04', '(939) 2640842', 'aclymerv@paypal.com', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (33, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '47.0 hours', 'Signal System Maintenance', 'Trunyx', '2023-10-27', '2024-08-15', '(407) 2479616', 'byakunikovw@drupal.org', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (34, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '55.0 hours', 'Emergency Equipment Testing', 'Blogtags', '2023-08-24', '2024-04-04', '(167) 4373510', 'messamex@xrea.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (35, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '54.0 hours', 'Locomotive Repainting', 'Yombu', '2024-02-09', '2024-07-17', '(765) 9443096', 'hfilochovy@msu.edu', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (36, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '72.0 hours', 'Carriage Cleaning', 'Midel', '2023-10-05', '2024-03-11', '(727) 3133942', 'edesantosz@tinypic.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (37, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '24.0 hours', 'Brake Testing', 'Eare', '2023-05-05', '2024-12-27', '(263) 7321129', 'ssighard10@archive.org', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (38, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '65.0 hours', 'Track Inspection', 'Jaxbean', '2023-12-14', '2024-10-12', '(739) 5565190', 'mateggart11@mozilla.org', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (39, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '33.0 hours', 'Door Mechanism Repair', 'Trilia', '2024-02-16', '2024-03-06', '(173) 5905993', 'pdoberer12@amazon.de', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (40, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '19.0 hours', 'Safety Equipment Check', 'Quimba', '2023-12-30', '2024-03-17', '(286) 4782092', 'ascoggan13@addtoany.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (41, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '46.0 hours', 'Wheel Alignment', 'Npath', '2023-11-04', '2024-04-20', '(841) 4388228', 'smullaney14@istockphoto.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (42, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '14.0 hours', 'Locomotive Repainting', 'Skiptube', '2023-04-30', '2024-09-17', '(112) 8459760', 'cmckeurton15@list-manage.com', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (43, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '60.0 hours', 'Brake Testing', 'Youtags', '2023-03-23', '2024-04-11', '(311) 2690167', 'ssames16@google.co.uk', 2000045);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (44, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '50.0 hours', 'Rust Treatment', 'Cogidoo', '2023-06-09', '2024-11-15', '(677) 9212888', 'kcrossley17@nationalgeographic.com', 2000044);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (45, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '31.0 hours', 'Upholstery Repair', 'Kayveo', '2023-03-12', '2024-06-21', '(944) 8334375', 'rbrittle18@google.nl', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (46, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '21.0 hours', 'HVAC Maintenance', 'Divape', '2023-05-09', '2024-07-19', '(196) 5691254', 'rshera19@imageshack.us', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (47, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '59.0 hours', 'HVAC Maintenance', 'Flipbug', '2023-05-23', '2024-03-25', '(362) 3769397', 'clynnett1a@canalblog.com', 2000041);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (48, 'Fusce consequat. Nulla nisl. Nunc nisl.', '39.0 hours', 'Safety Equipment Check', 'Photobug', '2023-06-02', '2024-09-24', '(956) 5896884', 'cfilochov1b@mozilla.com', 2000043);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (49, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '47.0 hours', 'Rust Treatment', 'Fivechat', '2023-08-27', '2024-05-14', '(634) 9037179', 'gdeekes1c@booking.com', 2000042);
insert into Maintenance (Maintenance_ID, Details, Duration, WorkType, PerformedBy, ServiceDate, NextServiceDate, CompanyPhone, CompanyEmail, Address_ID) values (50, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '25.0 hours', 'Track Inspection', 'Photojam', '2023-08-25', '2024-06-15', '(175) 1505053', 'lshorthouse1d@who.int', 2000042);


select * from public.maintenance