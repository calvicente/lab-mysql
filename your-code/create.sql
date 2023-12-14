CREATE TABLE `cars` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`VIN` TEXT NOT NULL,
	`manufacturer` TEXT NOT NULL,
	`model` TEXT NOT NULL,
	`year` INT NOT NULL,
	`color` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `customers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`client_id` INT NOT NULL,
	`name` TEXT NOT NULL,
	`phone_number` TEXT NOT NULL,
	`email` TEXT,
	`address` TEXT,
	`city` TEXT NOT NULL,
	`state` TEXT NOT NULL,
	`country` TEXT NOT NULL,
	`zip_code` TEXT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `salespersons` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`staff_id` INT NOT NULL,
	`name` TEXT NOT NULL,
	`store_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `invoices` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`invoice_no` INT NOT NULL,
	`date` DATE NOT NULL,
	`car_id` INT NOT NULL,
	`customer_id` INT NOT NULL,
	`salesperson_id` INT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `stores` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `store_id` INT NOT NULL,
	`name` TEXT NOT NULL,
	`address` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`state` TEXT NOT NULL,
	`country` TEXT NOT NULL,
	`zip_code` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `salespersons` ADD CONSTRAINT `salespersons_fk0` FOREIGN KEY (`store_id`) REFERENCES `stores`(`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `invoices_fk0` FOREIGN KEY (`car_id`) REFERENCES `cars`(`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `invoices_fk1` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`);

ALTER TABLE `invoices` ADD CONSTRAINT `invoices_fk2` FOREIGN KEY (`salesperson_id`) REFERENCES `salespersons`(`id`);






