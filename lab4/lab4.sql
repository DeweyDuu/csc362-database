-- DROP TABLE IF EXISTS Sale;
-- DROP TABLE IF EXISTS Trial;
-- DROP TABLE IF EXISTS Rugs;
-- DROP TABLE IF EXISTS Customers;
-- DROP TABLE IF EXISTS Address;
-- DROP TABLE IF EXISTS Description;
DROP DATABASE IF EXISTS flying_carpets;
CREATE DATABASE flying_carpets;

-- CREATE OR REPLACE DATABASE flying_carpets;
USE flying_carpets;

CREATE TABLE Description (
    description_id INT AUTO_INCREMENT PRIMARY KEY,
    country        CHAR(30),
    year_made      INT,
    material       CHAR(30),
    width          INT,
    length         INT
);

CREATE TABLE Rugs (
    inventory_id       INT PRIMARY KEY,
    description_id     INT NOT NULL,
    purchase_price     INT NOT NULL,
    date_acquired      DATE NOT NULL, -- will be used to compare with sale_date
    markup_percentage  CHAR(10) NOT NULL,
    list_price_int     INT NOT NULL, 
    status             CHAR(20) NOT NULL,
    removable          BOOLEAN, -- DEPEND ON THE STATUS
    FOREIGN KEY (description_id) REFERENCES Description(description_id)
        ON DELETE RESTRICT
);


CREATE TABLE Address (
    address_id INT NOT NULL,
    PRIMARY KEY (address_id),
    FOREIGN KEY (address_id), -- FIXME
    street     CHAR(50) NOT NULL,
    city       CHAR(30) NOT NULL,
    state      CHAR(20) NOT NULL,
    zip_code   CHAR(10) NOT NULL
);

CREATE TABLE Customers (
    customer_id   INT AUTO_INCREMENT PRIMARY KEY,
    address_id    INT NOT NULL, --everycustomer has an address thus must be not null
    first_name    CHAR(30),
    last_name     CHAR(30),
    mobile_number CHAR(15) UNIQUE, --no two customers have same number
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
        ON DELETE RESTRICT
);


CREATE TABLE Sale (
    sale_id       INT AUTO_INCREMENT PRIMARY KEY,
    customer_id   INT NOT NULL,
    inventory_id  INT NOT NULL,
    sale_date     DATE NOT NULL, --will be used to compare with date_aquired
    sale_price    INT NOT NULL CHECK (sale_price >= original_cost), -- must above original cost if it's in inventory less than 2 year
    original_cost INT NOT NULL,
    price_on_sale INT NOT NULL,
    return_date   DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE RESTRICT,
    FOREIGN KEY (inventory_id) REFERENCES Rugs(inventory_id)
        ON DELETE RESTRICT
);


CREATE TABLE Trial (
    trial_id           INT AUTO_INCREMENT PRIMARY KEY,
    inventory_id       INT NOT NULL,
    customer_id        INT NOT NULL,
    date_reserve       DATE,
    expect_date_return DATE NOT NULL,
    actual_date_return DATE,
    FOREIGN KEY (inventory_id) REFERENCES Rugs(inventory_id)
        ON DELETE RESTRICT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE RESTRICT
);

INSERT INTO Description (country, year_made, material, width, length) VALUES
('Turkey', 1925, 'Wool', 5, 7),        -- id = 1
('Iran', 1910, 'Silk', 10, 14),        -- id = 2
('India', 2017, 'Wool', 8, 10),        -- id = 3
('India', 2017, 'Wool', 4, 6);         -- id = 4

INSERT INTO Rugs (inventory_id, description_id, purchase_price, date_acquired, markup_percentage, list_price_int, status, removable) VALUES
(1214, 1, 625, '2017-04-06', '100%', 1250, 'SOLD', FALSE),
(1219, 2, 28000, '2017-04-06', '75%', 49000, 'RETURNED', FALSE),
(1277, 3, 1200, '2017-06-15', '100%', 2400, 'SOLD', FALSE),
(1278, 4, 450, '2017-06-15', '120%', 990, 'AVAILABLE', TRUE);


INSERT INTO Address (street, city, state, zip_code) VALUES
('68 Country Drive', 'Roseville', 'MI', '48066'),      
('9044 Piper Lane', 'North Royalton', 'OH', '44133'), 
('747 East Harrison Lane', 'Atlanta', 'GA', '30303'),
('47 East Harrison Lane', 'Atlanta', 'GA', '30303'),  
('78 Corona Rd.', 'Fullerton', 'CA', '92831'),     
('386 Silver Spear Ct', 'Coraopolis', 'PA', '15108'); 

INSERT INTO Customers (address_id, first_name, last_name, mobile_number) VALUES
(1, 'Akira', 'Ingram', '(926)252-6716'),
(2, 'Meredith', 'Spencer', '(817)530-5994'),
(3, 'Marco', 'Page', '(588)799-6535'),
(4, 'Sandra', 'Page', '(997)697-2666'),
(5, 'Gloria', 'Gomez'),
(6, 'Bria', 'Le');      

INSERT INTO Trial (inventory_id, customer_id, date_reserve, expect_date_return, actual_date_return) VALUES (
    (1241,1,NULL,'2017-09-15',NUll)
);
