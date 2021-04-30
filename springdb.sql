CREATE DATABASE springdb;
use springdb;

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES ('arun','welcome1',0),('pavan','welcome1',1),('shantanu','welcome1',1);

UNLOCK TABLES;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`),
  CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `authorities` WRITE;

INSERT INTO `authorities` VALUES ('arun','ROLE_USER'),('pavan','ROLE_ADMIN'),('shantanu','ROLE_USER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `emp` (
  `empno` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `emp` WRITE;

INSERT INTO `emp` VALUES (100,'Amitabh','Mumbai',20000),(101,'Shekhar','Hyderabad',30000),(102,'Rekha','Mumbai',23000),(103,'Kalluram','Delhi',60000),(104,'Ajay','Bangalore',80000);

UNLOCK TABLES;


