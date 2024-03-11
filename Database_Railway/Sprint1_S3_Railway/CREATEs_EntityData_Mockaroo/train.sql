CREATE TABLE Train (
    Train_ID VARCHAR(4) PRIMARY KEY,
    TrainName VARCHAR(50),
    MaxPassengers INT,
    MaidenVoyage DATE,
    ServiceType VARCHAR(20)
);

INSERT INTO Train (Train_ID, TrainName, MaxPassengers, MaidenVoyage, ServiceType) 
VALUES ('TR1', 'Denali Loco', 50, '2005-04-27', 'Passenger Transit');

INSERT INTO Train (Train_ID, TrainName, MaxPassengers, MaidenVoyage, ServiceType) 
VALUES ('TR2', 'Newfie Bullet', 50, '2013-03-04', 'Tourism');

INSERT INTO Train (Train_ID, TrainName, MaxPassengers, MaidenVoyage, ServiceType) 
VALUES ('TR3', 'Falcon Flyer', 50, '2013-03-04', 'Passenger Transit');

INSERT INTO Train (Train_ID, TrainName, MaxPassengers, MaidenVoyage, ServiceType) 
VALUES ('TR4', 'CN Rosco', 50, '2011-12-21', 'Freight');

INSERT INTO Train (Train_ID, TrainName, MaxPassengers, MaidenVoyage, ServiceType) 
VALUES ('TR5', 'Twilight Voyager', 50, '2005-06-10', 'Military');

select * from Train