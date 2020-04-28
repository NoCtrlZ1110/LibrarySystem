-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `publishDate` date NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Tools and Weapons','The Promise and the Peril of the Digital Age',31,'2017-01-26','Brad Smith, Carol Ann Browne','information technology','it1'),(2,'Digital to the Core','Remastering Leadership for Your Industry, Your Enterprise, and Yourself',17,'2017-04-19','Mark Raskino, Graham Waller','information technology','it2'),(3,'Computers Made Easy','From Dummy To Geek',17,'2017-09-26','James Bernstein','information technology','it3'),(4,'Management Information Systems','',28,'2019-03-28','Ken J. Sousa, Effy Oz','information technology','it4'),(5,'Health Information Management Technology','An Applied Approach',19,'2018-12-07','Nanette B Sayles','information technology','it5'),(6,'Principles of Health Interoperability','SNOMED CT, HL7 and FHIR',17,'2015-06-01','Tim Benson, Grahame Grieve','information technology','it6'),(7,'The Phoenix Project','A Novel about IT, DevOps, and Helping Your Business Win',33,'2015-11-28','Gene Kim, Kevin Behr, George Spafford','information technology','it7'),(8,'Before Disrupting Healthcare','',36,'2018-03-23','Pallav Sharda','information technology','it8'),(9,'Oxford Information Technology for CSEC','Third edition',34,'2015-05-25','Glenda Gay, Ronald Blades','information technology','it9'),(10,'OPC UA Unified Architecture','The Everyman\'s Guide to the Most Important Information Technology in Industrial Automation',33,'2016-09-16','John S Rinaldi','information technology','it10'),(11,'IT Strategy for Non-IT Managers','Becoming an Engaged Contributor to Corporate IT Decisions',38,'2018-07-05','Amrit Tiwana','information technology','it11'),(12,'Technical Impact','Making Your Information Technology Effective, and Keeping It That Way',15,'2018-05-19','Al Kuebler','information technology','it12'),(13,'A CEO\'s Survival Guide to Information Technology','',21,'2016-07-02','Bob Coppedge','information technology','it13'),(14,'Digital Forensics','',37,'2019-02-11','Andre Arnes','information technology','it14'),(15,'The Great Convergence','Information Technology and the New Globalization',35,'2017-10-07','Richard Baldwin','information technology','it15'),(16,'Exploring Microsoft PowerPoint 2016 Comprehensive','',21,'2016-01-16','Mary Anne Poatsy, Rebecca Lawson, Cynthia Krebs, Robert T. Grauer','information technology','it16'),(17,'Offshoring IT Services','A framework for managing outsourced Projects',23,'2015-08-22','K Mohan Babu','information technology','it17'),(18,'Security and Privacy Controls for Federal Information Systems and Organizations','NIST SP 800-53 Revision 4 including updates as of 01-22-2015',22,'2019-07-12','National Instituteof Standards','information technology','it18'),(19,'Global Information Technologies','Ethics and the Law',25,'2017-08-20','Thomas Koenig, Michael Rustad','information technology','it19'),(20,'Information Technology and Organizational Learning','Managing Behavioral Change in the Digital Age',40,'2016-07-06','Arthur M. Langer','information technology','it20'),(21,'Get I.T.! How to Start a Career in the New Information Technology','Is I.T. Right for You?',35,'2019-10-15','Zorina Alliata, Lyubov Berzin, Sachin Agarwa','information technology','it21'),(22,'Contemporary Health Informatics','',21,'2015-02-16','Mark Braunstein','information technology','it22'),(23,'Healthcare Information Management Systems','Cases, Strategies, and Solutions',25,'2017-08-20','Charlotte A. Weaver, Marion J. Ball, George R. Kim, Joan M. Kiel','information technology','it23'),(24,'Information Technology Law','',22,'2018-08-05','Uta Kohl, Andrew Charlesworth','information technology','it24'),(25,'Prentice Hall Introduction to Computers and Information Technology','',35,'2019-02-03','PRENTICE HALL','information technology','it25'),(26,'Computing and Information Technology','DANTES / DSST Test Study Guide',27,'2016-09-21','PassYourClass','information technology','it26'),(27,'Lean IT','Enabling and Sustaining Your Lean Transformation',23,'2017-10-26','Steven C Bell, Michael A Orzen','information technology','it27'),(28,'Healthcare Project Management, Second Edition','',32,'2015-04-17','Kathy Schwalbe, Dan Furlong','information technology','it28'),(29,'Fruition. Technics Publications LLC','',24,'2016-02-16','Chris Potts','information technology','it29'),(30,'The Edge','Business Performance Through Information Technology Leadership by Manoj Garg',24,'2017-06-05','Manoj Garg, Michael Scheuerman','information technology','it30'),(31,'The New IT','How Technology Leaders are Enabling Business Strategy in the Digital Age',29,'2017-04-24','Jill Dyche','information technology','it31'),(32,'Information, Technology, and Innovation','Resources for Growth in a Connected World',27,'2017-08-24','John M. Jordan','information technology','it32'),(33,'Inflection Point','How the Convergence of Cloud, Mobility, Apps, and Data Will Shape the Future of Business',31,'2016-02-16','Scott Stawski','information technology','it33'),(34,'Ethical Health Informatics','Challenges and Opportunities',33,'2016-09-27','Laurinda Beebe Harman, Frances Cornelius','information technology','it34'),(35,'Retail Apocalypse','The Death of Malls, Retailers & Jobs',39,'2018-06-26','Stanley Philipose','information technology','it35'),(36,'Enterprise Governance of Information Technology','Achieving Alignment and Value, Featuring COBIT 5',39,'2018-05-31','Steven De Haes, Wim Van Grembergen','information technology','it36'),(37,'Transforming IT Culture','How to Use Social Intelligence, Human Factors, and Collaboration to Create an IT Department That Outperforms',35,'2019-07-29','Frank Wander','information technology','it37'),(38,'Unleashing the Power of IT','Bringing People, Business, and Technology Together',27,'2017-07-19','Dan Roberts','information technology','it38'),(39,'Management Information Systems','Managing the Digital Firm',31,'2016-12-21','Kenneth C. Laudon, Jane P. Laudon','information technology','it39'),(40,'Innovation with Information Technologies in Healthcare','',18,'2018-05-11','Lyle Berkowitz, Chris McCarthy','information technology','it40'),(41,'Careers in Health Information Technology','',24,'2015-05-01','Brian T. Malec PhD','information technology','it41'),(42,'Introduction to Information Science and Technology','',34,'2017-01-01','Charles H. Davis, Debora Shaw','information technology','it42'),(43,'Design Research in Information Systems','Theory and Practice',37,'2017-09-05','Alan Hevner, Samir Chatterjee','information technology','it43'),(44,'Information Technology Project Management','Providing Measurable Organizational Value',35,'2015-11-30','Jack T. Marchewka','information technology','it44'),(45,'How To Create A Great','Information Technology Vision -- And Thrill Your CEO',23,'2016-03-29','Mr. Thomas S. Ireland','information technology','it45'),(46,'International Internet Law','',29,'2015-12-20','Joanna Kulesza','information technology','it46'),(47,'The Effect of Offshoring on the Information Technology Sector','Is It Really Affecting Us',27,'2018-06-13','Mohammed K. Yusuf','information technology','it47'),(48,'Measuring and Communicating Security\'s Value','A Compendium of Metrics for Enterprise Protection',23,'2018-12-12','George Campbell','information technology','it48'),(49,'Nanoelectronics and Information Technology','',35,'2017-07-28','Rainer Waser','information technology','it49'),(50,'Information Technology and Collection Management for Library User Environments','',33,'2015-06-29','Joseph Walker','information technology','it50'),(51,'Health Information Management Technology','An Applied Approach',26,'2016-11-02','Merida L. Johns','information technology','it51'),(52,'Exploring Microsoft Office 2016 Volume 1','',23,'2016-02-19','Mary Anne Poatsy, Keith Mulbery, Cynthia Krebs, Lynn Hogan','information technology','it52'),(53,'IT\'s hidden face','Everything you always wanted to know about Information Technology. A look behind the scenes',38,'2019-12-21','Claude Roeltgen','information technology','it53'),(54,'Real Business of IT','How CIOs Create and Communicate Value',30,'2016-02-03','Richard Hunter, George Westerman','information technology','it54'),(55,'Data and Reality','A Timeless Perspective on Perceiving and Managing Information in Our Imprecise World, 3rd Edition',15,'2015-09-03','William Kent','information technology','it55'),(56,'Help Desk Analyst','System Support Analyst Job Interview Bottom Line Questions and Answers: Your Basic Guide to Acing Any Information Technology Help Desk Job Interview',25,'2017-10-05','Kumar','information technology','it56'),(57,'Itil for Beginners','The Complete Beginner\'s Guide to Itil',20,'2016-12-23','Clydebank Technology','information technology','it57'),(58,'From Business Strategy to Information Technology Roadmap','A Practical Guide for Executives and Board Members',34,'2016-01-01','Tiffany Pham, David K. Pham, Andrew Pham','information technology','it58'),(59,'Hospitality Information Systems and E-Commerce','',15,'2017-08-23','Dana V. Tesone','information technology','it59'),(60,'Healthcare Informatics','Improving Efficiency through Technology, Analytics, and Management',17,'2018-11-01','Stephan P. Kudyba','information technology','it60'),(61,'Accounting Information Systems 9th edition Text Only','',20,'2016-10-07','Ulric J. Gelinas','information technology','it61'),(62,'The Nursing Informatics Implementation Guide','',18,'2017-10-30','Eleanor Callahan Hunt, Sara Breckenridge Sproat, Rebecca Rutherford Kitzmiller','information technology','it62'),(63,'Handbook on Information Technology in Finance','',33,'2015-06-28','Detlef Seese, Christof Weinhardt, Frank Schlottman','information technology','it63'),(64,'Essentials of MIS','',28,'2017-07-02','Kenneth C. Laudon, Jane P. Laudon','information technology','it64'),(65,'Open Source for the Enterprise','Managing Risks, Reaping Rewards',15,'2018-06-12','Dan Woods, Gautam Guliani','information technology','it65'),(66,'Enterprise Architecture and New Generation Information Systems','',40,'2019-04-12','Dimitris N. Chorafas','information technology','it66'),(67,'Handbook of Telecommunications Economics, Vol. 1','Structure, Regulation and Competition',35,'2017-02-10','Martin E. Cave, Sumit K. Majumdar, Ingo Vogelsang','information technology','it67'),(68,'Information Technology Project Management, Revised','',33,'2019-05-13','Kathy Schwalbe','information technology','it68'),(69,'Ethics and Information Technology','A Case-Based Approach to a Health Care System in Transition',38,'2017-12-12','James G. Anderson, Kenneth Goodman','information technology','it69'),(70,'Lean Performance ERP Project Management','Implementing the Virtual Lean Enterprise, Second Edition',17,'2017-01-05','Brian J. Carroll','information technology','it70'),(71,'ITSM','QuickStart Guide - The Simplified Beginner\'s Guide to IT Service Management',23,'2015-07-06','ClydeBank Technology','information technology','it71'),(72,'Essentials of Health Information Systems and Technology','',30,'2018-12-22','Jean A Balgrosky','information technology','it72'),(73,'Offshoring Information Technology','Sourcing and Outsourcing to a Global Workforce',27,'2018-03-27','Erran Carmel, Paul Tjia','information technology','it73'),(74,'Information Technology Project Management','',33,'2016-07-28','Kathy Schwalbe','information technology','it74'),(75,'Information Technology Auditing','',23,'2018-03-08','James A. Hall','information technology','it75'),(76,'The Next Leap in Productivity','What Top Managers Really Need to Know about Information Technology',16,'2016-09-02','Adam Kolawa','information technology','it76'),(77,'Health Informatics in the Cloud','',37,'2017-05-24','Mark L. Braunstein','information technology','it77'),(78,'Business Driven Information Systems','',37,'2017-11-15','Paige Baltzan, Amy Phillips','information technology','it78'),(79,'Information Technology and the Criminal Justice System','',40,'2017-09-19','April Pattavina','information technology','it79'),(80,'Ethics for the Information Age Global Edition','',21,'2018-07-24','Unknown','information technology','it80'),(81,'The U.S. Technology Skills Gap, + Website','What Every Technology Executive Must Know to Save America\'s Future',27,'2019-10-26','Gary J. Beach','information technology','it81'),(82,'Excellence in IT Achieving Success in an Information Technology Career','',32,'2018-09-22','Warren C. Zabloudil','information technology','it82'),(83,'Information Technology for the Health Professions','',33,'2015-04-16','Lillian Burke, Barbara Weill','information technology','it83'),(84,'Information Technology for Management','Digital Strategies for Insight, Action, and Sustainable Performance',40,'2015-10-09','Efraim Turban, Carol Pollard, Gregory Wood','information technology','it84'),(85,'To the Cloud','Cloud Powering an Enterprise',17,'2019-10-26','Pankaj Arora, Raj Biyani, Salil Dave','information technology','it85'),(86,'Ethics in Information Technology','',24,'2019-12-04','George Reynolds','information technology','it86'),(87,'The Chief Information Officer\'s Body of Knowledge','People, Process, and Technology',28,'2016-07-27','Dean Lane','information technology','it87'),(88,'Healthcare Information Technology Exam Guide for CHTS and CAHIMS Certifications','',30,'2018-01-06','Kathleen A. McCormick, Brian Gugerty, John E. Mattison','information technology','it88'),(89,'Ethics in Information Technology','',32,'2019-02-03','George Reynolds','information technology','it89'),(90,'Healthcare Analytics for Quality and Performance Improvement','',29,'2019-08-26','Trevor L. Strome','information technology','it90'),(91,'Information Rules','A Strategic Guide to the Network Economy',23,'2016-10-24','Carl Shapiro, Hal R. Varian','information technology','it91'),(92,'Digital Transformation','Survive and Thrive in an Era of Mass Extinction',30,'2018-04-02','Thomas M. Siebel','information technology','it92'),(93,'Human + Machine','Reimagining Work in the Age of AI',31,'2018-11-24','Paul R. Daugherty, H. James Wilson','information technology','it93'),(94,'Code','And Other Laws of Cyberspace, Version 2.0',27,'2016-05-28','Lawrence Lessig','information technology','it94'),(95,'Googled','The End of the World As We Know It',32,'2016-07-27','Ken Auletta','information technology','it95'),(96,'Hiring for Information Technology Positions','A handbook of semi-technical screening questions for recruiters and HR professionals',20,'2017-01-10','Missy Rennet ','information technology','it96'),(97,'Sweetie 2.0','Using Artificial Intelligence to Fight Webcam Child Sex Tourism',40,'2016-05-24','Simone van der Hof, Ilina Georgieva, Bart Schermer, Bert-Jaap Koops','information technology','it97'),(98,'BLOCKCHAIN. FIRST STEP','BLOCKCHAIN GLOSSARY. BITCOINâ€™S BLOCKCHAIN. BITCOIN TECHNOLOGY',17,'2018-12-01','Michael Tramp','information technology','it98'),(99,'Accuracy of Textual Document Clustering With Semantic Approach','Natural Language Processing with Semantic by the help of WordNet. The accuracy of Clustering is assured by F-Measure',19,'2017-05-19','S. K. Ahammad Fahad','information technology','it99'),(100,'The 2019-2024 World Outlook for Healthcare Information Technology Outsourcing','',15,'2015-02-18','Icon Group International','information technology','it100'),(101,'The New Jim Crow: Mass Incarceration in the Age of Colorblindness','',41,'2012-10-18','Michelle Alexander','Law&Social','law101'),(102,'America\'s Constitution: A Biography','',28,'2016-09-23','Akhil Reed Amar','Law&Social','law102'),(103,'Carnal Crimes: Sexual Assault Law in Canada, 1900-1975','',32,'2016-02-22','Constance Backhouse','Law&Social','law103'),(104,'Forcing the Spring: Inside the Fight for Marriage Equality','',45,'2018-02-25','Jo Becker','Law&Social','law104'),(105,'The Common Legal Past of Europe, 1000-1800 (Studies in Medieval and Early Modern Canon Law)','',45,'2016-02-24','Manlio Bellomo','Law&Social','law105'),(106,'Transgender Employment Experiences: Gendered Perceptions and the Law','',35,'2013-10-01','Kyla Bender-Baird','Law&Social','law106'),(107,'Policing the National Body: Race, Gender and Criminalization in the United States','',40,'2012-12-01','Anannya Bhattacharjee , Jael Silliman','Law&Social','law107'),(108,'Madisonâ€™s Hand: Revising the Constitutional Convention','',28,'2012-11-26','Mary Sarah Bilder','Law&Social','law108'),(109,'Trying Leviathan: The Nineteenth-Century New York Court Case That Put the Whale on Trial and Challenged the Order of Nature','',43,'2012-02-13','D. Graham Burnett','Law&Social','law109'),(110,'Let\'s Get Free: A Hip-Hop Theory of Justice','',28,'2016-01-13','Paul Butler','Law&Social','law110'),(111,'Policing the Planet: Why the Policing Crisis Led to Black Lives Matter','',43,'2013-04-15','Jordan T. Camp','Law&Social','law111'),(112,'Misconceptions: Unmarried Motherhood and the Ontario Children of Unmarried Parents Act, 1921-1969 (Osgoode Society for Canadian Legal History)','',46,'2012-12-20','Lori Chambers','Law&Social','law112'),(113,'The Case Against the Supreme Court','',37,'2013-02-23','Erwin Chemerinsky','Law&Social','law113'),(114,'King John: And the Road to Magna Carta','',44,'2016-02-29','Stephen Church','Law&Social','law114'),(115,'Between the World and Me','',34,'2014-04-26','Ta-Nehisi Coates','Law&Social','law115'),(116,'Sisters in the Struggle : African-American Women in the Civil Rights-Black Power Movement','',35,'2018-10-09','Bettye Collier-Thomas , V.P. Franklin','Law&Social','law116'),(117,'Long, Lingering Shadow: Slavery, Race, and Law in the American Hemisphere (Studies in the Legal History of the South Ser.)','',20,'2018-08-21','Robert J. Cottrol','Law&Social','law117'),(118,'Freedom Is a Constant Struggle: Ferguson, Palestine, and the Foundations of a Movement','',41,'2012-08-05','Angela Y. Davis','Law&Social','law118'),(119,'Governing Immigration Through Crime: A Reade','',40,'2018-09-08','Julie Dowling','Law&Social','law119'),(120,'You Have the Right to Remain Innocent','',34,'2017-05-01','James Duane','Law&Social','law120'),(121,'A Legal History of the Civil War and Reconstruction (New Histories of American Law)','',43,'2016-02-01','Laura F. Edwards','Law&Social','law121'),(122,'The Informant: A True Story','',46,'2016-01-10','Kurt Eichenwald','Law&Social','law122'),(123,'Scorpions: The Battles and Triumphs of FDR\'s Great Supreme Court Justices','',46,'2012-11-13','Noah Feldman','Law&Social','law123'),(124,'Ballot Battles: The History of Disputed Elections in the United States','',38,'2016-08-24','Edward Foley','Law&Social','law124'),(125,'Discipline & Punish: The Birth of the Prison','',36,'2018-04-27','Michel Foucault','Law&Social','law125'),(126,'Herculine Barbin (Being the Recently Discovered Memoirs of a Nineteenth Century French Hermaphrodite)','',27,'2012-05-21','Michel Foucault','Law&Social','law126'),(127,'Law and the Gay Rights Story: The Long Search for Equal Justice in a Divided Democracy','',22,'2012-07-09','Walter Frank','Law&Social','law127'),(128,'Law in America: A Short History (Modern Library Chronicles)','',37,'2017-07-03','Lawrence M. Friedman','Law&Social','law128'),(129,'The Legal Ideology of Removal: The Southern Judiciary and the Sovereignty of Native American Nations','',50,'2012-09-26','Tim Alan Garrison','Law&Social','law129'),(130,'Civil Rights Stories (Law Stories)','',30,'2016-04-04','Myriam Gilles , Risa Goluboff ','Law&Social','law130'),(131,'My Own Words','',24,'2018-04-07','Ruth Bader Ginsburg','Law&Social','law131'),(132,'Lawyers and Legal Culture in British North America: Beamish Murdoch of Halifax (Osgoode Society for Canadian Legal History)','',42,'2014-12-06','Philip Girard','Law&Social','law132'),(133,'Unequal Freedom: How Race and Gender Shaped American Citizenship and Labor','',45,'2014-06-29','Evelyn Nakano Glenn','Law&Social','law133'),(134,'Storming the Court: How a Band of Law Students Fought the President--and Won','',50,'2015-05-18','Brandt Goldstein','Law&Social','law134'),(135,'Inherently Unequal: The Betrayal of Equal Rights by the Supreme Court, 1865-1903','',49,'2018-10-14','Lawrence Goldstone','Law&Social','law135'),(136,'Vagrant Nation: Police Power, Constitutional Change, and the Making of the 1960s','',23,'2017-03-30','Risa Goluboff','Law&Social','law136'),(137,'The Burger Court and the Rise of the Judicial Right','',49,'2012-06-30','Michael J. Graetz','Law&Social','law137'),(138,'BECOMING JUSTICE BLACKMUN','',47,'2013-05-28','LINDA GREENHOUSE','Law&Social','law138'),(139,'The Massey Murder: A Maid, Her Master And The Trial That Shocked','',50,'2016-10-21','Charlotte Gray','Law&Social','law139'),(140,'A Civil Action','',38,'2016-11-02','Jonathan Harr','Law&Social','law140');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowbook`
--

DROP TABLE IF EXISTS `borrowbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowbook` (
  `roundID` int(11) NOT NULL AUTO_INCREMENT,
  `bookID` int(11) NOT NULL,
  `studentID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `borrowDate` date NOT NULL,
  `request` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`roundID`),
  KEY `fk_studentID` (`studentID`),
  KEY `fk_bookID` (`bookID`),
  CONSTRAINT `fk_bookID` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  CONSTRAINT `fk_studentID` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowbook`
--

LOCK TABLES `borrowbook` WRITE;
/*!40000 ALTER TABLE `borrowbook` DISABLE KEYS */;
INSERT INTO `borrowbook` VALUES (42,9,'18020881',1,'2020-04-30',NULL),(43,10,'18020881',1,'2020-05-04',NULL),(44,12,'18020881',1,'2020-04-30',NULL);
/*!40000 ALTER TABLE `borrowbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shift` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrowID` int(11) NOT NULL,
  `returnID` int(11) NOT NULL,
  `admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `fk_borrowID` (`borrowID`),
  KEY `fk_returnID` (`returnID`),
  KEY `fk_admin` (`admin`),
  CONSTRAINT `fk_admin` FOREIGN KEY (`admin`) REFERENCES `admin` (`username`),
  CONSTRAINT `fk_borrowID` FOREIGN KEY (`borrowID`) REFERENCES `borrowbook` (`roundID`),
  CONSTRAINT `fk_returnID` FOREIGN KEY (`returnID`) REFERENCES `returnbook` (`roundID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee2`
--

DROP TABLE IF EXISTS `employee2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee2` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `employee_name` varchar(255) NOT NULL COMMENT 'employee name',
  `employee_salary` double NOT NULL COMMENT 'employee salary'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee2`
--

LOCK TABLES `employee2` WRITE;
/*!40000 ALTER TABLE `employee2` DISABLE KEYS */;
INSERT INTO `employee2` VALUES (2,'Smith',170750),(3,'Jhon',86000),(6,'Andy',372000),(7,'Flower',137500),(8,'Steve',327900),(9,'William',205500),(10,'Dany',103600),(11,'Dove',120000),(12,'Kim',14000),(13,'Frost',20000);
/*!40000 ALTER TABLE `employee2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnbook`
--

DROP TABLE IF EXISTS `returnbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnbook` (
  `roundID` int(11) NOT NULL AUTO_INCREMENT,
  `bookID` int(11) NOT NULL,
  `studentID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `returnDate` date NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`roundID`),
  KEY `fk_studentID2` (`studentID`),
  KEY `fk_bookID2` (`bookID`),
  CONSTRAINT `fk_bookID2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  CONSTRAINT `fk_studentID2` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnbook`
--

LOCK TABLES `returnbook` WRITE;
/*!40000 ALTER TABLE `returnbook` DISABLE KEYS */;
INSERT INTO `returnbook` VALUES (36,9,'18020881',1,'2020-05-28','NO'),(37,10,'18020881',1,'2020-09-01','NO'),(38,12,'18020881',1,'2020-08-28','NO');
/*!40000 ALTER TABLE `returnbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `studentName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `faculty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('18020881','Nguyen Van Manh','2000-07-11','CN1','K63','18020881'),('18020885','Dang Van Manh','2000-08-11','CN1','K63','18020885');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28  8:26:21
