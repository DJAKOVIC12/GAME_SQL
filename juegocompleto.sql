CREATE DATABASE  IF NOT EXISTS `game` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `game`;
-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: game
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `id` int NOT NULL AUTO_INCREMENT,
  `col1` varchar(45) DEFAULT NULL,
  `col2` varchar(45) DEFAULT NULL,
  `col3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'_','_','X'),(2,'_','_','O'),(3,'_','_','_');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'game'
--
/*!50003 DROP FUNCTION IF EXISTS `getWinner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getWinner`() RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE val1 VARCHAR(1);
    DECLARE val2 VARCHAR(1);
    DECLARE val3 VARCHAR(1);
    DECLARE val4 VARCHAR(1);
    DECLARE val5 VARCHAR(1);
    DECLARE val6 VARCHAR(1);
    DECLARE val7 VARCHAR(1);
    DECLARE val8 VARCHAR(1);
    DECLARE val9 VARCHAR(1);
    
    SELECT col1 INTO val1 FROM game 
    WHERE id = 1;
    SELECT col2 INTO val2 FROM game 
    WHERE id = 1;
    SELECT col3 INTO val3 FROM game 
    WHERE id = 1;
    
    SELECT col1 INTO val4 FROM game 
    WHERE id = 2;
    SELECT col2 INTO val5 FROM game 
    WHERE id = 2;
    SELECT col3 INTO val6 FROM game 
    WHERE id = 2;
    
    SELECT col1 INTO val7 FROM game 
    WHERE id = 3;
    SELECT col2 INTO val8 FROM game 
    WHERE id = 3;
    SELECT col3 INTO val9 FROM game 
    WHERE id = 3;
    
    IF val1 = 'X' AND val2 = 'X' AND val3 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val4 = 'X' AND val5 = 'X' AND val6 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val7 = 'X' AND val8 = 'X' AND val9 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val1 = 'X' AND val4 = 'X' AND val7 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val2 = 'X' AND val5 = 'X' AND val8 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val3 = 'X' AND val6 = 'X' AND val9 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val1 = 'X' AND val5 = 'X' AND val9 = 'X' THEN 
		RETURN 1;
	END IF;
    IF val3 = 'X' AND val5 = 'X' AND val7 = 'X' THEN 
		RETURN 1;
	END IF;
    
    
    IF val1 = 'O' AND val2 = 'O' AND val3 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val4 = 'O' AND val5 = 'O' AND val6 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val7 = 'O' AND val8 = 'O' AND val9 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val1 = 'O' AND val4 = 'O' AND val7 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val2 = 'O' AND val5 = 'O' AND val8 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val3 = 'O' AND val6 = 'O' AND val9 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val1 = 'O' AND val5 = 'O' AND val9 = 'O' THEN 
		RETURN 2;
	END IF;
    IF val3 = 'O' AND val5 = 'O' AND val7 = 'O' THEN 
		RETURN 2;
	END IF;
    
    
RETURN 0 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isEndGame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isEndGame`() RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	DECLARE endGame BOOL;
    DECLARE cells INT;
    SET endGame = FALSE;
    
    SELECT COUNT(*) INTO cells FROM game
    WHERE id IN(1,2,3) AND col1<>'_' AND col2<>'_' AND col3<>'_';
    
    IF cells = 3 THEN
		SET endGame = TRUE;
	END IF;
    
RETURN endGame;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `game` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `game`(pos int)
BEGIN
	DECLARE winner INT; 
    SET winner = getWinner();
    
    IF winner <> 0 THEN
		SELECT CONCAT('El ganador es el jugador',winner) AS 'Ganador';
	
    ELSEIF isEndGame() = FALSE THEN
		CASE pos 
			WHEN 1 THEN UPDATE game SET col1 = 'X' WHERE id = 1;
            WHEN 2 THEN UPDATE game SET col2 = 'X' WHERE id = 1;
            WHEN 3 THEN UPDATE game SET col3 = 'X' WHERE id = 1;
            WHEN 4 THEN UPDATE game SET col1 = 'X' WHERE id = 2;
            WHEN 5 THEN UPDATE game SET col2 = 'X' WHERE id = 2;
            WHEN 6 THEN UPDATE game SET col3 = 'X' WHERE id = 2;
            WHEN 7 THEN UPDATE game SET col1 = 'X' WHERE id = 3;
            WHEN 8 THEN UPDATE game SET col2 = 'X' WHERE id = 3;
            WHEN 9 THEN UPDATE game SET col3 = 'X' WHERE id = 3;
            ELSE BEGIN END;
		END CASE;
        
        IF isEndGame() THEN
			SELECT 'FIN DEL JUEGO';
		ELSE 
			CALL playEnemy();
		END IF;
    
    ELSE 
		SELECT 'FIN DEL JUEGO';
    END IF;
    
    SET winner = getWinner();
    
    IF winner <> 0 THEN
		SELECT 'El ganador es el jugador',+winner;
	END IF;
    
    SELECT * FROM game;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_game` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_game`()
BEGIN
	
    UPDATE game SET col1 ='_',col2 ='_',col3 ='_';
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `playEnemy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `playEnemy`()
    DETERMINISTIC
BEGIN
	DECLARE pos INT;
    DECLARE retry BOOLEAN;
    DECLARE val VARCHAR(1);
    
    SET retry = TRUE;
    
    WHILE retry DO
		SET pos = FLOOR(1 + (RAND() * 9));
        
        CASE pos 
			WHEN 1 THEN SELECT col1 INTO val FROM game WHERE id = 1;
            WHEN 2 THEN SELECT col2 INTO val FROM game WHERE id = 1;
            WHEN 3 THEN SELECT col3 INTO val FROM game WHERE id = 1;
            WHEN 4 THEN SELECT col1 INTO val FROM game WHERE id = 2;
            WHEN 5 THEN SELECT col2 INTO val FROM game WHERE id = 2;
            WHEN 6 THEN SELECT col3 INTO val FROM game WHERE id = 2;
            WHEN 7 THEN SELECT col1 INTO val FROM game WHERE id = 3;
            WHEN 8 THEN SELECT col2 INTO val FROM game WHERE id = 3;
            WHEN 9 THEN SELECT col3 INTO val FROM game WHERE id = 3;
            ELSE BEGIN END;
        END CASE;
        
        IF val = '_' THEN
			SET retry = FALSE;
        END IF;
	END WHILE;
    
    CASE pos 
		WHEN 1 THEN UPDATE game SET col1 = 'O' WHERE id = 1;
        WHEN 2 THEN UPDATE game SET col2 = 'O' WHERE id = 1;
        WHEN 3 THEN UPDATE game SET col3 = 'O' WHERE id = 1;
        WHEN 4 THEN UPDATE game SET col1 = 'O' WHERE id = 2;
        WHEN 5 THEN UPDATE game SET col2 = 'O' WHERE id = 2;
        WHEN 6 THEN UPDATE game SET col3 = 'O' WHERE id = 2;
        WHEN 7 THEN UPDATE game SET col1 = 'O' WHERE id = 3;
        WHEN 8 THEN UPDATE game SET col2 = 'O' WHERE id = 3;
        WHEN 9 THEN UPDATE game SET col3 = 'O' WHERE id = 3;
        
	END CASE;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 11:10:52
