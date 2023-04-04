CREATE DATABASE taxidb;
CREATE SCHEMA data;

CREATE TABLE data.user (
    id serial PRIMARY KEY,
    name1 varchar(100),
    surname varchar(100),
    email varchar(100),
    phone_number varchar(100)
);

CREATE TABLE data.vehicle_type (
    id serial PRIMARY KEY,
    name2 varchar(50)
);
CREATE TABLE data.car (
   id serial PRIMARY KEY,
   brand varchar(100),
   model varchar(100),
   vehicle_type_id int
);
CREATE TABLE data.driver_vehicle (
    id serial PRIMARY KEY,
    registration_number varchar(25),
    colour varchar(25),
    car_id int,
    driver_id int
);
CREATE TABLE data.driver (
    id serial PRIMARY KEY,
    photos bytea[],
    user_id int
);
CREATE TABLE data.driver_mark (
    id serial PRIMARY KEY,
    skills int NOT NULL,
    car_condition int NOT NULL,
    compliance_with_traffic_regulations int NOT NULL,
    driver_id int,
    passage_id int
);
CREATE TABLE data.passenger_mark (
    id serial PRIMARY KEY,
    behaviour int NOT NULL,
    punctuality int NOT NULL,
    passenger_id int,
    passage_id int
);
CREATE TABLE data.passenger (
    id serial PRIMARY KEY,
    user_id int UNIQUE,
    payment_type int
);
CREATE TABLE data.passage (
    id serial PRIMARY KEY,
    distance decimal NOT NULL,
    driver_id int,
    passenger_id int,
    payment_id int,
    driver_vehicle_id int,
    pickup_address_id int,
    destination_address_id int
);
CREATE TABLE data.area (
    id serial PRIMARY KEY,
    name3 varchar(255)
);
CREATE TABLE data.address1 (
    id serial PRIMARY KEY,
    street varchar(100),
    house_number varchar(25),
    flat_number varchar(25),
    zip_code varchar(25),
    city varchar(25),
    country varchar(25),
    area_id int
);
CREATE TABLE data.payment (
    id serial PRIMARY KEY,
    value1 money NOT NULL,
    payment_id int
);
INSERT INTO data.user (name1, surname, email, phone_number)
VALUES
('L', 'Kot', 'x@gmail.com', '123456789'),
('Ala', 'Kot', 'y@gmail.com', '987654321'),
('Maks', 'Kot', 'z@gmailcom', '1');
INSERT INTO data.vehicle_type (name2)
VALUES
('x'),
('z'),
('q');
INSERT INTO data.car (brand, model )
VALUES
('L', 'x1'),
('A', 'x2'),
('BMW', 'k1');
INSERT INTO data.driver_vehicle (registration_number, colour)
VALUES
('123', 'bialy'),
('4321', 'zielony'),
('1234', 'czarny');
INSERT INTO data.driver_mark (skills, car_condition, compliance_with_traffic_regulations)
VALUES
('5', '2', '4'),
('4', '5', '5'),
('2', '5', '2');
INSERT INTO data.passenger_mark (behaviour, punctuality)
VALUES
('2', '5'),
('5', '5'),
('4', '1');
INSERT INTO data.area (name3)
VALUES
('BPL'),
('Zatorze'),
('Srodmiescie');
INSERT INTO data.address1 (street, house_number, flat_number, zip_code, city, country)
VALUES
('Jakas', '2', '3', '76-200', 'Slupsk', 'Polska'),
('Ktoras', '3', '3', '76-200', 'Slupsk', 'Polska'),
('Nieznana', '22', '3', '76-200', 'Slupsk', 'Polska');
INSERT INTO data.payment (value1)
VALUES
('50'),
('30'),
('20');
SELECT * FROM data.user;
SELECT * FROM data.vehicle_type;
SELECT * FROM data.car;
SELECT * FROM data.driver_vehicle;
SELECT * FROM data.driver;
SELECT * FROM data.driver_mark;
SELECT * FROM data.passenger_mark;
SELECT * FROM data.passenger;
SELECT * FROM data.passage;
SELECT * FROM data.area;
SELECT * FROM data.address1;
SELECT * FROM data.payment;