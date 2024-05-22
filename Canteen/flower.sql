/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - flower
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flower` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `flower`;

/*Table structure for table `flower` */

DROP TABLE IF EXISTS `flower`;

CREATE TABLE `flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fno` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Enable',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `flower` */

insert  into `flower`(`id`,`fno`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`status`) values (1,'13','200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Enable'),(5,'12','b2.jpg','buddies','good','600','30 min','Enable'),(7,'15','marigold flowers.jpg','MariGold Flowers','We have a different types \r\nof marigold Flowers ','600','15','Enable'),(8,'16','wall flower.jpg','Wall Decertation flowers','We have all types wall décor Flowers','800','18','Enable'),(9,'18','Weed.jpg','Wedding Roses','This have Varieties  of wedding roses','1200','10','Enable'),(10,'22','jashmin.jpg','Jasmine','We have bulk of Jasmine flowers daily.','200','Any Time','Enable');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fimage` varchar(2000) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`sid`,`sname`,`email`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`status`) values (1,'12','jeni',NULL,'b2.jpg','buddies','good','600','30 min','Online_Payment','9','null','hjkh','Accept'),(2,'12','jeni',NULL,'200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Online_Payment',' 10',NULL,'Chennai','Waiting'),(3,'15','sathya',NULL,'200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Online_Payment',' 12',NULL,'dfaf','Waiting'),(4,'15','sathya','sathya@gmail.com','200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Cash_on_Delivery',' 12',NULL,'dfa','Waiting'),(5,'15','sathya','sathya@gmail.com','b2.jpg','buddies','good','600','30 min','Online_Payment',' 12',NULL,'df','Waiting'),(6,'28','Deepag','deepa@gmail.com','jashmin.jpg','Jasmine','We have bulk of Jasmine flowers daily.','200','Any Time','Online_Payment','10',NULL,'Anna Nagar,Chennai','Accept');

/*Table structure for table `ordertran` */

DROP TABLE IF EXISTS `ordertran`;

CREATE TABLE `ordertran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `fimage` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `ready` varchar(200) DEFAULT NULL,
  `pay` varchar(200) DEFAULT NULL,
  `qan` varchar(200) DEFAULT NULL,
  `totcost` varchar(200) DEFAULT NULL,
  `address` varbinary(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `exp` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ordertran` */

insert  into `ordertran`(`id`,`sid`,`sname`,`fimage`,`fname`,`fdes`,`cost`,`ready`,`pay`,`qan`,`totcost`,`address`,`bank`,`brach`,`ifsc`,`exp`,`status`) values (1,'12','jeni','200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Online_Payment',' 10',NULL,'Chennai','Edypa','Gunidy','EOD100976','12/09/21','Waiting'),(2,'15','sathya','200redroses-appleyard.jpg','Bunch of Rose','This has lots of rose with the fresh flowers','2500','Any time','Online_Payment',' 12',NULL,'dfaf','Edypa','Gunidy','EOD100976','12/09/21','Waiting'),(3,'15','sathya','b2.jpg','buddies','good','600','30 min','Online_Payment',' 12',NULL,'df','iob','ASX','EOD100976','12/09/21','Waiting'),(4,'28','Deepag','jashmin.jpg','Jasmine','We have bulk of Jasmine flowers daily.','200','Any Time','Online_Payment','10',NULL,'Anna Nagar,Chennai','State Bank Of India','Gunidy','SBI00987','12/09/23','Waiting');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `sno` varchar(200) DEFAULT NULL,
  `simage` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`sno`,`simage`,`sname`,`pass`,`mail`,`mobile`,`dob`,`address`) values (1,'15','200redroses-appleyard.jpg','sathya','sathya','sathya@gmail.com','938383838','21/01/1999','chennai\r\n'),(2,'12','cotten.jpg','jeni','12','jeni@gmail.com','9303938399','14.07.1998','Chennai'),(3,'28','cotten.jpg','Deepag','deepag','deepa@gmail.com','9303938399','14.07.1998','Chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
