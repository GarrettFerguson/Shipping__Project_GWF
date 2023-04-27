DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

USE shipping;

CREATE TABLE containers
(containerID DECIMAL(20,0),
height DECIMAL(12,0),
width DECIMAL(9,0),
length DECIMAL(21,0),
weight DECIMAL(65,0),
shipID DECIMAL(10,0),
PRIMARY KEY(containerID, shipID));

CREATE TABLE ports 
(pName CHAR(20) PRIMARY KEY,
cityCountry CHAR(40));

CREATE TABLE ships 
(sName CHAR(20) PRIMARY KEY,
displacement DECIMAL(12,0),
captain CHAR(40),
crewCount DECIMAL(65,0),
homePort CHAR(20),
yearBuilt DECIMAL(65,0),
shipID DECIMAL(10,0),
pName CHAR(20));
