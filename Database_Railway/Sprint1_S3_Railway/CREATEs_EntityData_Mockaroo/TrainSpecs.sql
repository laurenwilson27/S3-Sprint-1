CREATE TABLE TrainSpecs (
    TrainSpecs_ID INT,
    WeightCap INT,
    AxleLoad VARCHAR(10),
    NumberofCars INT,
    Length VARCHAR(10),
    MaxSpeed VARCHAR(10),
    AccelerationRate VARCHAR(10),
    DecelerationRate VARCHAR(10),
    PowerType VARCHAR(8),
    TrackType VARCHAR(25),
    EnergySource VARCHAR(17),
    EnergyConsumption VARCHAR(10),
    Train_ID VARCHAR(4),
    FOREIGN KEY (Train_ID) REFERENCES Train(Train_ID)
);

insert into TrainSpecs (TrainSpecs_ID, WeightCap, AxleLoad, NumberofCars, Length, MaxSpeed, AccelerationRate, DecelerationRate, PowerType, TrackType, EnergySource, EnergyConsumption, Train_ID) values (1, 18269, '13726 kg', 7, '1421 m', '61 m/s', '0.71 m/s²', '0 m/s²', 'Steam', 'Light Rail or Tram Tracks', 'Diesel Combustion', '47 kWh', 'TR1');
insert into TrainSpecs (TrainSpecs_ID, WeightCap, AxleLoad, NumberofCars, Length, MaxSpeed, AccelerationRate, DecelerationRate, PowerType, TrackType, EnergySource, EnergyConsumption, Train_ID) values (2, 21973, '6916 kg', 26, '1276 m', '72 m/s', '0.82 m/s²', '1 m/s²', 'Hybrid', 'Broad Gauge', 'Batteries', '41 kWh', 'TR2');
insert into TrainSpecs (TrainSpecs_ID, WeightCap, AxleLoad, NumberofCars, Length, MaxSpeed, AccelerationRate, DecelerationRate, PowerType, TrackType, EnergySource, EnergyConsumption, Train_ID) values (3, 29041, '8064 kg', 18, '952 m', '22 m/s', '0.73 m/s²', '1 m/s²', 'Hydrogen', 'Ballasted Tracks', 'Diesel Combustion', '13 kWh', 'TR3');
insert into TrainSpecs (TrainSpecs_ID, WeightCap, AxleLoad, NumberofCars, Length, MaxSpeed, AccelerationRate, DecelerationRate, PowerType, TrackType, EnergySource, EnergyConsumption, Train_ID) values (4, 13030, '17203 kg', 23, '1048 m', '15 m/s', '0.9 m/s²', '1 m/s²', 'Hybrid', 'Ballasted Tracks', 'Hydrogen Fuel', '35 kWh', 'TR4');
insert into TrainSpecs (TrainSpecs_ID, WeightCap, AxleLoad, NumberofCars, Length, MaxSpeed, AccelerationRate, DecelerationRate, PowerType, TrackType, EnergySource, EnergyConsumption, Train_ID) values (5, 25801, '5978 kg', 11, '1785 m', '86 m/s', '0.58 m/s²', '1 m/s²', 'Hydrogen', 'Dual Gauge', 'Electric Grid', '29 kWh', 'TR5');

select * from TrainSpecs