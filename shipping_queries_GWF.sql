USE shipping;

SELECT containers.shipID, ships.shipID, containers.height, containers.width, containers.length, SUM(height*width*length) AS volume
FROM containers, ships
JOIN containers ON ships.shipID=containers.shipID
GROUP BY containers.shipID
ORDER BY volume DESC
LIMIT 5;

SELECT sName, homePort, yearBuilt
FROM ships WHERE homePort IN('Reykjavik');

SELECT sName, homePort, yearBuilt
FROM ships WHERE homePort IN('Port of Toukyou');

SELECT sName, homePort, yearBuilt
FROM ships WHERE homePort IN('Port of Oosaka');

SELECT AVG(ships.crewCount) AS averageCrewCount
FROM ships;

SELECT containers.shipID, containers.containerID, COUNT(containers.containerID) as count
FROM containers
JOIN ships ON containers.shipID=ships.shipID
GROUP BY containers.shipID
ORDER BY count DESC
LIMIT 5;

SELECT ships.sName, ships.homePort
FROM ships
JOIN ports ON ships.homePort=ports.pName
GROUP BY ships.sName
ORDER BY sName DESC
LIMIT 5;

SELECT ships.sName, ships.captain
FROM ships
JOIN ports ON ships.captain=ports.cityCountry
GROUP BY ships.sName
ORDER BY sName DESC
LIMIT 5;

SELECT containers.containerID, containers.shipID
FROM containers
JOIN ships ON containers.shipID=ships.shipID
GROUP BY containers.shipID
ORDER BY containers.containerID DESC
LIMIT 5;

SELECT containers.containerID
FROM containers
JOIN ports ON containers.containerID=ports.pName
GROUP BY containers.containerID
ORDER BY containerID DESC
LIMIT 5;
