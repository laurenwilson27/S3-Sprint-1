CREATE TABLE Station (
    Station_ID VARCHAR(6) PRIMARY KEY DEFAULT 'STA001',
    StationName VARCHAR(60),
    City VARCHAR(50),
    PlatformNum INT,
    Amenities VARCHAR(50),
    IfBarrierFree VARCHAR(50),
    OperationHours VARCHAR(50),
    MaxTrainNum INT
);

insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA001', 'Brooksdale Market Central', 'Brooksdale', 8, 'Coffee Shop', false, '07:00 - 22:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA002', 'Riverstone Skyline Plaza', 'Riverstone', 4, 'Wi-Fi Access', true, '06:00 - 20:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA003', 'Westfield Oasis Terminal', 'Westfield', 1, 'Food Court', false, '08:00 - 18:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA004', 'Silverton Metroplex', 'Silverton', 6, 'Charging Stations', true, '09:00 - 21:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA005', 'Pineborough Green Terminal', 'Pineborough', 1, 'ATM Machines', false, '06:00 - 23:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA006', 'Summit Ridge Riverstone', 'Riverstone', 4, 'ATM Machines', false, '07:00 - 20:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA007', 'Riverstone Harbor Terminal', 'Riverstone', 9, 'Food Court', true, '08:00 - 22:00', 4);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA008', 'Eastvale Transit Hub', 'Eastvale', 1, 'Luggage Carts', true, '09:00 - 19:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA009', 'Pineborough Tech Junction', 'Pineborough', 1, 'Wi-Fi Access', false, '08:00 - 18:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA010', 'Maplefield Central Terminal', 'Maplefield', 5, 'Seating Areas', true, '07:00 - 21:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA011', 'Riverstone Gateway Plaza', 'Riverstone', 4, 'Information Desk', false, '09:00 - 20:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA012', 'Westfield Sunset Oasis', 'Westfield', 1, 'Wi-Fi Access', true, '06:00 - 22:00', 4);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA013', 'Maplefield Riverfront Terminal', 'Maplefield', 1, 'Information Desk', false, '08:00 - 18:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA014', 'Westfield Northern Oasis', 'Westfield', 2, 'Seating Areas', true, '07:00 - 20:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA015', 'Crestwood Maple Leaf Hub', 'Crestwood', 4, 'Wi-Fi Access', false, '08:00 - 21:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA016', 'Sunnyside Redwood Center', 'Sunnyside', 7, 'Seating Areas', true, '06:00 - 20:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA017', 'Westfield Highland Oasis', 'Westfield', 3, 'Wi-Fi Access', true, '07:00 - 22:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA018', 'Stoneriver Cityscape Stop', 'Stoneriver', 3, 'Newsstand', true, '08:00 - 18:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA019', 'Dawnridge Maple Leaf Terminal', 'Dawnridge', 10, 'Charging Stations', true, '09:00 - 20:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA020', 'Highpoint Northern Connection', 'Highpoint', 3, 'Coffee Shop', false, '07:00 - 21:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA021', 'Stoneriver Eastside Transit Center', 'Stoneriver', 7, 'Charging Stations', true, '08:00 - 19:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA022', 'Ironforge Maple Leaf Exchange', 'Ironforge', 8, 'Seating Areas', true, '06:00 - 22:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA023', 'Maplefield Highland Oasis', 'Maplefield', 10, 'Charging Stations', false, '09:00 - 20:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA024', 'Ironforge Central Hub', 'Ironforge', 2, 'Newsstand', false, '07:00 - 18:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA025', 'Sunnyside Westend Plaza', 'Sunnyside', 10, 'Food Court', true, '08:00 - 21:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA026', 'Highpoint Union Oasis', 'Highpoint', 6, 'Luggage Carts', false, '08:00 - 20:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA027', 'Highpoint Central Terminal', 'Highpoint', 4, 'Information Desk', false, '06:00 - 22:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA028', 'Silverton Metropolitan Hub', 'Silverton', 9, 'Charging Stations', true, '24/7', 4);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA029', 'Stoneriver Union Gateway', 'Stoneriver', 8, 'Wi-Fi Access', false, '09:00 - 18:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA030', 'Harborview Market Street Exchange', 'Harborview', 10, 'ATM Machines', true, '07:00 - 23:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA031', 'Maplefield Capitol Central', 'Maplefield', 9, 'Lost and Found', false, '09:00 - 17:00', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA032', 'Harborview Silverline Plaza', 'Harborview', 7, 'Seating Areas', true, '06:00 - 20:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA033', 'Eastvale Silverline Terminal', 'Eastvale', 10, 'ATM Machines', false, '08:00 - 22:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA034', 'Brooksdale Silverline Central', 'Brooksdale', 10, 'Information Desk', true, '07:00 - 21:00', 4);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA035', 'Highpoint Redwood Terminal', 'Highpoint', 8, 'Wi-Fi Access', true, '24/7', 3);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA036', 'Silverton Liberty Crossing', 'Silverton', 3, 'Luggage Carts', false, '08:00 - 18:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA037', 'Highpoint City Line Plaza', 'Highpoint', 2, 'Newsstand', true, '09:00 - 20:00', 1);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA038', 'Harborview Pioneer Parkway', 'Harborview', 6, 'Food Court', true, '10:00 - 22:00', 4);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA039', 'Silverton Coastal Point', 'Silverton', 5, 'Luggage Carts', false, '07:00 - 19:00', 2);
insert into Station (Station_ID, StationName, City, PlatformNum, Amenities, IfBarrierFree, OperationHours, MaxTrainNum) values ('STA040', 'Glenwood Market Street Terminal', 'Glenwood', 2, 'Seating Areas', true, '08:00 - 20:00', 3);

ALTER TABLE station
DROP COLUMN platformnum;

select * from public.station
