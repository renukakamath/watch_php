/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - crmsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crmsdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crmsdb`;

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer_details` varchar(100) DEFAULT NULL,
  `respondent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `answer` */

/*Table structure for table `quiz_options` */

DROP TABLE IF EXISTS `quiz_options`;

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `option_description` varchar(50) DEFAULT NULL,
  `correct_answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `quiz_options` */

insert  into `quiz_options`(`option_id`,`question_id`,`option_description`,`correct_answer`) values 
(34,13,'Manager or Doctor','No'),
(33,13,'ghjkl','No'),
(32,13,'blue','Yes'),
(31,12,' Chemist','No'),
(30,12,'ghjkl','No'),
(29,12,'dfhjk','Yes'),
(28,11,'sdfghjk','No'),
(27,11,'yellow','Yes'),
(26,11,'orange','No'),
(25,10,' Chemist','No'),
(21,9,'Engineer','No'),
(20,9,'yellow','No'),
(19,9,'orange','Yes'),
(24,10,'no','No'),
(23,10,'yes','Yes'),
(22,9,'orange','No'),
(35,14,'dfhjk','Yes'),
(36,14,'NO','No'),
(37,14,'SS','No'),
(38,15,'blue','Yes'),
(39,15,'dfghjk','No'),
(40,15,'Manager or Doctor','No');

/*Table structure for table `quiz_questions` */

DROP TABLE IF EXISTS `quiz_questions`;

CREATE TABLE `quiz_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `Project` varchar(20) DEFAULT NULL,
  `question` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `quiz_questions` */

insert  into `quiz_questions`(`question_id`,`Project`,`question`) values 
(13,'1','Who among the following is younger only to the oldest?'),
(12,'1','what is the color of apple'),
(11,'3','Who among the following is younger only to the oldest?'),
(10,'2','Who among the following is not a female?'),
(9,'3','what is the color of apple'),
(14,'2','Who among the following is not a female?'),
(15,'3','Who is the youngest of the group?');

/*Table structure for table `respondent` */

DROP TABLE IF EXISTS `respondent`;

CREATE TABLE `respondent` (
  `respondent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `income` varchar(100) DEFAULT NULL,
  `projectname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`respondent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `respondent` */

insert  into `respondent`(`respondent_id`,`name`,`address`,`phone`,`income`,`projectname`) values 
(1,'user qwerty','xfdsgdsg','02345678907','123','Mystery Audit');

/*Table structure for table `tbladmin` */

DROP TABLE IF EXISTS `tbladmin`;

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbladmin` */

insert  into `tbladmin`(`ID`,`AdminName`,`UserName`,`MobileNumber`,`Email`,`Password`,`AdminRegdate`) values 
(1,'Admin','admin',7898799720,'tester1@gmail.com','f925916e2754e5e03f75dd58a5733251','2019-09-02 12:02:40');

/*Table structure for table `tblapplyjob` */

DROP TABLE IF EXISTS `tblapplyjob`;

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `JobId` int(10) DEFAULT NULL,
  `Resume` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Message` mediumtext NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ResponseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tblapplyjob` */

insert  into `tblapplyjob`(`ID`,`UserId`,`JobId`,`Resume`,`ApplyDate`,`Message`,`Remark`,`Status`,`ResponseDate`) values 
(1,1,3,'c8655d07599e03ce75ad25ed078d6b741567663469.pdf','2019-09-05 11:34:29','Comes with original documents','','Sorted','2019-09-14 14:20:46'),
(2,1,4,'c8655d07599e03ce75ad25ed078d6b741567663734.pdf','2019-09-08 11:38:54','hgfhfhfh','','Rejected','2019-09-09 12:55:58'),
(3,2,4,'c8655d07599e03ce75ad25ed078d6b741567668198.pdf','2019-09-08 12:53:18','Come with your original documents','','Sorted','2019-09-14 14:20:52'),
(4,2,5,'c8655d07599e03ce75ad25ed078d6b741567668243.pdf','2019-09-05 12:54:03','ghiuiui','','Sorted','2019-09-14 14:20:56'),
(5,1,3,'d41d8cd98f00b204e9800998ecf8427e1567746238.pdf','2019-09-06 10:33:58','','',NULL,'0000-00-00 00:00:00'),
(6,1,6,'d41d8cd98f00b204e9800998ecf8427e1568013929.pdf','2019-09-09 12:55:29','This is sample text for testing.','','Rejected','2019-10-07 22:36:09'),
(7,1,12,'d41d8cd98f00b204e9800998ecf8427e1568371755.pdf','2019-09-13 16:19:15','','',NULL,'0000-00-00 00:00:00'),
(8,5,13,'d41d8cd98f00b204e9800998ecf8427e1570475698.doc','2019-10-08 00:44:58','','',NULL,'0000-00-00 00:00:00'),
(9,6,13,'d41d8cd98f00b204e9800998ecf8427e1570640146.doc','2019-10-09 22:25:46','','',NULL,'0000-00-00 00:00:00'),
(10,6,14,'d41d8cd98f00b204e9800998ecf8427e1570640600.doc','2019-10-09 22:33:20','Your application is sort listed.','','Sorted','2019-10-09 22:34:22');

/*Table structure for table `tblcompany` */

DROP TABLE IF EXISTS `tblcompany`;

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(120) DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `CompanyUrl` varchar(200) DEFAULT NULL,
  `CompanyAddress` mediumtext,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `CompanyEmail` varchar(200) DEFAULT NULL,
  `CompanyLogo` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CompanyRegdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tblcompany` */

insert  into `tblcompany`(`ID`,`CompanyName`,`ContactPerson`,`CompanyUrl`,`CompanyAddress`,`MobileNumber`,`CompanyEmail`,`CompanyLogo`,`Password`,`CompanyRegdate`) values 
(1,'Infosys Pvt Ltd','Sanjana Jha','www.infosytem.com','h-123, banglore behind Aswgandha park',8956232528,'infosys@gmail.com','02822fc031d560839f95fa6eb21f86111568180093.png','202cb962ac59075b964b07152d234b70','2019-09-02 18:59:51'),
(2,'HCL Pvt lt','Sneha','www.hcl.com','g-123, sector- 63 noida',8989898989,'hcl@gmail.com','b64810fde7027715e614449aff1d595f1567485537.png','202cb962ac59075b964b07152d234b70','2019-09-03 10:08:57'),
(3,'TCS pvt ltd','Sudhir Sharma','www.tcs.com','fgfgfguytutuyujytu',8889898989,'support@gmail.com','c26be60cfd1ba40772b5ac48b95ab19b1567753271.png','202cb962ac59075b964b07152d234b70','2019-09-06 12:31:11'),
(4,'Religare Pvt Ltd','Mahesh Kumar','www.religare.com','H-321 Sector 4 Noida',8956247994,'religare@gmail.com','b9fb9d37bdf15a699bc071ce49baea531568302051.jpg','202cb962ac59075b964b07152d234b70','2019-09-12 20:57:31'),
(5,'HSBC','Anuj Kumar','hsbc.com','New Delhi',2345235423,'anuj@hsbc.com','a5847551a6f83c78a36c9440eb48c7e61570640305.png','f925916e2754e5e03f75dd58a5733251','2019-10-09 22:28:25');

/*Table structure for table `tbleducation` */

DROP TABLE IF EXISTS `tbleducation`;

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` int(10) DEFAULT NULL,
  `SecondaryBoard` varchar(100) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnicgpa` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnicgpa` varchar(120) DEFAULT NULL,
  `ExtraCurriculars` varchar(120) DEFAULT NULL,
  `OtherAchivement` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbleducation` */

insert  into `tbleducation`(`ID`,`UserID`,`SecondaryBoard`,`SecondaryBoardyop`,`SecondaryBoardper`,`SecondaryBoardcgpa`,`SSecondaryBoard`,`SSecondaryBoardyop`,`SSecondaryBoardper`,`SSecondaryBoardcgpa`,`GraUni`,`GraUniyop`,`GraUnidper`,`GraUnicgpa`,`PGUni`,`PGUniyop`,`PGUniper`,`PGUnicgpa`,`ExtraCurriculars`,`OtherAchivement`) values 
(3,1,'CBSE','2010','80','8','CBSE','2012','76','7.6','B.TEch','2016','75','7.5','NA','NA','NA','NA','NA','NA'),
(4,5,'CBSE','2010','80','8','CBSE','2012','76','7.6','B.TEch','2016','75','7.5','NA','NA','NA','NA','NA','NA'),
(5,6,'CBSE','2010','80','8','CBSE','2012','76','7.6','B.TEch','2016','75','7.5','NA','NA','NA','NA','NA','NA');

/*Table structure for table `tblmessage` */

DROP TABLE IF EXISTS `tblmessage`;

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AppID` int(10) DEFAULT NULL,
  `Message` mediumtext,
  `Status` varchar(120) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tblmessage` */

insert  into `tblmessage`(`ID`,`AppID`,`Message`,`Status`,`ResponseDate`,`IsRead`) values 
(1,8,' This is sample text for testing.','Rejected','2019-10-07 22:36:09','1'),
(2,10,' Your application is sort listed.','Sorted','2019-10-09 22:34:22','1');

/*Table structure for table `tblpage` */

DROP TABLE IF EXISTS `tblpage`;

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tblpage` */

insert  into `tblpage`(`ID`,`PageType`,`PageTitle`,`PageDescription`,`Email`,`MobileNumber`,`UpdationDate`) values 
(1,'aboutus','About Us','                We are pleased to introduce ourselves as Spiderfocus, a professional placement services organization. We are a prominent Recruitment Firm offering out of the box Campus recruitment solutions to Institutes and colleges. With a vision to explore and harness the talents of young leaders, we have come up with a concept of Campus recruitment and promotion of institutes and colleges looking to place their fresh candidates.<div><br></div>',NULL,NULL,'2019-09-12 13:00:56'),
(2,'contactus','Contact Us','                H-126, By-Pass Road<div>New Delhi India</div>','info@gmail.com',8988858695,'2019-10-09 22:36:15');

/*Table structure for table `tbluser` */

DROP TABLE IF EXISTS `tbluser`;

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `StudentID` varchar(120) DEFAULT NULL,
  `Gender` varchar(120) NOT NULL,
  `Address` mediumtext NOT NULL,
  `Age` int(5) NOT NULL,
  `DOB` varchar(120) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbluser` */

insert  into `tbluser`(`ID`,`FullName`,`Email`,`MobileNumber`,`StudentID`,`Gender`,`Address`,`Age`,`DOB`,`Image`,`Password`,`UserRegdate`) values 
(1,'Rahul Saxena','rahul@gmail.com',8989898989,'567945','Male','H-456 Mayur Vihar',26,'1990-05-01','7fdc1a630c238af0815181f9faa190f51568183396.jpg','202cb962ac59075b964b07152d234b70','2019-09-04 11:38:37'),
(2,'Farha Akthar','farha@gmail.com',2525252525,'5657767','Female','',0,'','','202cb962ac59075b964b07152d234b70','2019-09-04 11:39:16'),
(3,'Akash Jain','jain@gmail.com',6544646544,'667886768','Male','',0,'','','202cb962ac59075b964b07152d234b70','2019-09-04 11:39:54'),
(4,'Ginni Mishra','ginni@gmail.com',3636363663,'7877878','Female','NA',0,'2001-10-07','b4a648e83f2d35f1286e8d139c4f74e11570468215.jpg','202cb962ac59075b964b07152d234b70','2019-09-04 11:40:43'),
(5,'Anuj kumar','ak@gmail.com',6174512546,'HGH32321','Male','',0,'','','f925916e2754e5e03f75dd58a5733251','2019-10-07 23:10:35'),
(6,'ABC','abctest@gmail.com',123458900,'2275462354','Female','',0,'','cdca08e46db5e08f28426946b9c1b8471570640216.png','f925916e2754e5e03f75dd58a5733251','2019-10-09 22:23:26');

/*Table structure for table `tblvacancy` */

DROP TABLE IF EXISTS `tblvacancy`;

CREATE TABLE `tblvacancy` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyID` int(10) DEFAULT NULL,
  `JobTitle` varchar(200) DEFAULT NULL,
  `MonthlySalary` varchar(120) DEFAULT NULL,
  `JobDescriptions` mediumtext,
  `NoofOpenings` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(120) DEFAULT NULL,
  `ApplyDate` varchar(120) DEFAULT NULL,
  `LastDate` varchar(120) DEFAULT NULL,
  `JobpostingDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tblvacancy` */

insert  into `tblvacancy`(`ID`,`CompanyID`,`JobTitle`,`MonthlySalary`,`JobDescriptions`,`NoofOpenings`,`JobLocation`,`ApplyDate`,`LastDate`,`JobpostingDate`) values 
(3,2,'Software Engineer/Senior Software Engineer C++','10K-25K','Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n','10','Noida','04-09-2019','10-09-2019','2019-09-03 13:06:15'),
(4,2,'Software Engineer, Senior Software Engineer, Module Lead','25k-35k','ob Description\r\nBlue Prism Professionals | Xavient | Next- Gen Digital Solutions for Integrated Customer Experience Blue Prism Professionals - Total vacancies: 25 \r\n\r\nProposed Designation: Software Engineer, Senior Software Engineer, Module Lead \r\n\r\nDescription: Identifying and communicating the technical infrastructure requirements. Designing Blue Prism process solutions in accordance with standard Blue Prism design principles and conventions. \r\n\r\nConfiguring new Blue Prism processes and objects using core workflow principles that are efficient, well structured, maintainable and easy to understand. \r\n\r\nSupporting existing processes and implementing change requirements as part of a structured change control process. \r\n\r\nProblem solving issues that arise in day to day running of Blue Prism processes and providing timely responses and solutions as required. \r\n\r\nCommunicating with Blue Prism on software related issues, suggested improvements and participating with other users in the Blue Prism community. \r\n','25','Noida','04-09-2019','10-10-2019','2019-09-03 16:12:39'),
(5,1,'Sql Server Database Administrator','15k-35k','The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server','10','Jhandewalan ICICI Buliding, Delhi','05-09-2019','19-09-2019','2019-09-03 16:16:56'),
(6,1,'SQL QEUFM Software','10K-25K','Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis','52','H-125 Shudha Buliding Banglore ','03-09-2019','10-09-2019','2019-09-03 16:19:08'),
(7,3,'Software Developer(Java/.Net/PHP)','25k-35k','Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n','3','H-476 Noida Sector-12','19-10-2019','28-09-2019','2019-09-12 20:50:39'),
(8,3,'Sql Server Database Administrator','10K-25K','The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server','23','J-123 Sector 136 Greater Noida','12-09-2019','26-09-2019','2019-09-12 20:52:38'),
(9,3,'SQL QEUFM Software','10K-25K','Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis','12','K-12345, Sector 234 XYZ Banglore','13-12-2019','20-11-2019','2019-09-12 20:53:58'),
(10,4,'Software Engineer/Senior Software Engineer C++','15k-35k','Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n','10','H-321 Sector 4 Noida','12-09-2019','19-09-2019','2019-09-12 20:59:33'),
(11,4,'Software Engineer, Senior Software Engineer, Module Lead','25k-35k','Job Description\r\nBlue Prism Professionals | Xavient | Next- Gen Digital Solutions for Integrated Customer Experience Blue Prism Professionals - Total vacancies: 25 \r\n\r\nProposed Designation: Software Engineer, Senior Software Engineer, Module Lead \r\n\r\nDescription: Identifying and communicating the technical infrastructure requirements. Designing Blue Prism process solutions in accordance with standard Blue Prism design principles and conventions. \r\n\r\nConfiguring new Blue Prism processes and objects using core workflow principles that are efficient, well structured, maintainable and easy to understand. \r\n\r\nSupporting existing processes and implementing change requirements as part of a structured change control process. \r\n\r\nProblem solving issues that arise in day to day running of Blue Prism processes and providing timely responses and solutions as required. \r\n\r\nCommunicating with Blue Prism on software related issues, suggested improvements and participating with other users in the Blue Prism community. \r\n','10','H-321 Sector 4 Noida','14-09-2019','19-09-2019','2019-09-12 21:00:34'),
(12,4,'Sql Server Database Administrator','10K-25K','The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server','25','H-321 Sector 4 Noida','13-03-2020','19-09-2019','2019-09-12 21:01:18'),
(13,4,'SQL QEUFM Software','10K-25K','Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis','10','H-321 Sector 4 Noida','14-09-2019','27-10-2019','2019-10-12 21:01:58'),
(14,5,'Web Developer','$25-30 k','PHP (Must)\r\nMySQL (Must)\r\nShould have knowledge of HTML,Bootstrap, and CSS ','2','New Delhi India','07-10-2019','01-12-2019','2019-10-09 22:30:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
