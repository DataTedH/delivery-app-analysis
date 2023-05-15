CREATE TABLE Platform (
                          PlatformID INT AUTO_INCREMENT PRIMARY KEY,
                          PlatformName VARCHAR(100)
);

CREATE TABLE Location (
                          LocationID INT AUTO_INCREMENT PRIMARY KEY,
                          Latitude DECIMAL(9,6),
                          Longitude DECIMAL(9,6)
);

CREATE TABLE Shift (
                       ShiftID INT AUTO_INCREMENT PRIMARY KEY,
                       StartTime TIMESTAMP,
                       EndTime TIMESTAMP
);

CREATE TABLE Franchise (
                           FranchiseID INT AUTO_INCREMENT PRIMARY KEY,
                           FranchiseName VARCHAR(100)
);

CREATE TABLE Store (
                       StoreID INT AUTO_INCREMENT PRIMARY KEY,
                       FranchiseID INT,
                       StoreName VARCHAR(100),
                       LocationID INT
);

CREATE TABLE Offer (
                       OfferID INT AUTO_INCREMENT PRIMARY KEY,
                       PlatformID INT,
                       ShiftID INT,
                       OfferTimestamp TIMESTAMP,
                       AcceptanceStatus VARCHAR(50),
                       EstimatedDeliveryTime TIMESTAMP,
                       EstimatedEarnings DECIMAL(5,2),
                       Distance DECIMAL(5,2),
                       ItemsInOrder INT
);

CREATE TABLE Delivery (
                          DeliveryID INT AUTO_INCREMENT PRIMARY KEY,
                          ActualDeliveryTime TIMESTAMP,
                          ActualEarnings DECIMAL(5,2),
                          Tip DECIMAL(5,2),
                          PickupArrivalTimestamp TIMESTAMP,
                          PickupDepartureTimestamp TIMESTAMP,
                          DropoffLocationID INT,
                          DropoffArrivalTimestamp TIMESTAMP,
                          DropoffDepartureTimestamp TIMESTAMP
);

CREATE TABLE OfferDelivery (
                               OfferID INT,
                               DeliveryID INT,
                               PRIMARY KEY (OfferID, DeliveryID)
);

CREATE TABLE OfferPickup (
                             OfferID INT,
                             LocationID INT,
                             PRIMARY KEY (OfferID, LocationID)
);
