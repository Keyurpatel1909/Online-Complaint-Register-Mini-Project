drop database ocs;
create database ocs;
USE ocs;
DROP TABLE IF EXISTS `zone_table`;
CREATE TABLE `zone_table` (
  `ZONE_ID` int NOT NULL,
  `ZONE_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ZONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE ocs.user_table;
CREATE TABLE `user_table` (
  `USER_ID` int NOT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `USER_ADDRESS` varchar(255) DEFAULT NULL,
  `USER_MOBILE` varchar(50) DEFAULT NULL,
  `USER_EMAILID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `d_table`;
CREATE TABLE `d_table` (
  `D_ID` int NOT NULL,
  `D_NAME` varchar(255) DEFAULT NULL,
  `D_ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `officer_table` (
  `OFFICER_ID` int NOT NULL,
  `O_NAME` varchar(255) DEFAULT NULL,
  `O_MOBILENO` varchar(45) DEFAULT NULL,
  `O_PASSWORD` varchar(20) DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  PRIMARY KEY (`OFFICER_ID`),
  KEY `Department_ID` (`Department_ID`),
  CONSTRAINT `officer_table_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `d_table` (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `compalint_table` (
  `COMPALINT_ID` int NOT NULL,
  `COM_DATE` datetime DEFAULT NULL,
  `COM_ADDRESS` varchar(255) DEFAULT NULL,
  `COM_DES` varchar(255) DEFAULT NULL,
  `COM_STATUS` varchar(45) DEFAULT NULL,
  `Zone_ID` int DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `O_ID` int DEFAULT NULL,
  PRIMARY KEY (`COMPALINT_ID`),
  KEY `Zone_ID` (`Zone_ID`),
  KEY `Department_ID` (`Department_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `O_ID` (`O_ID`),
  CONSTRAINT `compalint_table_ibfk_1` FOREIGN KEY (`Zone_ID`) REFERENCES `zone_table` (`ZONE_ID`),
  CONSTRAINT `compalint_table_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `d_table` (`D_ID`),
  CONSTRAINT `compalint_table_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `user_table` (`USER_ID`),
  CONSTRAINT `compalint_table_ibfk_4` FOREIGN KEY (`O_ID`) REFERENCES `officer_table` (`OFFICER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `response_table` (
  `idRESPONSE_ID` int NOT NULL,
  `RESPONSE_DES` varchar(255) DEFAULT NULL,
  `R_DATECreated` datetime DEFAULT NULL,
  `Complaint_ID` int DEFAULT NULL,
  `Officer_ID` int DEFAULT NULL,
  PRIMARY KEY (`idRESPONSE_ID`),
  KEY `Complaint_ID` (`Complaint_ID`),
  KEY `Officer_ID` (`Officer_ID`),
  CONSTRAINT `response_table_ibfk_1` FOREIGN KEY (`Complaint_ID`) REFERENCES `compalint_table` (`COMPALINT_ID`),
  CONSTRAINT `response_table_ibfk_2` FOREIGN KEY (`Officer_ID`) REFERENCES `officer_table` (`OFFICER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



select * from user_table where USER_ID=( select User_ID from compalint_table order by COM_DATE ASC LIMIT 1);

select * from compalint_table where Zone_ID = (select ZONE_ID from zone_table where ZONE_NAME='South West Zone (Athwa)');

