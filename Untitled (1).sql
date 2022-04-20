CREATE TABLE `Customer` (
  `CustomerFirstName` string,
  `CustomerId` integer,
  `Registre` string,
  `makePayment` string,
  `searchCar` string
);

CREATE TABLE `Payment` (
  `Id` integer,
  `CardNumber` integer,
  `Amount` string,
  `add` string,
  `update` string,
  `viewHistory` string
);

CREATE TABLE `rent_history` (
  `id` integer,
  `customer_name` string,
  `customer_contact` string,
  `Customer_invoice` string,
  `time_out` datetime,
  `time_in` datetime
);

CREATE TABLE `Employee` (
  `EmployeeId` integer,
  `EmployeeUsername` string,
  `EmployePassword` string
);

CREATE TABLE `Administraror` (
  `AdministrarorName` string,
  `AdministrarorId` integer,
  `ManageWebData` string
);

CREATE TABLE `Rental_Manager` (
  `ManagerId` integer,
  `ManagerName` string,
  `ManageCarData` string,
  `ManageCompanyProfile` string
);

CREATE TABLE `cars` (
  `Id` integer,
  `CarName` string,
  `Car_Model` string,
  `Rent` string,
  `location` string
);

CREATE TABLE `Car_Booking` (
  `Id` integer,
  `CarName` string,
  `Customer_name` string,
  `Customer_rent` string
);

ALTER TABLE `Customer` ADD FOREIGN KEY (`makePayment`) REFERENCES `Payment` (`Id`);

ALTER TABLE `Customer` ADD FOREIGN KEY (`makePayment`) REFERENCES `rent_history` (`id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`EmployeeId`) REFERENCES `Administraror` (`AdministrarorId`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`EmployeeId`) REFERENCES `Rental_Manager` (`ManagerId`);

ALTER TABLE `Car_Booking` ADD FOREIGN KEY (`Id`) REFERENCES `rent_history` (`id`);

ALTER TABLE `Rental_Manager` ADD FOREIGN KEY (`ManagerId`) REFERENCES `cars` (`Id`);

ALTER TABLE `cars` ADD FOREIGN KEY (`Id`) REFERENCES `Car_Booking` (`Id`);
