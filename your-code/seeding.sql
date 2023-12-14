SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

INSERT INTO cars(VIN, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers(client_id, name, phone_number, email, address, city, state, country, zip_code)
VALUES (10001, 'Pablo Picasso',	'+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid',	'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St',	'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-',	'40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO stores(store_id, name, address, city, state, country, zip_code)
VALUES (001, 'Store Madrid', 'Street A, 123', 'Madrid', '', 'Spain', 'XXX'),
(002, 'Barcelona Car Shop', 'Street B, 456', 'Barcelona', 'Cataluña', 'Spain', 'YYY'),
(003, 'Car Haus', 'Street C, 789', 'Berlin', 'Berlin', 'Germany', 'ZZZ'),
(004, 'Car Store Paris', 'Street D, 1011', 'Paris', 'Paris Region', 'France', 'WWW'),
(005, 'Miami Car Shop', 'Street E, 1213', 'Miami', 'Florida', 'United States', 'VVV'),
(006, 'MexCar', 'Street F, 1415', 'Mexico City', 'Mexico City', 'Mexico', 'PPP'),
(007, 'AmsCar', 'Street G, 1617', 'Amsterdam', 'Nord Holland', 'Netherlands', 'OOO'),
(008, 'SP Car Shop', 'Street H, 1819', 'São Paulo', 'São Paulo', 'Brasil', 'QQQ');

INSERT INTO salespersons(staff_id, name, store_id)
VALUES (00001, 'Petey Cruiser',	001),
(00002, 'Anna Sthesia',	002),
(00003, 'Paul Molive', 003),
(00004, 'Gail Forcewind', 004),
(00005, 'Paige Turner', 005),
(00006, 'Bob Frapples', 006),
(00007, 'Walter Melon', 007),
(00008, 'Shonda Leer', 008);

INSERT INTO invoices(invoice_no, date, car_id, customer_id, salesperson_id)
VALUES ('852399038', '2018-08-22', '1', '2', '4'),
('731166526', '2018-12-31', '4', '1', '6'),
('271135104', '2019-01-22', '3', '3', '8');



