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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Jack','Nicholson'),(2,'Louise','Fletcher'),(3,'Michael','Berryman'),(4,'Will','Sampson'),(5,'Danny','DeVito'),(6,'Shelley','Duvall'),(7,'Danny','Lloyd'),(8,'Scatman','Crothers'),(9,'Bill','Murray'),(10,'Andie','MacDowell'),(11,'Chris','Elliott'),(12,'Rod','Taylor'),(13,'Betty Lou','Gerson'),(14,'J. Pat','O\'Malley'),(16,'Keir','Dullea'),(17,'Gary','Lockwood'),(18,'William','Sylvester'),(19,'Sigourney','Weaver'),(20,'Tom','Skerritt'),(21,'John','Hurt'),(22,'Charlton','Heston'),(23,'Jack','Hawkins'),(24,'Stephen','Boyd'),(25,'Macaulay','Culkin'),(26,'Joe','Pesci'),(27,'Daniel','Stern'),(28,'Tippi','Hedren'),(29,'Jessica','Tandy'),(30,'John','Belushi'),(31,'Dan','Aykroyd'),(32,'Cab','Calloway'),(33,'Emilio','Estevez'),(34,'Judd','Nelson'),(35,'Molly','Ringwald'),(36,'Sean','Astin'),(37,'Josh','Brolin'),(38,'Jeff','Cohen'),(39,'Phil','Harris'),(40,'Sebastian','Cabot'),(41,'Louis','Prima'),(42,'Matthew','Broderick'),(43,'Jeremy','Irons'),(44,'James Earl','Jones'),(45,'Noah','Hathaway'),(46,'Barret','Oliver'),(47,'Max','von Sydow'),(48,'Gunnar','Bjornstrand'),(49,'Henry','Thomas'),(50,'Drew','Barrymore'),(51,'Peter','Coyote'),(52,'Charles','Chaplin'),(53,'Claire','Bloom'),(54,'Nigel','Bruce'),(55,'Mel','Gibson'),(56,'Sophie','Marceau'),(57,'Patrick','McGoohan'),(58,'Charlie','Sheen'),(59,'Willem','Dafoe'),(60,'Tom','Berenger'),(61,'Marlon','Brando'),(62,'Maria','Schneider'),(63,'Martin','Sheen'),(64,'Robert','Duvall'),(65,'Laurence','Fishburne'),(66,'Harrison','Ford'),(67,'Rutger','Hauer'),(68,'Sean','Young'),(69,'Kirk','Douglas'),(70,'Laurence','Olivier'),(71,'Jean','Simmons'),(72,'Karen','Allen'),(73,'Paul','Freeman'),(74,'Clint','Eastwood'),(75,'Morgan','Freeman'),(76,'Gene','Hackman'),(77,'Jaimz','Woolvett'),(78,'Lee','Van Cleef'),(79,'Eli','Wallach'),(80,'Roberto','Benigni'),(81,'Nicoletta','Braschi'),(82,'Giorgio','Cantarini'),(83,'Gregory','Peck'),(84,'John','Megna'),(85,'Frank','Overton'),(86,'Al','Pacino'),(87,'John','Cazale'),(88,'Penelope','Allen');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Fantasy Films'),(2,'Warner Bros.'),(3,'Columbia Pictures'),(4,'Walt Disney Productions'),(5,'Metro-Goldwyn-Mayer'),(6,'Twentieth Century-Fox Productions'),(7,'Alfred J. Hitchcock Productions'),(8,'Universal Pictures'),(9,'Neue Constantin Film'),(10,'Svensk Filmindustri'),(11,'Celebrated Productions'),(12,'Icon Entertainment International'),(13,'Hemdale'),(14,'Les Productions Artistes AssociÃ©s'),(15,'Zoetrope Studios'),(16,'Bryna Productions'),(17,'Paramount Pictures'),(18,'Castle Rock Entertainment'),(19,'Produzioni Europee Associate'),(20,'Melampo Cinematografica');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Milos','Forman'),(2,'Stanley','Kubrick'),(3,'Harold','Ramis'),(4,'Clyde','Geronimi'),(5,'Hamilton','Luske'),(6,'Wolfgang','Reitherman'),(7,'Ridley','Scott'),(8,'William','Wyler'),(9,'Chris','Columbus'),(10,'Alfred','Hitchcock'),(11,'John','Landis'),(12,'John','Hughes'),(13,'Richard','Donner'),(14,'Roger','Allers'),(15,'Rob','Minkoff'),(16,'Wolfgang','Petersen'),(17,'Ingmar','Bergman'),(18,'Steven','Spielberg'),(19,'Charles','Chaplin'),(20,'Mel','Gibson'),(21,'Oliver','Stone'),(22,'Bernardo','Bertolucci'),(23,'Francis Ford','Coppola'),(24,'Clint','Eastwood'),(25,'Sergio','Leone'),(26,'Roberto','Benigni'),(27,'Robert','Mulligan'),(28,'Sidney','Lumet');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drama'),(2,'Horror'),(3,'Comedy'),(4,'Fantasy'),(5,'Romance'),(6,'Animation'),(7,'Adventure'),(8,'Sci-Fi'),(9,'History'),(10,'Family'),(11,'Mystery'),(12,'Crime'),(13,'Music'),(14,'Biography'),(15,'War'),(16,'Thriller'),(17,'Action'),(18,'Western');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'One Flew Over the Cuckoo&#039;s Nest',1975,133,'McMurphy, a man with several assault convictions to his name, finds himself in jail once again. This time, the charge is statutory rape when it turns out that his girlfriend had lied about being eighteen, and was, in fact, fifteen (or, as McMurphy puts it, &quot;fifteen going on thirty-five&quot;). Rather than spend his time in jail, he convinces the guards that he&#039;s crazy enough to need psychiatric care and is sent to a hospital. He fits in frighteningly well, and his different point of view actually begins to cause some of the patients to progress. Nurse Ratched becomes his personal cross to bear as his resistance to the hospital routine gets on her nerves.',4,'8.7','one_flew_over.jpg','one_flew_over.mp4',0),(2,'The Shining',1980,146,'Jack Torrance gets a job as the custodian of the Overlook Hotel, in the mountains of Colorado. The place is closed down during winter, Torrance and his family will be the only occupants of the hotel for a long while. When the snow storms block the Torrance family in the hotel, Jack&#039;s son Danny, who has some clairvoyance and telepathy powers, discovers that the hotel is haunted and that the spirits are slowly driving Jack crazy. When Jack meets the ghost of Mr. Grady, the former custodian of the hotel who murdered his wife and his two daughters, things begin to get really nasty.',4,'8.4','the_shining.jpg','the_shining.mp4',0),(3,'Groundhog Day',1993,101,'A weather man is reluctantly sent to cover a story about a weather forecasting &quot;rat&quot; (as he calls it). This is his fourth year on the story, and he makes no effort to hide his frustration. On awaking the &#039;following&#039; day he discovers that it&#039;s Groundhog Day again, and again, and again. First he uses this to his advantage, then comes the realisation that he is doomed to spend the rest of eternity in the same place, seeing the same people do the same thing EVERY day.',2,'8.0','groundhog_day.jpg','groundhog_day.mp4',0),(4,'101 Dalmatians',1961,79,'Roger Radciffe and his pet dalmatian, Pongo meet Anita and her pet dalmatian, Perdita and they fall in love and get married and Pongo and Perdita have puppies. Later the puppies end up in the clutches of Anita&#039;s hateful classmate, Cruella De Vil who is planning to make fur coats from their skin. Can Pongo and Perdita save their puppies? And will Cruella finally get what she deserves?',1,'7.2','101_dalmatians.jpg','101_dalmatians.mp4',1),(5,'2001: A Space Odyssey',1968,149,'&quot;2001&quot; is a story of evolution. Sometime in the distant past, someone or something nudged evolution by placing a monolith on Earth (presumably elsewhere throughout the universe as well). Evolution then enabled humankind to reach the moon&#039;s surface, where yet another monolith is found, one that signals the monolith placers that humankind has evolved that far. Now a race begins between computers (HAL) and human (Bowman) to reach the monolith placers. The winner will achieve the next step in evolution, whatever that may be.',1,'8.3','2001_a_space_odyssey.jpg','2001_a_space_odyssey.mp4',0),(6,'Alien',1979,116,'In the distant future, the crew of the commercial spaceship Nostromo are on their way home when they pick up a distress call from a distant moon. The crew are under obligation to investigate and the spaceship descends on the moon afterwards. After a rough landing, three crew members leave the spaceship to explore the area on the moon. At the same time as they discover a hive colony of some unknown creature, the ship&#039;s computer deciphers the message to be a warning, not a distress call. When one of the eggs is disturbed, the crew realizes that they are not alone on the spaceship and they must deal with the consequences.',4,'8.5','alien.jpg','alien.mp4',0),(7,'Ben-Hur',1959,212,'Judah Ben-Hur lives as a rich Jewish prince and merchant in Jerusalem at the beginning of the 1st century. Together with the new governor his old friend Messala arrives as commanding officer of the Roman legions. At first they are happy to meet after a long time but their different politic views separate them. During the welcome parade a roof tile falls down from Judah&#039;s house and injures the governor. Although Messala knows they are not guilty, he sends Judah to the galleys and throws his mother and sister into prison. But Judah swears to come back and take revenge.',1,'8.1','ben-hur.jpg','ben-hur.mp4',0),(8,'Home Alone',1990,103,'It is Christmas time and the McCallister family is preparing for a vacation in Paris, France. But the youngest in the family named Kevin got into a scuffle with his older brother Buzz and was sent to his room which is on the third floor of his house. Then, the next morning, while the rest of the family was in a rush to make it to the airport on time, they completely forgot about Kevin who now has the house all to himself. Being home alone was fun for Kevin, having a pizza all to himself, jumping on his parents&#039; bed, and making a mess. Then, Kevin discovers about two burglars, Harry and Marv, about to rob his house on Christmas Eve. Kevin acts quickly by wiring his own house with makeshift booby traps to stop the burglars and to bring them to justice.',2,'7.5','home_alone.jpg','home_alone.mp4',1),(9,'The Birds',1963,119,'Melanie Daniels is the modern rich socialite, part of the jet-set who always gets what she wants. When lawyer Mitch Brenner sees her in a pet shop, he plays something of a practical joke on her, and she decides to return the favor. She drives about an hour north of San Francisco to Bodega Bay, where Mitch spends the weekends with his mother Lydia and younger sister Cathy. Soon after her arrival, however, the birds in the area begin to act strangely. A seagull attacks Melanie as she is crossing the bay in a small boat, and then, Lydia finds her neighbor dead, obviously the victim of a bird attack. Soon, birds in the hundreds and thousands are attacking anyone they find out of doors. There is no explanation as to why this might be happening, and as the birds continue their vicious attacks, survival becomes the priority.',3,'7.7','the_birds.jpg','the_birds.mp4',0),(10,'The Blues Brothers',1980,133,'After the release of Jake Blues from prison, he and brother Elwood go to visit &quot;The Penguin&quot;, the last of the nuns who raised them in a boarding school. They learn the Archdiocese will stop supporting the school and will sell the place to the Education Authority. The only way to keep the place open is if the $5000 tax on the property is paid within 11 days. The Blues Brothers want to help, and decide to put their blues band back together and raise the money by staging a big gig. As they set off on their &quot;mission from God&quot; they seem to make more enemies along the way. Will they manage to come up with the money in time?',4,'7.9','the_blues_brothers.jpg','the_blues_brothers.mp4',0),(11,'The Breakfast Club',1985,97,'Beyond being in the same class at Shermer High School in Shermer, Illinois, Claire Standish, Andrew Clark, John Bender, Brian Johnson and Allison Reynolds have little in common, and with the exception of Claire and Andrew, do not associate with each other in school. In the simplest and in their own terms, Claire is a princess, Andrew an athlete, John a criminal, Brian a brain, and Allison a basket case. But one other thing they do have in common is a nine hour detention in the school library together on Saturday, March 24, 1984, under the direction of Mr. Vernon, supervising from his office across the hall. Each is required to write a minimum one thousand word essay during that time about who they think they are. At the beginning of those nine hours, each, if they were indeed planning on writing that essay, would probably write something close to what the world sees of them, and what they have been brainwashed into believing of themselves. But based on their adventures during that nine hours, they may come to a different opinion of themselves and the other four.',4,'7.9','the_breakfast_club.jpg','the_breakfast_club.mp4',0),(12,'The Goonies',1985,114,'Mikey Walsh and Brandon Walsh are brothers whose family is preparing to move because developers want to build a golf course in the place of their neighborhood -- unless enough money is raised to stop the construction of the golf course, and that&#039;s quite doubtful. But when Mikey stumbles upon a treasure map of the famed &quot;One-Eyed&quot; Willy&#039;s hidden fortune, Mikey, Brandon, and their friends Lawrence &quot;Chunk&quot; Cohen, Clark &quot;Mouth&quot; Devereaux, Andrea &quot;Andy&quot; Carmichael, Stefanie &quot;Stef&quot; Steinbrenner, and Richard &quot;Data&quot; Wang, calling themselves The Goonies, set out on a quest to find the treasure in hopes of saving their neighborhood. The treasure is in a cavern, but the entrance to the cavern is under the restaurant of evil thief Mama Fratelli and her sons Jake Fratelli, Francis Fratelli, and the severely disfigured Lotney &quot;Sloth&quot; Fratelli. Sloth befriends the Goonies and decides to help them.',2,'7.8','the_goonies.jpg','the_goonies.mp4',1),(13,'The Jungle Book',1967,78,'Abandoned after an accident, baby Mowgli is taken and raised by a family of wolves. As the boy grows older, the wise panther Bagheera realizes he must be returned to his own kind in the nearby man-village. Baloo the bear however thinks differently, taking the young Mowgli under his wing and teaching him that living in the jungle is the best life there is. Bagheera realizes that Mowgli is in danger, particularly from Shere Khan the tiger who hates all people. When Baloo finally comes around, Mowgli runs off into the jungle where he survives a second encounter with Kaa the snake and finally, with Shere Khan. It&#039;s the sight of a pretty girl however that gets Mowgli to go to the nearby man-village.',1,'7.6','the_jungle_book.jpg','the_jungle_book.mp4',1),(14,'The Lion King',1994,88,'After being anointed as the next king of the jungle, young lion cub Simba is every bit as eager to take his proud father Mufasa&#039;s place as the king. However, this makes Simba&#039;s villainous uncle Scar jealous of him. But when Mufasa is suddenly murdered by Scar, Simba feels responsible for his death and runs away from home. Meeting up with two outcasts named Timon and Pumbaa, Simba embraces their ways of &#039;Hakuna Matata&#039;. Years later, approached by his childhood friend Nala and the wise baboon Rafiki, Simba must return home to stop Scar&#039;s evil reign and fulfill his destiny as the new king.',1,'8.5','the_lion_king.jpg','the_lion_king.mp4',1),(15,'The NeverEnding Story',1984,102,'The boy Bastian misses his mother, who has died, and is bullied at school by three bullies. One day, he is running away from the three boys and hides in a bookstore, where the owner shows him a book that he has never read called &quot;The Neverending Story&quot;. Bastian does not resist and shoplifts the book, leaving a note telling that he will return the book after he reads it. He goes to the school attic and anxiously reads the book that tells the story of the magic kingdom of Fantasia that is doomed to destruction, unless the boy Atreyu can save it. But he needs the help of an Earthling boy to avoid that The Nothing destroys his world.',2,'7.4','the_neverending_story.jpg','the_neverending_story.mp4',1),(16,'The Seventh Seal',1957,96,'Returning home from the Crusades, Swedish knight Antonius Block and his squire JÃ¶ns find the land ravaged by the plague. Block finds that people everywhere are living in fear believing it is God&#039;s punishment and that the end has come. Block has lost his faith and is looking for answers so when Death comes for him the knight challenges him to a game of chess. The countryside is bleak and many search for answers though none seem to be found. Block makes it to his home and believes he has the upper hand - but Death will have his way.',6,'8.2','the_seventh_seal.jpg','the_seventh_seal.mp4',0),(17,'E.T. the Extra-Terrestrial',1982,115,'After a gentle alien becomes stranded on Earth, the being is discovered and befriended by a young boy named Elliott. Bringing the extraterrestrial into his suburban California house, Elliott introduces E.T., as the alien is dubbed, to his brother and his little sister, Gertie, and the children decide to keep its existence a secret. Soon, however, E.T. falls ill, resulting in government intervention and a dire situation for both Elliott and the alien.',2,'7.9','et.jpg','et.mp4',1),(18,'Limelight',1952,137,'In 1914, in London, the formerly successful and presently decadent and alcoholic clown Calvero smells gas in the building where he lives and breaks in an apartment. He finds the suicidal Thereza &#039;Terry&#039; Ambrose laying down on her bed and he brings a doctor that saves her. They do not report to the police and Calvero nurses her in his apartment. He learns that Terry was a ballet dancer that had a problem in her legs that are paralyzed. However, the doctor tells to Calvero that she has not a physical, but actually a psychological problem with her legs. He emotionally supports her and she recovers her health and becomes a successful ballerina. Meanwhile Calvero is also affected by Terry and quits drinking. Calvero tries to rebuild his career in the show business and while Terry falls in love with him but age must pass as youth enters.',1,'8.1','limelight.jpg','limelight.mp4',1),(19,'Braveheart',1995,178,'William Wallace is a Scottish rebel who leads an uprising against the cruel English ruler Edward the Longshanks, who wishes to inherit the crown of Scotland for himself. When he was a young boy, William Wallace&#039;s father and brother, along with many others, lost their lives trying to free Scotland. Once he loses another of his loved ones, William Wallace begins his long quest to make Scotland free once and for all, along with the assistance of Robert the Bruce.',4,'8.4','braveheart.jpg','',0),(20,'Platoon',1986,120,'Chris Taylor is a young, naive American who gives up college and volunteers for combat in Vietnam. Upon arrival, he quickly discovers that his presence is quite nonessential, and is considered insignificant to the other soldiers, as he has not fought for as long as the rest of them and felt the effects of combat. Chris has two non-commissioned officers, the ill-tempered and indestructible Staff Sergeant Robert Barnes and the more pleasant and cooperative Sergeant Elias Grodin. A line is drawn between the two NCOs and a number of men in the platoon when an illegal killing occurs during a village raid. As the war continues, Chris himself draws towards psychological meltdown. And as he struggles for survival, he soon realizes he is fighting two battles, the conflict with the enemy and the conflict between the men within his platoon.',4,'8.1','platoon.jpg',NULL,0),(21,'Last Tango in Paris',1972,129,'Crazed with grief after his wife commits suicide, Paul, an American expatriate, roams the streets of Paris until, while apartment hunting, he faces Jeanne, an unknown girl across an empty room. Brutally, without a word, he rapes the soon-compliant stranger. It should have been hit-and-run sex, but Paul stays at the scene of the erotic accident. While arranging his wife&#039;s funeral, Paul leases the apartment where he is to meet the puzzled girl for a series of frenzied afternoons. &quot;No names here,&quot; he roughly tells her, setting up the rules of the game. They are to shut out the world outside, forfeit their pasts and their identities. Paul degrades Jeanne in every possible way, leveling all her inhibitions into sheer brutality. Paul is soon dissatisfied with mere possession of her body; he must also have her mind. When she rejects his mad love to enter a comfortable marriage with her dull fiancÃ©, Paul finally confesses: &quot;I love you, you dummy.&quot;',5,'7.1','last_tango_in_paris.jpg',NULL,0),(22,'Apocalypse Now',1979,147,'It is the height of the war in Vietnam, and U.S. Army Captain Willard is sent by Colonel Lucas and a General to carry out a mission that, officially, &#039;does not exist - nor will it ever exist&#039;. The mission: To seek out a mysterious Green Beret Colonel, Walter Kurtz, whose army has crossed the border into Cambodia and is conducting hit-and-run missions against the Viet Cong and NVA. The army believes Kurtz has gone completely insane and Willard&#039;s job is to eliminate him! Willard, sent up the Nung River on a U.S. Navy patrol boat, discovers that his target is one of the most decorated officers in the U.S. Army. His crew meets up with surfer-type Lt-Colonel Kilgore, head of a U.S Army helicopter cavalry group which eliminates a Viet Cong outpost to provide an entry point into the Nung River. After some hair-raising encounters, in which some of his crew are killed, Willard, Lance and Chef reach Colonel Kurtz&#039;s outpost, beyond the Do Lung Bridge. Now, after becoming prisoners of Kurtz, will Willard &amp; the others be able to fulfill their mission?',4,'8.5','apocalypse_now.jpg',NULL,0),(23,'Blade Runner',1982,117,'In the futuristic year of 2019, Los Angeles has become a dark and depressing metropolis, filled with urban decay. Rick Deckard, an ex-cop, is a &quot;Blade Runner&quot;. Blade runners are people assigned to assassinate &quot;replicants&quot;. The replicants are androids that look like real human beings. When four replicants commit a bloody mutiny on the Off World colony, Deckard is called out of retirement to track down the androids. As he tracks the replicants, eliminating them one by one, he soon comes across another replicant, Rachel, who evokes human emotion, despite the fact that she&#039;s a replicant herself. As Deckard closes in on the leader of the replicant group, his true hatred toward artificial intelligence makes him question his own identity in this future world, including what&#039;s human and what&#039;s not human.',4,'8.2','blade_runner.jpg',NULL,0),(24,'Spartacus',1960,197,'In 73 BCE, a Thracian slave leads a revolt at a gladiatorial school run by Lentulus Batiatus. The uprising soon spreads across the Italian Peninsula involving thousand of slaves. The plan is to acquire sufficient funds to acquire ships from Silesian pirates who could then transport them to other lands from Brandisium in the south. The Roman Senator Gracchus schemes to have Marcus Publius Glabrus, Commander of the garrison of Rome, lead an army against the slaves who are living on Vesuvius. When Glabrus is defeated his mentor, Senator and General Marcus Licinius Crassus is greatly embarrassed and leads his own army against the slaves. Spartacus and the thousands of freed slaves successfully make their way to Brandisium only to find that the Silesians have abandoned them. They then turn north and must face the might of Rome.',3,'7.9','spartacus.jpg',NULL,0),(25,'Raiders of the Lost Ark',1981,115,'The year is 1936. Archeology professor Indiana Jones narrowly escapes death in a South American temple with a gold idol - by poison dart, fall, and finally a giant boulder that chases him out the front. An old enemy, Rene Belloq, steals the idol and then orders Hovito indians after Indy. Indy, however, escapes back to the USA, where Army Intelligence officers are waiting for him at his university. They tell him about a flurry of Nazi archaeological activity near Cairo, which Indy determines to be the possible resting place of the Ark of the Covenant - the chest that carried the 10 Commandments. The Ark is believed to carry an incredibly powerful energy that must not fall into Nazi hands. Indiana is immediately sent overseas, stopping in Nepal to pick up an old girlfriend (his old professor&#039;s daughter) and then meeting up in Cairo with his friend Sallah. But danger lurks everywhere in the form of Nazi thugs, and poisonous snakes in the Ark&#039;s resting place. After Belloq, hired by the Nazis, makes off again with the Ark, Indy &amp; Marion are determined to get it back, and they overpower the pilot of a German plane. But Indy finds himself confronted with a giant German thug, and after a frightening hand-to-hand fight Indy &amp; Marion blow up the plane. Now the Nazis must drive the Ark to Cairo, but Indy regains control of the Ark after running the convoy off the road, one vehicle at a time. Once again the Nazis recapture the Ark...and Marion, heading for a Nazi-controlled island. There, Belloq will open the Ark...to demonstrate the horrific power it can unleash upon the world!',2,'8.5','raiders_of_the_lost_ark.jpg',NULL,1),(26,'Unforgiven',1992,130,'The town of Big Whisky is full of normal people trying to lead quiet lives. Cowboys try to make a living. Sheriff &#039;Little Bill&#039; tries to build a house and keep a heavy-handed order. The town whores just try to get by.Then a couple of cowboys cut up a whore. Dissatisfied with Bill&#039;s justice, the prostitutes put a bounty on the cowboys. The bounty attracts a young gun billing himself as &#039;The Schofield Kid&#039;, and aging killer William Munny. Munny reformed for his young wife, and has been raising crops and two children in peace. But his wife is gone. Farm life is hard. And Munny is no good at it. So he calls his old partner Ned, saddles his ornery nag, and rides off to kill one more time, blurring the lines between heroism and villainy, man and myth.',4,'8.2','unforgiven.jpg',NULL,0),(27,'The Good, the Bad and the Ugly',1966,178,'Blondie (The Good) is a professional gunslinger who is out trying to earn a few dollars. Angel Eyes (The Bad) is a hit man who always commits to a task and sees it through, as long as he is paid to do so. And Tuco (The Ugly) is a wanted outlaw trying to take care of his own hide. Tuco and Blondie share a partnership together making money off Tuco&#039;s bounty, but when Blondie unties the partnership, Tuco tries to hunt down Blondie. When Blondie and Tuco come across a horse carriage loaded with dead bodies, they soon learn from the only survivor (Bill Carson) that he and a few other men have buried a stash of gold in a cemetery. Unfortunately Carson dies and Tuco only finds out the name of the cemetery, while Blondie finds out the name on the grave. Now the two must keep each other alive in order to find the gold. Angel Eyes (who had been looking for Bill Carson) discovers that Tuco and Blondie met with Carson and knows they know the location of the gold. All he needs is for the two to lead him to it. Now The Good, The Bad and The Ugly must all battle it out to get their hands on $200,000 worth of gold.',4,'8.9','the_good_the_bad_and_the_ugly.jpg',NULL,0),(28,'Life is Beautiful',1997,116,'In 1939, Jewish-Italian Guido Orefice comes into Arezzo, Italy, ultimately to open a book store. In the meantime, he will work as a waiter at the hotel restaurant where his Uncle Eliseo is the maÃ®tre d&#039;. In town, he meets a school teacher named Dora, who he calls Princess and who comes from a wealthy Italian family. For him, it&#039;s love at first sight. Despite she already being in a relationship with another man, Guido ultimately sweeps her off her feet. They get married and have a son they name GiosuÃ©. On GiosuÃ©&#039;s fifth birthday, World War II is in full force. Since they are Jewish, the Germans take away Guido, Eliseo and GiosuÃ© to a labor camp. Wanting to be with her family, Dora insists she be taken too, but she is housed in the women&#039;s side of the camp. To protect GiosuÃ© from the horror of what is happening to them, Guido tells him that they are playing a game, certain actions which garner points, other actions which take points away or disqualify one from the game. The first to reach 1,000 points wins the prize of a real tank. Guido&#039;s primary goal is to keep GiosuÃ© safe at all cost, while he tries to figure out a way to get his family out of the camp and keep the Germans at bay from learning what he is doing with GiosuÃ©.',3,'8.6','life_is_beautiful.jpg',NULL,1),(29,'To Kill a Mockingbird',1962,129,'Based on Harper Lee&#039;s Pulitzer Prize winning book of 1961. Atticus Finch is a lawyer in the fictional town of Maycomb, a racially divided Alabama town, set in the early 1930s, and modeled after Monroeville where Harper Lee grew up. Finch agrees to defend a young black man who is accused of raping a white woman. Many of the townspeople try to get Atticus to pull out of the trial, but he decides to go ahead. How will the trial turn out - and will it effect any changes in racial attitudes in Maycomb?',6,'8.3','to_kill_a_mocking_bird.jpg',NULL,0),(30,'Dog Day Afternoon',1975,125,'Based upon a real-life story that happened in the early seventies in which the Chase Manhattan Bank in Gravesend, Brooklyn, was held siege by a bank robber determined to steal enough money for his male lover to undergo a sex change operation. On a hot summer afternoon, the First Savings Bank of Brooklyn is held up by Sonny and Sal, two down-and-out characters. Although the bank manager and female tellers agree not to interfere with the robbery, Sonny finds that there&#039;s actually nothing much to steal, as most of the cash has been picked up for the day. Sonny then gets an unexpected phone call from Police Captain Moretti, who tells him the place is surrounded by the city&#039;s entire police force. Having few options under the circumstances, Sonny nervously bargains with Moretti, demanding safe escort to the airport and a plane out of the country in return for the bank employees&#039; safety.',4,'8','dog_day_afternoon.jpg',NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actor`
--

LOCK TABLES `movie_actor` WRITE;
/*!40000 ALTER TABLE `movie_actor` DISABLE KEYS */;
INSERT INTO `movie_actor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,8),(7,2,1),(8,2,6),(9,2,7),(10,2,8),(11,3,9),(12,3,10),(13,3,11),(14,4,12),(15,4,13),(16,4,14),(17,5,16),(18,5,17),(19,5,18),(20,6,19),(21,6,20),(22,6,21),(23,7,22),(24,7,23),(25,7,24),(26,8,25),(27,8,26),(28,8,27),(29,9,12),(30,9,28),(31,9,29),(32,10,30),(33,10,31),(34,10,32),(35,11,33),(36,11,34),(37,11,35),(38,12,36),(39,12,37),(40,12,38),(41,13,39),(42,13,40),(43,13,41),(44,14,42),(45,14,43),(46,14,44),(47,15,45),(48,15,46),(49,16,47),(50,16,48),(51,17,49),(52,17,50),(53,17,51),(54,18,52),(55,18,53),(56,18,54),(57,19,55),(58,19,56),(59,19,57),(60,20,58),(61,20,59),(62,20,60),(63,21,61),(64,21,62),(65,22,63),(66,22,61),(67,22,64),(68,22,65),(69,22,66),(70,23,66),(71,23,67),(72,23,68),(73,24,69),(74,24,70),(75,24,71),(76,25,66),(77,25,72),(78,25,73),(79,26,74),(80,26,75),(81,26,76),(82,26,77),(83,27,74),(84,27,78),(85,27,79),(86,28,80),(87,28,81),(88,28,82),(89,29,83),(90,29,84),(91,29,85),(92,29,64),(93,30,86),(94,30,87),(95,30,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_company`
--

LOCK TABLES `movie_company` WRITE;
/*!40000 ALTER TABLE `movie_company` DISABLE KEYS */;
INSERT INTO `movie_company` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,5),(8,8,6),(9,9,7),(10,10,8),(11,11,8),(12,12,2),(13,13,4),(14,14,4),(15,15,9),(16,16,10),(17,17,8),(18,18,11),(19,19,12),(20,20,13),(21,21,14),(22,22,15),(23,23,2),(24,24,16),(25,25,17),(26,26,2),(27,27,19),(28,28,20),(29,29,8),(30,30,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_director`
--

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;
INSERT INTO `movie_director` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,4,5),(6,4,6),(7,5,2),(8,6,7),(9,7,8),(10,8,9),(11,9,10),(12,10,11),(13,11,12),(14,12,13),(15,13,6),(16,14,14),(17,14,15),(18,15,16),(19,16,17),(20,17,18),(21,18,19),(23,19,20),(24,20,21),(25,21,22),(26,22,23),(27,23,7),(28,24,2),(29,25,18),(30,26,24),(31,27,25),(32,28,26),(33,29,27),(34,30,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,3),(5,3,4),(6,3,5),(7,4,6),(8,4,7),(9,4,3),(10,5,7),(11,5,8),(12,6,2),(13,6,8),(14,7,7),(15,7,1),(16,7,9),(17,8,3),(18,8,10),(19,9,1),(20,9,2),(21,9,11),(22,10,7),(23,10,3),(24,10,12),(25,11,3),(26,11,1),(27,12,7),(28,12,3),(29,12,10),(30,13,6),(31,13,7),(32,13,10),(33,14,6),(34,14,7),(35,14,1),(36,15,7),(37,15,1),(38,15,10),(39,16,1),(40,16,4),(41,17,10),(42,17,8),(43,18,1),(44,18,13),(45,18,5),(48,19,1),(49,19,9),(50,19,14),(51,20,1),(52,20,15),(53,21,1),(54,21,5),(55,22,1),(56,22,15),(57,23,8),(58,23,16),(59,24,7),(60,24,14),(61,24,1),(62,25,17),(63,25,7),(64,26,1),(65,26,18),(66,27,18),(67,28,3),(68,28,1),(69,28,15),(70,29,12),(71,29,1),(72,30,14),(73,30,12),(74,30,1);
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
INSERT INTO `rating` VALUES (1,'G','G','g_us.png','g_ca.png'),(2,'PG','PG','pg_us.png','pg_ca.png'),(3,'PG-13','14A','pg-13_us.png','14a_ca.png'),(4,'R','18A','r_us.png','18a_ca.png'),(5,'NC-17','R','nc-17_us.png','r_ca.png'),(6,'NR',NULL,'nr_us.png',NULL);
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
INSERT INTO `user` VALUES (1,'Mauricio','mauricio','$2y$10$CPDwxHyThFBUshrmXoDU7Otr7RM6fGIn.XysTxUj851zEVlQ79f7i','mauricio@email.com','2018-02-12 05:00:00','::1',1,'2018-03-25 12:52:35',0),(3,'Justin','justin','$2y$10$.0gtgypzrMfWQ7e726R/ce2eU6kdCnCa10IHVyTGptpebzt80oXsS','justin@email.com','2018-02-11 05:00:00','::1',2,'2018-02-24 09:53:42',0);
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

-- Dump completed on 2018-03-26  0:53:30
