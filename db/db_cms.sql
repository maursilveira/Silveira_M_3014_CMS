-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_cms
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Jack','Nicholson'),(2,'Louise','Fletcher'),(3,'Michael','Berryman'),(4,'Will','Sampson'),(5,'Danny','DeVito'),(6,'Shelley','Duvall'),(7,'Danny','Lloyd'),(8,'Scatman','Crothers'),(9,'Bill','Murray'),(10,'Andie','MacDowell'),(11,'Chris','Elliott'),(12,'Rod','Taylor'),(13,'Betty Lou','Gerson'),(14,'J. Pat','O\'Malley'),(16,'Keir','Dullea'),(17,'Gary','Lockwood'),(18,'William','Sylvester'),(19,'Sigourney','Weaver'),(20,'Tom','Skerritt'),(21,'John','Hurt'),(22,'Charlton','Heston'),(23,'Jack','Hawkins'),(24,'Stephen','Boyd'),(25,'Macaulay','Culkin'),(26,'Joe','Pesci'),(27,'Daniel','Stern'),(28,'Tippi','Hedren'),(29,'Jessica','Tandy'),(30,'John','Belushi'),(31,'Dan','Aykroyd'),(32,'Cab','Calloway'),(33,'Emilio','Estevez'),(34,'Judd','Nelson'),(35,'Molly','Ringwald'),(36,'Sean','Astin'),(37,'Josh','Brolin'),(38,'Jeff','Cohen'),(39,'Phil','Harris'),(40,'Sebastian','Cabot'),(41,'Louis','Prima'),(42,'Matthew','Broderick'),(43,'Jeremy','Irons'),(44,'James Earl','Jones'),(45,'Noah','Hathaway'),(46,'Barret','Oliver'),(47,'Max','von Sydow'),(48,'Gunnar','Bjornstrand'),(49,'Henry','Thomas'),(50,'Drew','Barrymore'),(51,'Peter','Coyote'),(52,'Charles','Chaplin'),(53,'Claire','Bloom'),(54,'Nigel','Bruce');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Fantasy Films'),(2,'Warner Bros.'),(3,'Columbia Pictures'),(4,'Walt Disney Productions'),(5,'Metro-Goldwyn-Mayer'),(6,'Twentieth Century-Fox Productions'),(7,'Alfred J. Hitchcock Productions'),(8,'Universal Pictures'),(9,'Neue Constantin Film'),(10,'Svensk Filmindustri'),(11,'Celebrated Productions');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Milos','Forman'),(2,'Stanley','Kubrick'),(3,'Harold','Ramis'),(4,'Clyde','Geronimi'),(5,'Hamilton','Luske'),(6,'Wolfgang','Reitherman'),(7,'Ridley','Scott'),(8,'William','Wyler'),(9,'Chris','Columbus'),(10,'Alfred','Hitchcock'),(11,'John','Landis'),(12,'John','Hughes'),(13,'Richard','Donner'),(14,'Roger','Allers'),(15,'Rob','Minkoff'),(16,'Wolfgang','Petersen'),(17,'Ingmar','Bergman'),(18,'Steven','Spielberg'),(19,'Charles','Chaplin');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drama'),(2,'Horror'),(3,'Comedy'),(4,'Fantasy'),(5,'Romance'),(6,'Animation'),(7,'Adventure'),(8,'Sci-Fi'),(9,'History'),(10,'Family'),(11,'Mystery'),(12,'Crime'),(13,'Music');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `year` smallint(3) unsigned DEFAULT NULL,
  `runtime` smallint(3) unsigned DEFAULT NULL,
  `storyline` text DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `review` varchar(10) DEFAULT NULL,
  `cover` varchar(200) DEFAULT 'default.jpg',
  `trailer` varchar(200) DEFAULT NULL,
  `kids` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'One Flew Over the Cuckoo\'s Nest',1975,133,'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.',4,'8.7','one_flew_over.jpg','one_flew_over.mp4',0),(2,'The Shining',1980,146,'A family heads to an isolated hotel for the winter where an evil spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.',4,'8.4','the_shining.jpg','the_shining.mp4',0),(3,'Groundhog Day',1993,101,'A weatherman finds himself inexplicably living the same day over and over again.',2,'8.0','groundhog_day.jpg','groundhog_day.mp4',0),(4,'101 Dalmatians',1961,79,'When a litter of Dalmatian puppies are abducted by the minions of Cruella de Vil, the parents must find them before she uses them for a diabolical fashion statement.',1,'7.2','101_dalmatians.jpg','101_dalmatians.mp4',1),(5,'2001: A Space Odyssey',1968,149,'Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.',1,'8.3','2001_a_space_odyssey.jpg','2001_a_space_odyssey.mp4',0),(6,'Alien',1979,116,'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.',4,'8.5','alien.jpg','alien.mp4',0),(7,'Ben-Hur',1959,212,'When a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.',1,'8.1','ben-hur.jpg','ben-hur.mp4',0),(8,'Home Alone',1990,103,'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.',2,'7.5','home_alone.jpg','home_alone.mp4',1),(9,'The Birds',1963,119,'A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people.',6,'7.7','the_birds.jpg','the_birds.mp4',0),(10,'The Blues Brothers',1980,133,'Jake Blues, just out from prison, puts together his old band to save the Catholic home where he and brother Elwood were raised.',4,'7.9','the_blues_brothers.jpg','the_blues_brothers.mp4',0),(11,'The Breakfast Club',1985,97,'Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.',4,'7.9','the_breakfast_club.jpg','the_breakfast_club.mp4',0),(12,'The Goonies',1985,114,'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.',2,'7.8','the_goonies.jpg','the_goonies.mp4',1),(13,'The Jungle Book',1967,78,'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.',1,'7.6','the_jungle_book.jpg','the_jungle_book.mp4',1),(14,'The Lion King',1994,88,'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.',1,'8.5','the_lion_king.jpg','the_lion_king.mp4',1),(15,'The NeverEnding Story',1984,102,'A troubled boy dives into a wondrous fantasy world through the pages of a mysterious book.',2,'7.4','the_neverending_story.jpg','the_neverending_story.mp4',1),(16,'The Seventh Seal',1957,96,'A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.',6,'8.2','the_seventh_seal.jpg','the_seventh_seal.mp4',0),(17,'E.T. the Extra-Terrestrial',1982,115,'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.',2,'7.9','et.jpg','et.mp4',1),(18,'Limelight',1952,137,'A fading comedian and a suicidally despondent ballet dancer must look to each other to find meaning and hope in their lives.',1,'8.1','limelight.jpg','limelight.mp4',1);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actor`
--

DROP TABLE IF EXISTS `movie_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_actor` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` tinyint(4) NOT NULL,
  `actor_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actor`
--

LOCK TABLES `movie_actor` WRITE;
/*!40000 ALTER TABLE `movie_actor` DISABLE KEYS */;
INSERT INTO `movie_actor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,8),(7,2,1),(8,2,6),(9,2,7),(10,2,8),(11,3,9),(12,3,10),(13,3,11),(14,4,12),(15,4,13),(16,4,14),(17,5,16),(18,5,17),(19,5,18),(20,6,19),(21,6,20),(22,6,21),(23,7,22),(24,7,23),(25,7,24),(26,8,25),(27,8,26),(28,8,27),(29,9,12),(30,9,28),(31,9,29),(32,10,30),(33,10,31),(34,10,32),(35,11,33),(36,11,34),(37,11,35),(38,12,36),(39,12,37),(40,12,38),(41,13,39),(42,13,40),(43,13,41),(44,14,42),(45,14,43),(46,14,44),(47,15,45),(48,15,46),(49,16,47),(50,16,48),(51,17,49),(52,17,50),(53,17,51),(54,18,52),(55,18,53),(56,18,54);
/*!40000 ALTER TABLE `movie_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_company`
--

DROP TABLE IF EXISTS `movie_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_company` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` tinyint(4) NOT NULL,
  `company_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_company`
--

LOCK TABLES `movie_company` WRITE;
/*!40000 ALTER TABLE `movie_company` DISABLE KEYS */;
INSERT INTO `movie_company` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,5),(8,8,6),(9,9,7),(10,10,8),(11,11,8),(12,12,2),(13,13,4),(14,14,4),(15,15,9),(16,16,10),(17,17,8),(18,18,11);
/*!40000 ALTER TABLE `movie_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_director`
--

DROP TABLE IF EXISTS `movie_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_director` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` tinyint(4) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_director`
--

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;
INSERT INTO `movie_director` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,4,5),(6,4,6),(7,5,2),(8,6,7),(9,7,8),(10,8,9),(11,9,10),(12,10,11),(13,11,12),(14,12,13),(15,13,6),(16,14,14),(17,14,15),(18,15,16),(19,16,17),(20,17,18),(21,18,19);
/*!40000 ALTER TABLE `movie_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` tinyint(4) NOT NULL,
  `genre_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,3),(5,3,4),(6,3,5),(7,4,6),(8,4,7),(9,4,3),(10,5,7),(11,5,8),(12,6,2),(13,6,8),(14,7,7),(15,7,1),(16,7,9),(17,8,3),(18,8,10),(19,9,1),(20,9,2),(21,9,11),(22,10,7),(23,10,3),(24,10,12),(25,11,3),(26,11,1),(27,12,7),(28,12,3),(29,12,10),(30,13,6),(31,13,7),(32,13,10),(33,14,6),(34,14,7),(35,14,1),(36,15,7),(37,15,1),(38,15,10),(39,16,1),(40,16,4),(41,17,10),(42,17,8),(43,18,1),(44,18,13),(45,18,5);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name_us` varchar(20) DEFAULT NULL,
  `name_ca` varchar(20) DEFAULT NULL,
  `icon_us` varchar(50) DEFAULT NULL,
  `icon_ca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'G','G','g_us.png','g_ca.png'),(2,'PG','PG','pg_us.png','pg_ca.png'),(3,'PG-13','14A','pg-13.png','14a_ca.png'),(4,'R','18A','r_us.png','18a_ca.png'),(5,'NC-17','R','nc-17.png','r_ca.png'),(6,'NR',NULL,'nr_us.png',NULL);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_level` int(11) NOT NULL,
  `user_last_login` datetime DEFAULT NULL,
  `user_attempt_fail` int(11) DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Mauricio','mauricio','$2y$10$CPDwxHyThFBUshrmXoDU7Otr7RM6fGIn.XysTxUj851zEVlQ79f7i','mauricio@email.com','2018-02-12 05:00:00','::1',1,'2018-03-25 02:27:12',0),(3,'Justin','justin','$2y$10$.0gtgypzrMfWQ7e726R/ce2eU6kdCnCa10IHVyTGptpebzt80oXsS','justin@email.com','2018-02-11 05:00:00','::1',2,'2018-02-24 09:53:42',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25  3:05:12
