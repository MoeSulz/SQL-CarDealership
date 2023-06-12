-- Drop the database at first if it exists
DROP DATABASE IF EXISTS cardealerships;

-- Now Create the database
CREATE DATABASE cardealerships;

-- Creating tables for database
CREATE TABLE cardealerships.dealership(
	Dealership_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name varchar(50) NOT NULL,
    Address varchar(50) NOT NULL,
    Phone varchar(12) NOT NULL
    );
    
CREATE TABLE cardealerships.vehicles(
    Vin varchar(50) PRIMARY KEY,
    Sold boolean NOT NULL
    );
    
CREATE TABLE cardealerships.inventory(
	Dealership_id INT,
    Vin varchar(50),
    FOREIGN KEY (Dealership_id) REFERENCES dealership(dealership_id),
    FOREIGN KEY (Vin) REFERENCES vehicles(Vin)
    );
    
CREATE TABLE cardealerships.sales_contract(
	id INT  PRIMARY KEY AUTO_INCREMENT,
    Vin varchar(50),
    FOREIGN KEY (Vin) REFERENCES vehicles(Vin)
    );
    
-- Now we need to INSERT data into our tables and database
-- Starting with dealership data:
INSERT INTO cardealerships.dealership(name, address, phone)
VALUES ("Mike's Dealership", "10 Vermont Street", "718-332-0998");

INSERT INTO cardealerships.dealership(name, address, phone)
VALUES ("Mister Whoops' Deals", "730 Liver Avenue", "917-665-3439");

INSERT INTO cardealerships.dealership(name, address, phone)
VALUES ("Cars 4 Low", "6500 Lambert Avenue", "718-649-6678");

-- Inserting vehicles table data:
INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("23BF76LK19LP", 1);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("82MS83OS25MS", 0);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("72MD83MD64ND", 0);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("83SO37SH35NS",  0);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("36MS37OS26MS", 1);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("27LA37NC28OP", 0);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("37MA46GH30TH", 0);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("SOOK29SB29TL", 1);

INSERT INTO cardealerships.vehicles(vin, sold)
VALUES ("29MO76DK20QS", 0);

-- Inserting inventory table data:
INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (1, "23BF76LK19LP");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (1, "82MS83OS25MS");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (1, "72MD83MD64ND");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (2, "83SO37SH35NS");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (2, "36MS37OS26MS");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (2, "27LA37NC28OP");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (3, "37MA46GH30TH");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (3, "SOOK29SB29TL");

INSERT INTO cardealerships.inventory(dealership_id, vin)
VALUES (3, "29MO76DK20QS");

-- Inserting sales contract table data:
INSERT INTO cardealerships.sales_contract(vin)
VALUES ("23BF76LK19LP");

INSERT INTO cardealerships.sales_contract(vin)
VALUES ("36MS37OS26MS");

INSERT INTO cardealerships.sales_contract(vin)
VALUES ("SOOK29SB29TL");