-- 1. 반려동물 주인 테이블
CREATE TABLE PetOwner(
    ownerID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    contact VARCHAR(50)
);

-- 2. 반려동물 테이블
CREATE TABLE Pets(
    petID INT PRIMARY KEY AUTO_INCREMENT,
    ownerID INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50),
    FOREIGN KEY(ownerID) REFERENCES PetOwner(ownerID)
); 

-- 3. 객실 테이블
CREATE TABLE Rooms(
    roomID INT PRIMARY KEY AUTO_INCREMENT,
    roomNumber INT NOT NULL, 
    roomType VARCHAR(50),
    priceperNight INT NOT NULL
);

-- 4. 예약 테이블
CREATE TABLE Reservations(
    reservationID INT PRIMARY KEY AUTO_INCREMENT,
    petID INT NOT NULL,
    roomID INT NOT NULL,
    checkinDate DATE NOT NULL,
    checkoutDate DATE,
    FOREIGN KEY(petID) REFERENCES Pets(petID),
    FOREIGN KEY(roomID) REFERENCES Rooms(roomID)
);

-- 5. 서비스 테이블
CREATE TABLE Services(
    serviceID INT PRIMARY KEY AUTO_INCREMENT,
    reservationID INT NOT NULL,
    serviceName VARCHAR(50),
    servicePrice INT,
    FOREIGN KEY(reservationID) REFERENCES Reservations(reservationID)
);