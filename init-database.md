##Database Initialization
1. log into your database client using the given username and password
2. copy the following sql snippet and paste it to the mysql prompt:

CREATE DATABASE springdb;
use springdb;

CREATE TABLE `emp` (
  `empno` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`empno`)
);

LOCK TABLES `emp` WRITE;

INSERT INTO `emp` VALUES (100,'Amitabh','Mumbai',20000),(101,'Shekhar','Hyderabad',30000),(102,'Rekha','Mumbai',23000),(103,'Kalluram','Delhi',60000),(104,'Ajay','Bangalore',80000);

UNLOCK TABLES;

##Datasource in Spring boot 

spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.url=jdbc:mariadb://localhost:3306/springdb
spring.datasource.username=root
spring.datasource.password=root
spring.datasource.name=myds

spring.jpa.show-sql=true
