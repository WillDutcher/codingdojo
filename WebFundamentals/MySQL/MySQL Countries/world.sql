CREATE DATABASE IF NOT EXISTS `world`
/*!40100 DEFAULT CHARACTER SET latin1 */;
USE `world`;
- - MySQL dump 10.13 Distrib 5.5.24,
for osx10.5 (i386) - - - - Host: localhost Database: world_2 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Server version 5.5.25 - log
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
- - - - Table structure for table `cities` - - DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(35) NOT NULL DEFAULT '',
  `country_code` char(3) NOT NULL DEFAULT '',
  `district` char(20) NOT NULL DEFAULT '',
  `population` int(11) NOT NULL DEFAULT '0',
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cities_countries1_idx` (`country_id`),
  CONSTRAINT `fk_cities_countries1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 4080 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
- - - - Dumping data for table `cities` - - LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO
  `cities`
VALUES
  (1, 'Kabul', 'AFG', 'Kabol', 1780000, 2),(2, 'Qandahar', 'AFG', 'Qandahar', 237500, 2),(3, 'Herat', 'AFG', 'Herat', 186800, 2),(4, 'Mazar-e-Sharif', 'AFG', 'Balkh', 127800, 2),(5, 'Amsterdam', 'NLD', 'Noord-Holland', 731200, 159),(6, 'Rotterdam', 'NLD', 'Zuid-Holland', 593321, 159),(7, 'Haag', 'NLD', 'Zuid-Holland', 440900, 159),(8, 'Utrecht', 'NLD', 'Utrecht', 234323, 159),(9, 'Eindhoven', 'NLD', 'Noord-Brabant', 201843, 159),(10, 'Tilburg', 'NLD', 'Noord-Brabant', 193238, 159),(11, 'Groningen', 'NLD', 'Groningen', 172701, 159),(12, 'Breda', 'NLD', 'Noord-Brabant', 160398, 159),(13, 'Apeldoorn', 'NLD', 'Gelderland', 153491, 159),(14, 'Nijmegen', 'NLD', 'Gelderland', 152463, 159),(15, 'Enschede', 'NLD', 'Overijssel', 149544, 159),(16, 'Haarlem', 'NLD', 'Noord-Holland', 148772, 159),(17, 'Almere', 'NLD', 'Flevoland', 142465, 159),(18, 'Arnhem', 'NLD', 'Gelderland', 138020, 159),(19, 'Zaanstad', 'NLD', 'Noord-Holland', 135621, 159),(
    20,
    'Â´s-Hertogenbosch',
    'NLD',
    'Noord-Brabant',
    129170,
    159
  ),(21, 'Amersfoort', 'NLD', 'Utrecht', 126270, 159),(22, 'Maastricht', 'NLD', 'Limburg', 122087, 159),(23, 'Dordrecht', 'NLD', 'Zuid-Holland', 119811, 159),(24, 'Leiden', 'NLD', 'Zuid-Holland', 117196, 159),(
    25,
    'Haarlemmermeer',
    'NLD',
    'Noord-Holland',
    110722,
    159
  ),(26, 'Zoetermeer', 'NLD', 'Zuid-Holland', 110214, 159),(27, 'Emmen', 'NLD', 'Drenthe', 105853, 159),(28, 'Zwolle', 'NLD', 'Overijssel', 105819, 159),(29, 'Ede', 'NLD', 'Gelderland', 101574, 159),(30, 'Delft', 'NLD', 'Zuid-Holland', 95268, 159),(31, 'Heerlen', 'NLD', 'Limburg', 95052, 159),(32, 'Alkmaar', 'NLD', 'Noord-Holland', 92713, 159),(33, 'Willemstad', 'ANT', 'CuraÃ§ao', 2345, 7),(34, 'Tirana', 'ALB', 'Tirana', 270000, 5),(35, 'Alger', 'DZA', 'Alger', 2168000, 62),(36, 'Oran', 'DZA', 'Oran', 609823, 62),(37, 'Constantine', 'DZA', 'Constantine', 443727, 62),(38, 'Annaba', 'DZA', 'Annaba', 222518, 62),(39, 'Batna', 'DZA', 'Batna', 183377, 62),(40, 'SÃ©tif', 'DZA', 'SÃ©tif', 179055, 62),(
    41,
    'Sidi Bel AbbÃ¨s',
    'DZA',
    'Sidi Bel AbbÃ¨s',
    153106,
    62
  ),(42, 'Skikda', 'DZA', 'Skikda', 128747, 62),(43, 'Biskra', 'DZA', 'Biskra', 128281, 62),(44, 'Blida (el-Boulaida)', 'DZA', 'Blida', 127284, 62),(45, 'BÃ©jaÃ¯a', 'DZA', 'BÃ©jaÃ¯a', 117162, 62),(46, 'Mostaganem', 'DZA', 'Mostaganem', 115212, 62),(47, 'TÃ©bessa', 'DZA', 'TÃ©bessa', 112007, 62),(
    48,
    'Tlemcen (Tilimsen)',
    'DZA',
    'Tlemcen',
    110242,
    62
  ),(49, 'BÃ©char', 'DZA', 'BÃ©char', 107311, 62),(50, 'Tiaret', 'DZA', 'Tiaret', 100118, 62),(
    51,
    'Ech-Chleff (el-Asnam)',
    'DZA',
    'Chlef',
    96794,
    62
  ),(52, 'GhardaÃ¯a', 'DZA', 'GhardaÃ¯a', 89415, 62),(53, 'Tafuna', 'ASM', 'Tutuila', 5200, 11),(54, 'Fagatogo', 'ASM', 'Tutuila', 2323, 11),(
    55,
    'Andorra la Vella',
    'AND',
    'Andorra la Vella',
    21189,
    6
  ),(56, 'Luanda', 'AGO', 'Luanda', 2022000, 3),(57, 'Huambo', 'AGO', 'Huambo', 163100, 3),(58, 'Lobito', 'AGO', 'Benguela', 130000, 3),(59, 'Benguela', 'AGO', 'Benguela', 128300, 3),(60, 'Namibe', 'AGO', 'Namibe', 118200, 3),(61, 'South Hill', 'AIA', 'Â–', 961, 4),(62, 'The Valley', 'AIA', 'Â–', 595, 4),(63, 'Saint JohnÂ´s', 'ATG', 'St John', 24000, 14),(64, 'Dubai', 'ARE', 'Dubai', 669181, 8),(65, 'Abu Dhabi', 'ARE', 'Abu Dhabi', 398695, 8),(66, 'Sharja', 'ARE', 'Sharja', 320095, 8),(67, 'al-Ayn', 'ARE', 'Abu Dhabi', 225970, 8),(68, 'Ajman', 'ARE', 'Ajman', 114395, 8),(
    69,
    'Buenos Aires',
    'ARG',
    'Distrito Federal',
    2982146,
    9
  ),(70, 'La Matanza', 'ARG', 'Buenos Aires', 1266461, 9),(71, 'CÃ³rdoba', 'ARG', 'CÃ³rdoba', 1157507, 9),(72, 'Rosario', 'ARG', 'Santa FÃ©', 907718, 9),(
    73,
    'Lomas de Zamora',
    'ARG',
    'Buenos Aires',
    622013,
    9
  ),(74, 'Quilmes', 'ARG', 'Buenos Aires', 559249, 9),(
    75,
    'Almirante Brown',
    'ARG',
    'Buenos Aires',
    538918,
    9
  ),(76, 'La Plata', 'ARG', 'Buenos Aires', 521936, 9),(77, 'Mar del Plata', 'ARG', 'Buenos Aires', 512880, 9),(
    78,
    'San Miguel de TucumÃ¡n',
    'ARG',
    'TucumÃ¡n',
    470809,
    9
  ),(79, 'LanÃºs', 'ARG', 'Buenos Aires', 469735, 9),(80, 'Merlo', 'ARG', 'Buenos Aires', 463846, 9),(
    81,
    'General San MartÃ­n',
    'ARG',
    'Buenos Aires',
    422542,
    9
  ),(82, 'Salta', 'ARG', 'Salta', 367550, 9),(83, 'Moreno', 'ARG', 'Buenos Aires', 356993, 9),(84, 'Santa FÃ©', 'ARG', 'Santa FÃ©', 353063, 9),(85, 'Avellaneda', 'ARG', 'Buenos Aires', 353046, 9),(
    86,
    'Tres de Febrero',
    'ARG',
    'Buenos Aires',
    352311,
    9
  ),(87, 'MorÃ³n', 'ARG', 'Buenos Aires', 349246, 9),(
    88,
    'Florencio Varela',
    'ARG',
    'Buenos Aires',
    315432,
    9
  ),(89, 'San Isidro', 'ARG', 'Buenos Aires', 306341, 9),(90, 'Tigre', 'ARG', 'Buenos Aires', 296226, 9),(
    91,
    'Malvinas Argentinas',
    'ARG',
    'Buenos Aires',
    290335,
    9
  ),(
    92,
    'Vicente LÃ³pez',
    'ARG',
    'Buenos Aires',
    288341,
    9
  ),(93, 'Berazategui', 'ARG', 'Buenos Aires', 276916, 9),(94, 'Corrientes', 'ARG', 'Corrientes', 258103, 9),(95, 'San Miguel', 'ARG', 'Buenos Aires', 248700, 9),(96, 'BahÃ­a Blanca', 'ARG', 'Buenos Aires', 239810, 9),(
    97,
    'Esteban EcheverrÃ­a',
    'ARG',
    'Buenos Aires',
    235760,
    9
  ),(98, 'Resistencia', 'ARG', 'Chaco', 229212, 9),(99, 'JosÃ© C. Paz', 'ARG', 'Buenos Aires', 221754, 9),(100, 'ParanÃ¡', 'ARG', 'Entre Rios', 207041, 9),(101, 'Godoy Cruz', 'ARG', 'Mendoza', 206998, 9),(102, 'Posadas', 'ARG', 'Misiones', 201273, 9),(103, 'GuaymallÃ©n', 'ARG', 'Mendoza', 200595, 9),(
    104,
    'Santiago del Estero',
    'ARG',
    'Santiago del Estero',
    189947,
    9
  ),(
    105,
    'San Salvador de Jujuy',
    'ARG',
    'Jujuy',
    178748,
    9
  ),(106, 'Hurlingham', 'ARG', 'Buenos Aires', 170028, 9),(107, 'NeuquÃ©n', 'ARG', 'NeuquÃ©n', 167296, 9),(108, 'ItuzaingÃ³', 'ARG', 'Buenos Aires', 158197, 9),(109, 'San Fernando', 'ARG', 'Buenos Aires', 153036, 9),(110, 'Formosa', 'ARG', 'Formosa', 147636, 9),(111, 'Las Heras', 'ARG', 'Mendoza', 145823, 9),(112, 'La Rioja', 'ARG', 'La Rioja', 138117, 9),(
    113,
    'San Fernando del Valle de Cata',
    'ARG',
    'Catamarca',
    134935,
    9
  ),(114, 'RÃ­o Cuarto', 'ARG', 'CÃ³rdoba', 134355, 9),(115, 'Comodoro Rivadavia', 'ARG', 'Chubut', 124104, 9),(116, 'Mendoza', 'ARG', 'Mendoza', 123027, 9),(
    117,
    'San NicolÃ¡s de los Arroyos',
    'ARG',
    'Buenos Aires',
    119302,
    9
  ),(118, 'San Juan', 'ARG', 'San Juan', 119152, 9),(119, 'Escobar', 'ARG', 'Buenos Aires', 116675, 9),(120, 'Concordia', 'ARG', 'Entre Rios', 116485, 9),(121, 'Pilar', 'ARG', 'Buenos Aires', 113428, 9),(122, 'San Luis', 'ARG', 'San Luis', 110136, 9),(123, 'Ezeiza', 'ARG', 'Buenos Aires', 99578, 9),(124, 'San Rafael', 'ARG', 'Mendoza', 94651, 9),(125, 'Tandil', 'ARG', 'Buenos Aires', 91101, 9),(126, 'Yerevan', 'ARM', 'Yerevan', 1248700, 10),(127, 'Gjumri', 'ARM', 'ÂŠirak', 211700, 10),(128, 'Vanadzor', 'ARM', 'Lori', 172700, 10),(129, 'Oranjestad', 'ABW', 'Â–', 29034, 1),(130, 'Sydney', 'AUS', 'New South Wales', 3276207, 15),(131, 'Melbourne', 'AUS', 'Victoria', 2865329, 15),(132, 'Brisbane', 'AUS', 'Queensland', 1291117, 15),(133, 'Perth', 'AUS', 'West Australia', 1096829, 15),(134, 'Adelaide', 'AUS', 'South Australia', 978100, 15),(135, 'Canberra', 'AUS', 'Capital Region', 322723, 15),(136, 'Gold Coast', 'AUS', 'Queensland', 311932, 15),(
    137,
    'Newcastle',
    'AUS',
    'New South Wales',
    270324,
    15
  ),(
    138,
    'Central Coast',
    'AUS',
    'New South Wales',
    227657,
    15
  ),(
    139,
    'Wollongong',
    'AUS',
    'New South Wales',
    219761,
    15
  ),(140, 'Hobart', 'AUS', 'Tasmania', 126118, 15),(141, 'Geelong', 'AUS', 'Victoria', 125382, 15),(142, 'Townsville', 'AUS', 'Queensland', 109914, 15),(143, 'Cairns', 'AUS', 'Queensland', 92273, 15),(144, 'Baku', 'AZE', 'Baki', 1787800, 17),(145, 'GÃ¤ncÃ¤', 'AZE', 'GÃ¤ncÃ¤', 299300, 17),(146, 'Sumqayit', 'AZE', 'Sumqayit', 283000, 17),(147, 'MingÃ¤Ã§evir', 'AZE', 'MingÃ¤Ã§evir', 93900, 17),(148, 'Nassau', 'BHS', 'New Providence', 172000, 25),(149, 'al-Manama', 'BHR', 'al-Manama', 148000, 24),(150, 'Dhaka', 'BGD', 'Dhaka', 3612850, 22),(151, 'Chittagong', 'BGD', 'Chittagong', 1392860, 22),(152, 'Khulna', 'BGD', 'Khulna', 663340, 22),(153, 'Rajshahi', 'BGD', 'Rajshahi', 294056, 22),(154, 'Narayanganj', 'BGD', 'Dhaka', 202134, 22),(155, 'Rangpur', 'BGD', 'Rajshahi', 191398, 22),(156, 'Mymensingh', 'BGD', 'Dhaka', 188713, 22),(157, 'Barisal', 'BGD', 'Barisal', 170232, 22),(158, 'Tungi', 'BGD', 'Dhaka', 168702, 22),(159, 'Jessore', 'BGD', 'Khulna', 139710, 22),(160, 'Comilla', 'BGD', 'Chittagong', 135313, 22),(161, 'Nawabganj', 'BGD', 'Rajshahi', 130577, 22),(162, 'Dinajpur', 'BGD', 'Rajshahi', 127815, 22),(163, 'Bogra', 'BGD', 'Rajshahi', 120170, 22),(164, 'Sylhet', 'BGD', 'Sylhet', 117396, 22),(165, 'Brahmanbaria', 'BGD', 'Chittagong', 109032, 22),(166, 'Tangail', 'BGD', 'Dhaka', 106004, 22),(167, 'Jamalpur', 'BGD', 'Dhaka', 103556, 22),(168, 'Pabna', 'BGD', 'Rajshahi', 103277, 22),(169, 'Naogaon', 'BGD', 'Rajshahi', 101266, 22),(170, 'Sirajganj', 'BGD', 'Rajshahi', 99669, 22),(171, 'Narsinghdi', 'BGD', 'Dhaka', 98342, 22),(172, 'Saidpur', 'BGD', 'Rajshahi', 96777, 22),(173, 'Gazipur', 'BGD', 'Dhaka', 96717, 22),(174, 'Bridgetown', 'BRB', 'St Michael', 6070, 32),(175, 'Antwerpen', 'BEL', 'Antwerpen', 446525, 19),(176, 'Gent', 'BEL', 'East Flanderi', 224180, 19),(177, 'Charleroi', 'BEL', 'Hainaut', 200827, 19),(178, 'LiÃ¨ge', 'BEL', 'LiÃ¨ge', 185639, 19),(
    179,
    'Bruxelles [Brussel]',
    'BEL',
    'Bryssel',
    133859,
    19
  ),(180, 'Brugge', 'BEL', 'West Flanderi', 116246, 19),(181, 'Schaerbeek', 'BEL', 'Bryssel', 105692, 19),(182, 'Namur', 'BEL', 'Namur', 105419, 19),(183, 'Mons', 'BEL', 'Hainaut', 90935, 19),(184, 'Belize City', 'BLZ', 'Belize City', 55810, 28),(185, 'Belmopan', 'BLZ', 'Cayo', 7105, 28),(186, 'Cotonou', 'BEN', 'Atlantique', 536827, 20),(187, 'Porto-Novo', 'BEN', 'OuÃ©mÃ©', 194000, 20),(188, 'Djougou', 'BEN', 'Atacora', 134099, 20),(189, 'Parakou', 'BEN', 'Borgou', 103577, 20),(
    190,
    'Saint George',
    'BMU',
    'Saint GeorgeÂ´s',
    1800,
    29
  ),(191, 'Hamilton', 'BMU', 'Hamilton', 1200, 29),(192, 'Thimphu', 'BTN', 'Thimphu', 22000, 34),(
    193,
    'Santa Cruz de la Sierra',
    'BOL',
    'Santa Cruz',
    935361,
    30
  ),(194, 'La Paz', 'BOL', 'La Paz', 758141, 30),(195, 'El Alto', 'BOL', 'La Paz', 534466, 30),(196, 'Cochabamba', 'BOL', 'Cochabamba', 482800, 30),(197, 'Oruro', 'BOL', 'Oruro', 223553, 30),(198, 'Sucre', 'BOL', 'Chuquisaca', 178426, 30),(199, 'PotosÃ­', 'BOL', 'PotosÃ­', 140642, 30),(200, 'Tarija', 'BOL', 'Tarija', 125255, 30),(201, 'Sarajevo', 'BIH', 'Federaatio', 360000, 26),(
    202,
    'Banja Luka',
    'BIH',
    'Republika Srpska',
    143079,
    26
  ),(203, 'Zenica', 'BIH', 'Federaatio', 96027, 26),(204, 'Gaborone', 'BWA', 'Gaborone', 213017, 36),(205, 'Francistown', 'BWA', 'Francistown', 101805, 36),(206, 'SÃ£o Paulo', 'BRA', 'SÃ£o Paulo', 9968485, 31),(
    207,
    'Rio de Janeiro',
    'BRA',
    'Rio de Janeiro',
    5598953,
    31
  ),(208, 'Salvador', 'BRA', 'Bahia', 2302832, 31),(
    209,
    'Belo Horizonte',
    'BRA',
    'Minas Gerais',
    2139125,
    31
  ),(210, 'Fortaleza', 'BRA', 'CearÃ¡', 2097757, 31),(
    211,
    'BrasÃ­lia',
    'BRA',
    'Distrito Federal',
    1969868,
    31
  ),(212, 'Curitiba', 'BRA', 'ParanÃ¡', 1584232, 31),(213, 'Recife', 'BRA', 'Pernambuco', 1378087, 31),(
    214,
    'Porto Alegre',
    'BRA',
    'Rio Grande do Sul',
    1314032,
    31
  ),(215, 'Manaus', 'BRA', 'Amazonas', 1255049, 31),(216, 'BelÃ©m', 'BRA', 'ParÃ¡', 1186926, 31),(217, 'Guarulhos', 'BRA', 'SÃ£o Paulo', 1095874, 31),(218, 'GoiÃ¢nia', 'BRA', 'GoiÃ¡s', 1056330, 31),(219, 'Campinas', 'BRA', 'SÃ£o Paulo', 950043, 31),(
    220,
    'SÃ£o GonÃ§alo',
    'BRA',
    'Rio de Janeiro',
    869254,
    31
  ),(
    221,
    'Nova IguaÃ§u',
    'BRA',
    'Rio de Janeiro',
    862225,
    31
  ),(222, 'SÃ£o LuÃ­s', 'BRA', 'MaranhÃ£o', 837588, 31),(223, 'MaceiÃ³', 'BRA', 'Alagoas', 786288, 31),(
    224,
    'Duque de Caxias',
    'BRA',
    'Rio de Janeiro',
    746758,
    31
  ),(
    225,
    'SÃ£o Bernardo do Campo',
    'BRA',
    'SÃ£o Paulo',
    723132,
    31
  ),(226, 'Teresina', 'BRA', 'PiauÃ­', 691942, 31),(
    227,
    'Natal',
    'BRA',
    'Rio Grande do Norte',
    688955,
    31
  ),(228, 'Osasco', 'BRA', 'SÃ£o Paulo', 659604, 31),(
    229,
    'Campo Grande',
    'BRA',
    'Mato Grosso do Sul',
    649593,
    31
  ),(230, 'Santo AndrÃ©', 'BRA', 'SÃ£o Paulo', 630073, 31),(231, 'JoÃ£o Pessoa', 'BRA', 'ParaÃ­ba', 584029, 31),(
    232,
    'JaboatÃ£o dos Guararapes',
    'BRA',
    'Pernambuco',
    558680,
    31
  ),(233, 'Contagem', 'BRA', 'Minas Gerais', 520801, 31),(
    234,
    'SÃ£o JosÃ© dos Campos',
    'BRA',
    'SÃ£o Paulo',
    515553,
    31
  ),(235, 'UberlÃ¢ndia', 'BRA', 'Minas Gerais', 487222, 31),(236, 'Feira de Santana', 'BRA', 'Bahia', 479992, 31),(
    237,
    'RibeirÃ£o Preto',
    'BRA',
    'SÃ£o Paulo',
    473276,
    31
  ),(238, 'Sorocaba', 'BRA', 'SÃ£o Paulo', 466823, 31),(239, 'NiterÃ³i', 'BRA', 'Rio de Janeiro', 459884, 31),(240, 'CuiabÃ¡', 'BRA', 'Mato Grosso', 453813, 31),(
    241,
    'Juiz de Fora',
    'BRA',
    'Minas Gerais',
    450288,
    31
  ),(242, 'Aracaju', 'BRA', 'Sergipe', 445555, 31),(
    243,
    'SÃ£o JoÃ£o de Meriti',
    'BRA',
    'Rio de Janeiro',
    440052,
    31
  ),(244, 'Londrina', 'BRA', 'ParanÃ¡', 432257, 31),(245, 'Joinville', 'BRA', 'Santa Catarina', 428011, 31),(
    246,
    'Belford Roxo',
    'BRA',
    'Rio de Janeiro',
    425194,
    31
  ),(247, 'Santos', 'BRA', 'SÃ£o Paulo', 408748, 31),(248, 'Ananindeua', 'BRA', 'ParÃ¡', 400940, 31),(
    249,
    'Campos dos Goytacazes',
    'BRA',
    'Rio de Janeiro',
    398418,
    31
  ),(250, 'MauÃ¡', 'BRA', 'SÃ£o Paulo', 375055, 31),(251, 'CarapicuÃ­ba', 'BRA', 'SÃ£o Paulo', 357552, 31),(252, 'Olinda', 'BRA', 'Pernambuco', 354732, 31),(253, 'Campina Grande', 'BRA', 'ParaÃ­ba', 352497, 31),(
    254,
    'SÃ£o JosÃ© do Rio Preto',
    'BRA',
    'SÃ£o Paulo',
    351944,
    31
  ),(
    255,
    'Caxias do Sul',
    'BRA',
    'Rio Grande do Sul',
    349581,
    31
  ),(
    256,
    'Moji das Cruzes',
    'BRA',
    'SÃ£o Paulo',
    339194,
    31
  ),(257, 'Diadema', 'BRA', 'SÃ£o Paulo', 335078, 31),(
    258,
    'Aparecida de GoiÃ¢nia',
    'BRA',
    'GoiÃ¡s',
    324662,
    31
  ),(259, 'Piracicaba', 'BRA', 'SÃ£o Paulo', 319104, 31),(
    260,
    'Cariacica',
    'BRA',
    'EspÃ­rito Santo',
    319033,
    31
  ),(
    261,
    'Vila Velha',
    'BRA',
    'EspÃ­rito Santo',
    318758,
    31
  ),(
    262,
    'Pelotas',
    'BRA',
    'Rio Grande do Sul',
    315415,
    31
  ),(263, 'Bauru', 'BRA', 'SÃ£o Paulo', 313670, 31),(264, 'Porto Velho', 'BRA', 'RondÃ´nia', 309750, 31),(265, 'Serra', 'BRA', 'EspÃ­rito Santo', 302666, 31),(266, 'Betim', 'BRA', 'Minas Gerais', 302108, 31),(267, 'JundÃ­aÃ­', 'BRA', 'SÃ£o Paulo', 296127, 31),(268, 'Canoas', 'BRA', 'Rio Grande do Sul', 294125, 31),(269, 'Franca', 'BRA', 'SÃ£o Paulo', 290139, 31),(270, 'SÃ£o Vicente', 'BRA', 'SÃ£o Paulo', 286848, 31),(271, 'MaringÃ¡', 'BRA', 'ParanÃ¡', 286461, 31),(
    272,
    'Montes Claros',
    'BRA',
    'Minas Gerais',
    286058,
    31
  ),(273, 'AnÃ¡polis', 'BRA', 'GoiÃ¡s', 282197, 31),(
    274,
    'FlorianÃ³polis',
    'BRA',
    'Santa Catarina',
    281928,
    31
  ),(
    275,
    'PetrÃ³polis',
    'BRA',
    'Rio de Janeiro',
    279183,
    31
  ),(
    276,
    'Itaquaquecetuba',
    'BRA',
    'SÃ£o Paulo',
    270874,
    31
  ),(277, 'VitÃ³ria', 'BRA', 'EspÃ­rito Santo', 270626, 31),(278, 'Ponta Grossa', 'BRA', 'ParanÃ¡', 268013, 31),(279, 'Rio Branco', 'BRA', 'Acre', 259537, 31),(280, 'Foz do IguaÃ§u', 'BRA', 'ParanÃ¡', 259425, 31),(281, 'MacapÃ¡', 'BRA', 'AmapÃ¡', 256033, 31),(282, 'IlhÃ©us', 'BRA', 'Bahia', 254970, 31),(
    283,
    'VitÃ³ria da Conquista',
    'BRA',
    'Bahia',
    253587,
    31
  ),(284, 'Uberaba', 'BRA', 'Minas Gerais', 249225, 31),(285, 'Paulista', 'BRA', 'Pernambuco', 248473, 31),(286, 'Limeira', 'BRA', 'SÃ£o Paulo', 245497, 31),(287, 'Blumenau', 'BRA', 'Santa Catarina', 244379, 31),(288, 'Caruaru', 'BRA', 'Pernambuco', 244247, 31),(289, 'SantarÃ©m', 'BRA', 'ParÃ¡', 241771, 31),(
    290,
    'Volta Redonda',
    'BRA',
    'Rio de Janeiro',
    240315,
    31
  ),(
    291,
    'Novo Hamburgo',
    'BRA',
    'Rio Grande do Sul',
    239940,
    31
  ),(292, 'Caucaia', 'BRA', 'CearÃ¡', 238738, 31),(
    293,
    'Santa Maria',
    'BRA',
    'Rio Grande do Sul',
    238473,
    31
  ),(294, 'Cascavel', 'BRA', 'ParanÃ¡', 237510, 31),(295, 'GuarujÃ¡', 'BRA', 'SÃ£o Paulo', 237206, 31),(
    296,
    'RibeirÃ£o das Neves',
    'BRA',
    'Minas Gerais',
    232685,
    31
  ),(
    297,
    'Governador Valadares',
    'BRA',
    'Minas Gerais',
    231724,
    31
  ),(298, 'TaubatÃ©', 'BRA', 'SÃ£o Paulo', 229130, 31),(299, 'Imperatriz', 'BRA', 'MaranhÃ£o', 224564, 31),(
    300,
    'GravataÃ­',
    'BRA',
    'Rio Grande do Sul',
    223011,
    31
  ),(301, 'Embu', 'BRA', 'SÃ£o Paulo', 222223, 31),(
    302,
    'MossorÃ³',
    'BRA',
    'Rio Grande do Norte',
    214901,
    31
  ),(
    303,
    'VÃ¡rzea Grande',
    'BRA',
    'Mato Grosso',
    214435,
    31
  ),(304, 'Petrolina', 'BRA', 'Pernambuco', 210540, 31),(305, 'Barueri', 'BRA', 'SÃ£o Paulo', 208426, 31),(
    306,
    'ViamÃ£o',
    'BRA',
    'Rio Grande do Sul',
    207557,
    31
  ),(307, 'Ipatinga', 'BRA', 'Minas Gerais', 206338, 31),(308, 'Juazeiro', 'BRA', 'Bahia', 201073, 31),(309, 'Juazeiro do Norte', 'BRA', 'CearÃ¡', 199636, 31),(
    310,
    'TaboÃ£o da Serra',
    'BRA',
    'SÃ£o Paulo',
    197550,
    31
  ),(
    311,
    'SÃ£o JosÃ© dos Pinhais',
    'BRA',
    'ParanÃ¡',
    196884,
    31
  ),(312, 'MagÃ©', 'BRA', 'Rio de Janeiro', 196147, 31),(313, 'Suzano', 'BRA', 'SÃ£o Paulo', 195434, 31),(
    314,
    'SÃ£o Leopoldo',
    'BRA',
    'Rio Grande do Sul',
    189258,
    31
  ),(315, 'MarÃ­lia', 'BRA', 'SÃ£o Paulo', 188691, 31),(316, 'SÃ£o Carlos', 'BRA', 'SÃ£o Paulo', 187122, 31),(317, 'SumarÃ©', 'BRA', 'SÃ£o Paulo', 186205, 31),(
    318,
    'Presidente Prudente',
    'BRA',
    'SÃ£o Paulo',
    185340,
    31
  ),(
    319,
    'DivinÃ³polis',
    'BRA',
    'Minas Gerais',
    185047,
    31
  ),(320, 'Sete Lagoas', 'BRA', 'Minas Gerais', 182984, 31),(
    321,
    'Rio Grande',
    'BRA',
    'Rio Grande do Sul',
    182222,
    31
  ),(322, 'Itabuna', 'BRA', 'Bahia', 182148, 31),(323, 'JequiÃ©', 'BRA', 'Bahia', 179128, 31),(324, 'Arapiraca', 'BRA', 'Alagoas', 178988, 31),(325, 'Colombo', 'BRA', 'ParanÃ¡', 177764, 31),(326, 'Americana', 'BRA', 'SÃ£o Paulo', 177409, 31),(
    327,
    'Alvorada',
    'BRA',
    'Rio Grande do Sul',
    175574,
    31
  ),(328, 'Araraquara', 'BRA', 'SÃ£o Paulo', 174381, 31),(329, 'ItaboraÃ­', 'BRA', 'Rio de Janeiro', 173977, 31),(
    330,
    'Santa BÃ¡rbara dÂ´Oeste',
    'BRA',
    'SÃ£o Paulo',
    171657,
    31
  ),(
    331,
    'Nova Friburgo',
    'BRA',
    'Rio de Janeiro',
    170697,
    31
  ),(332, 'JacareÃ­', 'BRA', 'SÃ£o Paulo', 170356, 31),(333, 'AraÃ§atuba', 'BRA', 'SÃ£o Paulo', 169303, 31),(
    334,
    'Barra Mansa',
    'BRA',
    'Rio de Janeiro',
    168953,
    31
  ),(335, 'Praia Grande', 'BRA', 'SÃ£o Paulo', 168434, 31),(336, 'MarabÃ¡', 'BRA', 'ParÃ¡', 167795, 31),(337, 'CriciÃºma', 'BRA', 'Santa Catarina', 167661, 31),(338, 'Boa Vista', 'BRA', 'Roraima', 167185, 31),(
    339,
    'Passo Fundo',
    'BRA',
    'Rio Grande do Sul',
    166343,
    31
  ),(
    340,
    'Dourados',
    'BRA',
    'Mato Grosso do Sul',
    164716,
    31
  ),(341, 'Santa Luzia', 'BRA', 'Minas Gerais', 164704, 31),(342, 'Rio Claro', 'BRA', 'SÃ£o Paulo', 163551, 31),(343, 'MaracanaÃº', 'BRA', 'CearÃ¡', 162022, 31),(344, 'Guarapuava', 'BRA', 'ParanÃ¡', 160510, 31),(
    345,
    'RondonÃ³polis',
    'BRA',
    'Mato Grosso',
    155115,
    31
  ),(
    346,
    'SÃ£o JosÃ©',
    'BRA',
    'Santa Catarina',
    155105,
    31
  ),(
    347,
    'Cachoeiro de Itapemirim',
    'BRA',
    'EspÃ­rito Santo',
    155024,
    31
  ),(
    348,
    'NilÃ³polis',
    'BRA',
    'Rio de Janeiro',
    153383,
    31
  ),(349, 'Itapevi', 'BRA', 'SÃ£o Paulo', 150664, 31),(
    350,
    'Cabo de Santo Agostinho',
    'BRA',
    'Pernambuco',
    149964,
    31
  ),(351, 'CamaÃ§ari', 'BRA', 'Bahia', 149146, 31),(352, 'Sobral', 'BRA', 'CearÃ¡', 146005, 31),(353, 'ItajaÃ­', 'BRA', 'Santa Catarina', 145197, 31),(354, 'ChapecÃ³', 'BRA', 'Santa Catarina', 144158, 31),(355, 'Cotia', 'BRA', 'SÃ£o Paulo', 140042, 31),(356, 'Lages', 'BRA', 'Santa Catarina', 139570, 31),(
    357,
    'Ferraz de Vasconcelos',
    'BRA',
    'SÃ£o Paulo',
    139283,
    31
  ),(358, 'Indaiatuba', 'BRA', 'SÃ£o Paulo', 135968, 31),(359, 'HortolÃ¢ndia', 'BRA', 'SÃ£o Paulo', 135755, 31),(360, 'Caxias', 'BRA', 'MaranhÃ£o', 133980, 31),(
    361,
    'SÃ£o Caetano do Sul',
    'BRA',
    'SÃ£o Paulo',
    133321,
    31
  ),(362, 'Itu', 'BRA', 'SÃ£o Paulo', 132736, 31),(
    363,
    'Nossa Senhora do Socorro',
    'BRA',
    'Sergipe',
    131351,
    31
  ),(364, 'ParnaÃ­ba', 'BRA', 'PiauÃ­', 129756, 31),(
    365,
    'PoÃ§os de Caldas',
    'BRA',
    'Minas Gerais',
    129683,
    31
  ),(
    366,
    'TeresÃ³polis',
    'BRA',
    'Rio de Janeiro',
    128079,
    31
  ),(367, 'Barreiras', 'BRA', 'Bahia', 127801, 31),(368, 'Castanhal', 'BRA', 'ParÃ¡', 127634, 31),(369, 'Alagoinhas', 'BRA', 'Bahia', 126820, 31),(
    370,
    'Itapecerica da Serra',
    'BRA',
    'SÃ£o Paulo',
    126672,
    31
  ),(
    371,
    'Uruguaiana',
    'BRA',
    'Rio Grande do Sul',
    126305,
    31
  ),(372, 'ParanaguÃ¡', 'BRA', 'ParanÃ¡', 126076, 31),(373, 'IbiritÃ©', 'BRA', 'Minas Gerais', 125982, 31),(374, 'Timon', 'BRA', 'MaranhÃ£o', 125812, 31),(375, 'LuziÃ¢nia', 'BRA', 'GoiÃ¡s', 125597, 31),(376, 'MacaÃ©', 'BRA', 'Rio de Janeiro', 125597, 31),(
    377,
    'TeÃ³filo Otoni',
    'BRA',
    'Minas Gerais',
    124489,
    31
  ),(378, 'Moji-GuaÃ§u', 'BRA', 'SÃ£o Paulo', 123782, 31),(379, 'Palmas', 'BRA', 'Tocantins', 121919, 31),(
    380,
    'Pindamonhangaba',
    'BRA',
    'SÃ£o Paulo',
    121904,
    31
  ),(
    381,
    'Francisco Morato',
    'BRA',
    'SÃ£o Paulo',
    121197,
    31
  ),(382, 'BagÃ©', 'BRA', 'Rio Grande do Sul', 120793, 31),(
    383,
    'Sapucaia do Sul',
    'BRA',
    'Rio Grande do Sul',
    120217,
    31
  ),(384, 'Cabo Frio', 'BRA', 'Rio de Janeiro', 119503, 31),(385, 'Itapetininga', 'BRA', 'SÃ£o Paulo', 119391, 31),(
    386,
    'Patos de Minas',
    'BRA',
    'Minas Gerais',
    119262,
    31
  ),(387, 'Camaragibe', 'BRA', 'Pernambuco', 118968, 31),(
    388,
    'BraganÃ§a Paulista',
    'BRA',
    'SÃ£o Paulo',
    116929,
    31
  ),(389, 'Queimados', 'BRA', 'Rio de Janeiro', 115020, 31),(390, 'AraguaÃ­na', 'BRA', 'Tocantins', 114948, 31),(391, 'Garanhuns', 'BRA', 'Pernambuco', 114603, 31),(
    392,
    'VitÃ³ria de Santo AntÃ£o',
    'BRA',
    'Pernambuco',
    113595,
    31
  ),(393, 'Santa Rita', 'BRA', 'ParaÃ­ba', 113135, 31),(394, 'Barbacena', 'BRA', 'Minas Gerais', 113079, 31),(395, 'Abaetetuba', 'BRA', 'ParÃ¡', 111258, 31),(396, 'JaÃº', 'BRA', 'SÃ£o Paulo', 109965, 31),(397, 'Lauro de Freitas', 'BRA', 'Bahia', 109236, 31),(
    398,
    'Franco da Rocha',
    'BRA',
    'SÃ£o Paulo',
    108964,
    31
  ),(
    399,
    'Teixeira de Freitas',
    'BRA',
    'Bahia',
    108441,
    31
  ),(400, 'Varginha', 'BRA', 'Minas Gerais', 108314, 31),(
    401,
    'RibeirÃ£o Pires',
    'BRA',
    'SÃ£o Paulo',
    108121,
    31
  ),(402, 'SabarÃ¡', 'BRA', 'Minas Gerais', 107781, 31),(403, 'Catanduva', 'BRA', 'SÃ£o Paulo', 107761, 31),(404, 'Rio Verde', 'BRA', 'GoiÃ¡s', 107755, 31),(405, 'Botucatu', 'BRA', 'SÃ£o Paulo', 107663, 31),(406, 'Colatina', 'BRA', 'EspÃ­rito Santo', 107354, 31),(
    407,
    'Santa Cruz do Sul',
    'BRA',
    'Rio Grande do Sul',
    106734,
    31
  ),(408, 'Linhares', 'BRA', 'EspÃ­rito Santo', 106278, 31),(409, 'Apucarana', 'BRA', 'ParanÃ¡', 105114, 31),(410, 'Barretos', 'BRA', 'SÃ£o Paulo', 104156, 31),(
    411,
    'GuaratinguetÃ¡',
    'BRA',
    'SÃ£o Paulo',
    103433,
    31
  ),(
    412,
    'Cachoeirinha',
    'BRA',
    'Rio Grande do Sul',
    103240,
    31
  ),(413, 'CodÃ³', 'BRA', 'MaranhÃ£o', 103153, 31),(
    414,
    'JaraguÃ¡ do Sul',
    'BRA',
    'Santa Catarina',
    102580,
    31
  ),(415, 'CubatÃ£o', 'BRA', 'SÃ£o Paulo', 102372, 31),(416, 'Itabira', 'BRA', 'Minas Gerais', 102217, 31),(417, 'Itaituba', 'BRA', 'ParÃ¡', 101320, 31),(418, 'Araras', 'BRA', 'SÃ£o Paulo', 101046, 31),(419, 'Resende', 'BRA', 'Rio de Janeiro', 100627, 31),(420, 'Atibaia', 'BRA', 'SÃ£o Paulo', 100356, 31),(
    421,
    'Pouso Alegre',
    'BRA',
    'Minas Gerais',
    100028,
    31
  ),(422, 'Toledo', 'BRA', 'ParanÃ¡', 99387, 31),(423, 'Crato', 'BRA', 'CearÃ¡', 98965, 31),(424, 'Passos', 'BRA', 'Minas Gerais', 98570, 31),(425, 'Araguari', 'BRA', 'Minas Gerais', 98399, 31),(
    426,
    'SÃ£o JosÃ© de Ribamar',
    'BRA',
    'MaranhÃ£o',
    98318,
    31
  ),(427, 'Pinhais', 'BRA', 'ParanÃ¡', 98198, 31),(428, 'SertÃ£ozinho', 'BRA', 'SÃ£o Paulo', 98140, 31),(
    429,
    'Conselheiro Lafaiete',
    'BRA',
    'Minas Gerais',
    97507,
    31
  ),(430, 'Paulo Afonso', 'BRA', 'Bahia', 97291, 31),(
    431,
    'Angra dos Reis',
    'BRA',
    'Rio de Janeiro',
    96864,
    31
  ),(432, 'EunÃ¡polis', 'BRA', 'Bahia', 96610, 31),(433, 'Salto', 'BRA', 'SÃ£o Paulo', 96348, 31),(434, 'Ourinhos', 'BRA', 'SÃ£o Paulo', 96291, 31),(
    435,
    'Parnamirim',
    'BRA',
    'Rio Grande do Norte',
    96210,
    31
  ),(436, 'Jacobina', 'BRA', 'Bahia', 96131, 31),(
    437,
    'Coronel Fabriciano',
    'BRA',
    'Minas Gerais',
    95933,
    31
  ),(438, 'Birigui', 'BRA', 'SÃ£o Paulo', 94685, 31),(439, 'TatuÃ­', 'BRA', 'SÃ£o Paulo', 93897, 31),(440, 'Ji-ParanÃ¡', 'BRA', 'RondÃ´nia', 93346, 31),(441, 'Bacabal', 'BRA', 'MaranhÃ£o', 93121, 31),(442, 'CametÃ¡', 'BRA', 'ParÃ¡', 92779, 31),(443, 'GuaÃ­ba', 'BRA', 'Rio Grande do Sul', 92224, 31),(
    444,
    'SÃ£o LourenÃ§o da Mata',
    'BRA',
    'Pernambuco',
    91999,
    31
  ),(
    445,
    'Santana do Livramento',
    'BRA',
    'Rio Grande do Sul',
    91779,
    31
  ),(446, 'Votorantim', 'BRA', 'SÃ£o Paulo', 91777, 31),(447, 'Campo Largo', 'BRA', 'ParanÃ¡', 91203, 31),(448, 'Patos', 'BRA', 'ParaÃ­ba', 90519, 31),(449, 'Ituiutaba', 'BRA', 'Minas Gerais', 90507, 31),(
    450,
    'CorumbÃ¡',
    'BRA',
    'Mato Grosso do Sul',
    90111,
    31
  ),(451, 'PalhoÃ§a', 'BRA', 'Santa Catarina', 89465, 31),(
    452,
    'Barra do PiraÃ­',
    'BRA',
    'Rio de Janeiro',
    89388,
    31
  ),(
    453,
    'Bento GonÃ§alves',
    'BRA',
    'Rio Grande do Sul',
    89254,
    31
  ),(454, 'PoÃ¡', 'BRA', 'SÃ£o Paulo', 89236, 31),(
    455,
    'Ãguas Lindas de GoiÃ¡s',
    'BRA',
    'GoiÃ¡s',
    89200,
    31
  ),(456, 'London', 'GBR', 'England', 7285000, 77),(457, 'Birmingham', 'GBR', 'England', 1013000, 77),(458, 'Glasgow', 'GBR', 'Scotland', 619680, 77),(459, 'Liverpool', 'GBR', 'England', 461000, 77),(460, 'Edinburgh', 'GBR', 'Scotland', 450180, 77),(461, 'Sheffield', 'GBR', 'England', 431607, 77),(462, 'Manchester', 'GBR', 'England', 430000, 77),(463, 'Leeds', 'GBR', 'England', 424194, 77),(464, 'Bristol', 'GBR', 'England', 402000, 77),(465, 'Cardiff', 'GBR', 'Wales', 321000, 77),(466, 'Coventry', 'GBR', 'England', 304000, 77),(467, 'Leicester', 'GBR', 'England', 294000, 77),(468, 'Bradford', 'GBR', 'England', 289376, 77),(469, 'Belfast', 'GBR', 'North Ireland', 287500, 77),(470, 'Nottingham', 'GBR', 'England', 287000, 77),(
    471,
    'Kingston upon Hull',
    'GBR',
    'England',
    262000,
    77
  ),(472, 'Plymouth', 'GBR', 'England', 253000, 77),(473, 'Stoke-on-Trent', 'GBR', 'England', 252000, 77),(474, 'Wolverhampton', 'GBR', 'England', 242000, 77),(475, 'Derby', 'GBR', 'England', 236000, 77),(476, 'Swansea', 'GBR', 'Wales', 230000, 77),(477, 'Southampton', 'GBR', 'England', 216000, 77),(478, 'Aberdeen', 'GBR', 'Scotland', 213070, 77),(479, 'Northampton', 'GBR', 'England', 196000, 77),(480, 'Dudley', 'GBR', 'England', 192171, 77),(481, 'Portsmouth', 'GBR', 'England', 190000, 77),(
    482,
    'Newcastle upon Tyne',
    'GBR',
    'England',
    189150,
    77
  ),(483, 'Sunderland', 'GBR', 'England', 183310, 77),(484, 'Luton', 'GBR', 'England', 183000, 77),(485, 'Swindon', 'GBR', 'England', 180000, 77),(486, 'Southend-on-Sea', 'GBR', 'England', 176000, 77),(487, 'Walsall', 'GBR', 'England', 174739, 77),(488, 'Bournemouth', 'GBR', 'England', 162000, 77),(489, 'Peterborough', 'GBR', 'England', 156000, 77),(490, 'Brighton', 'GBR', 'England', 156124, 77),(491, 'Blackpool', 'GBR', 'England', 151000, 77),(492, 'Dundee', 'GBR', 'Scotland', 146690, 77),(493, 'West Bromwich', 'GBR', 'England', 146386, 77),(494, 'Reading', 'GBR', 'England', 148000, 77),(
    495,
    'Oldbury/Smethwick (Warley)',
    'GBR',
    'England',
    145542,
    77
  ),(496, 'Middlesbrough', 'GBR', 'England', 145000, 77),(497, 'Huddersfield', 'GBR', 'England', 143726, 77),(498, 'Oxford', 'GBR', 'England', 144000, 77),(499, 'Poole', 'GBR', 'England', 141000, 77),(500, 'Bolton', 'GBR', 'England', 139020, 77),(501, 'Blackburn', 'GBR', 'England', 140000, 77),(502, 'Newport', 'GBR', 'Wales', 139000, 77),(503, 'Preston', 'GBR', 'England', 135000, 77),(504, 'Stockport', 'GBR', 'England', 132813, 77),(505, 'Norwich', 'GBR', 'England', 124000, 77),(506, 'Rotherham', 'GBR', 'England', 121380, 77),(507, 'Cambridge', 'GBR', 'England', 121000, 77),(508, 'Watford', 'GBR', 'England', 113080, 77),(509, 'Ipswich', 'GBR', 'England', 114000, 77),(510, 'Slough', 'GBR', 'England', 112000, 77),(511, 'Exeter', 'GBR', 'England', 111000, 77),(512, 'Cheltenham', 'GBR', 'England', 106000, 77),(513, 'Gloucester', 'GBR', 'England', 107000, 77),(514, 'Saint Helens', 'GBR', 'England', 106293, 77),(515, 'Sutton Coldfield', 'GBR', 'England', 106001, 77),(516, 'York', 'GBR', 'England', 104425, 77),(517, 'Oldham', 'GBR', 'England', 103931, 77),(518, 'Basildon', 'GBR', 'England', 100924, 77),(519, 'Worthing', 'GBR', 'England', 100000, 77),(520, 'Chelmsford', 'GBR', 'England', 97451, 77),(521, 'Colchester', 'GBR', 'England', 96063, 77),(522, 'Crawley', 'GBR', 'England', 97000, 77),(523, 'Gillingham', 'GBR', 'England', 92000, 77),(524, 'Solihull', 'GBR', 'England', 94531, 77),(525, 'Rochdale', 'GBR', 'England', 94313, 77),(526, 'Birkenhead', 'GBR', 'England', 93087, 77),(527, 'Worcester', 'GBR', 'England', 95000, 77),(528, 'Hartlepool', 'GBR', 'England', 92000, 77),(529, 'Halifax', 'GBR', 'England', 91069, 77),(530, 'Woking/Byfleet', 'GBR', 'England', 92000, 77),(531, 'Southport', 'GBR', 'England', 90959, 77),(532, 'Maidstone', 'GBR', 'England', 90878, 77),(533, 'Eastbourne', 'GBR', 'England', 90000, 77),(534, 'Grimsby', 'GBR', 'England', 89000, 77),(535, 'Saint Helier', 'GBR', 'Jersey', 27523, 77),(536, 'Douglas', 'GBR', 'Â–', 23487, 77),(537, 'Road Town', 'VGB', 'Tortola', 8000, 229),(
    538,
    'Bandar Seri Begawan',
    'BRN',
    'Brunei and Muara',
    21484,
    33
  ),(539, 'Sofija', 'BGR', 'Grad Sofija', 1122302, 23),(540, 'Plovdiv', 'BGR', 'Plovdiv', 342584, 23),(541, 'Varna', 'BGR', 'Varna', 299801, 23),(542, 'Burgas', 'BGR', 'Burgas', 195255, 23),(543, 'Ruse', 'BGR', 'Ruse', 166467, 23),(544, 'Stara Zagora', 'BGR', 'Haskovo', 147939, 23),(545, 'Pleven', 'BGR', 'Lovec', 121952, 23),(546, 'Sliven', 'BGR', 'Burgas', 105530, 23),(547, 'Dobric', 'BGR', 'Varna', 100399, 23),(548, 'ÂŠumen', 'BGR', 'Varna', 94686, 23),(549, 'Ouagadougou', 'BFA', 'Kadiogo', 824000, 21),(550, 'Bobo-Dioulasso', 'BFA', 'Houet', 300000, 21),(551, 'Koudougou', 'BFA', 'BoulkiemdÃ©', 105000, 21),(552, 'Bujumbura', 'BDI', 'Bujumbura', 300000, 18),(553, 'George Town', 'CYM', 'Grand Cayman', 19600, 54),(
    554,
    'Santiago de Chile',
    'CHL',
    'Santiago',
    4703954,
    41
  ),(555, 'Puente Alto', 'CHL', 'Santiago', 386236, 41),(
    556,
    'ViÃ±a del Mar',
    'CHL',
    'ValparaÃ­so',
    312493,
    41
  ),(557, 'ValparaÃ­so', 'CHL', 'ValparaÃ­so', 293800, 41),(558, 'Talcahuano', 'CHL', 'BÃ­obÃ­o', 277752, 41),(559, 'Antofagasta', 'CHL', 'Antofagasta', 251429, 41),(560, 'San Bernardo', 'CHL', 'Santiago', 241910, 41),(561, 'Temuco', 'CHL', 'La AraucanÃ­a', 233041, 41),(562, 'ConcepciÃ³n', 'CHL', 'BÃ­obÃ­o', 217664, 41),(563, 'Rancagua', 'CHL', 'OÂ´Higgins', 212977, 41),(564, 'Arica', 'CHL', 'TarapacÃ¡', 189036, 41),(565, 'Talca', 'CHL', 'Maule', 187557, 41),(566, 'ChillÃ¡n', 'CHL', 'BÃ­obÃ­o', 178182, 41),(567, 'Iquique', 'CHL', 'TarapacÃ¡', 177892, 41),(568, 'Los Angeles', 'CHL', 'BÃ­obÃ­o', 158215, 41),(569, 'Puerto Montt', 'CHL', 'Los Lagos', 152194, 41),(570, 'Coquimbo', 'CHL', 'Coquimbo', 143353, 41),(571, 'Osorno', 'CHL', 'Los Lagos', 141468, 41),(572, 'La Serena', 'CHL', 'Coquimbo', 137409, 41),(573, 'Calama', 'CHL', 'Antofagasta', 137265, 41),(574, 'Valdivia', 'CHL', 'Los Lagos', 133106, 41),(575, 'Punta Arenas', 'CHL', 'Magallanes', 125631, 41),(576, 'CopiapÃ³', 'CHL', 'Atacama', 120128, 41),(577, 'QuilpuÃ©', 'CHL', 'ValparaÃ­so', 118857, 41),(578, 'CuricÃ³', 'CHL', 'Maule', 115766, 41),(579, 'Ovalle', 'CHL', 'Coquimbo', 94854, 41),(580, 'Coronel', 'CHL', 'BÃ­obÃ­o', 93061, 41),(
    581,
    'San Pedro de la Paz',
    'CHL',
    'BÃ­obÃ­o',
    91684,
    41
  ),(582, 'Melipilla', 'CHL', 'Santiago', 91056, 41),(583, 'Avarua', 'COK', 'Rarotonga', 11900, 47),(584, 'San JosÃ©', 'CRI', 'San JosÃ©', 339131, 51),(585, 'Djibouti', 'DJI', 'Djibouti', 383000, 58),(586, 'Roseau', 'DMA', 'St George', 16243, 59),(
    587,
    'Santo Domingo de GuzmÃ¡n',
    'DOM',
    'Distrito Nacional',
    1609966,
    61
  ),(
    588,
    'Santiago de los Caballeros',
    'DOM',
    'Santiago',
    365463,
    61
  ),(589, 'La Romana', 'DOM', 'La Romana', 140204, 61),(
    590,
    'San Pedro de MacorÃ­s',
    'DOM',
    'San Pedro de MacorÃ­',
    124735,
    61
  ),(
    591,
    'San Francisco de MacorÃ­s',
    'DOM',
    'Duarte',
    108485,
    61
  ),(
    592,
    'San Felipe de Puerto Plata',
    'DOM',
    'Puerto Plata',
    89423,
    61
  ),(593, 'Guayaquil', 'ECU', 'Guayas', 2070040, 63),(594, 'Quito', 'ECU', 'Pichincha', 1573458, 63),(595, 'Cuenca', 'ECU', 'Azuay', 270353, 63),(596, 'Machala', 'ECU', 'El Oro', 210368, 63),(
    597,
    'Santo Domingo de los Colorados',
    'ECU',
    'Pichincha',
    202111,
    63
  ),(598, 'Portoviejo', 'ECU', 'ManabÃ­', 176413, 63),(599, 'Ambato', 'ECU', 'Tungurahua', 169612, 63),(600, 'Manta', 'ECU', 'ManabÃ­', 164739, 63),(
    601,
    'Duran [Eloy Alfaro]',
    'ECU',
    'Guayas',
    152514,
    63
  ),(602, 'Ibarra', 'ECU', 'Imbabura', 130643, 63),(603, 'Quevedo', 'ECU', 'Los RÃ­os', 129631, 63),(604, 'Milagro', 'ECU', 'Guayas', 124177, 63),(605, 'Loja', 'ECU', 'Loja', 123875, 63),(606, 'RÃ­obamba', 'ECU', 'Chimborazo', 123163, 63),(607, 'Esmeraldas', 'ECU', 'Esmeraldas', 123045, 63),(608, 'Cairo', 'EGY', 'Kairo', 6789479, 64),(609, 'Alexandria', 'EGY', 'Aleksandria', 3328196, 64),(610, 'Giza', 'EGY', 'Giza', 2221868, 64),(
    611,
    'Shubra al-Khayma',
    'EGY',
    'al-Qalyubiya',
    870716,
    64
  ),(612, 'Port Said', 'EGY', 'Port Said', 469533, 64),(613, 'Suez', 'EGY', 'Suez', 417610, 64),(
    614,
    'al-Mahallat al-Kubra',
    'EGY',
    'al-Gharbiya',
    395402,
    64
  ),(615, 'Tanta', 'EGY', 'al-Gharbiya', 371010, 64),(616, 'al-Mansura', 'EGY', 'al-Daqahliya', 369621, 64),(617, 'Luxor', 'EGY', 'Luxor', 360503, 64),(618, 'Asyut', 'EGY', 'Asyut', 343498, 64),(619, 'Bahtim', 'EGY', 'al-Qalyubiya', 275807, 64),(620, 'Zagazig', 'EGY', 'al-Sharqiya', 267351, 64),(621, 'al-Faiyum', 'EGY', 'al-Faiyum', 260964, 64),(622, 'Ismailia', 'EGY', 'Ismailia', 254477, 64),(
    623,
    'Kafr al-Dawwar',
    'EGY',
    'al-Buhayra',
    231978,
    64
  ),(624, 'Assuan', 'EGY', 'Assuan', 219017, 64),(625, 'Damanhur', 'EGY', 'al-Buhayra', 212203, 64),(626, 'al-Minya', 'EGY', 'al-Minya', 201360, 64),(627, 'Bani Suwayf', 'EGY', 'Bani Suwayf', 172032, 64),(628, 'Qina', 'EGY', 'Qina', 171275, 64),(629, 'Sawhaj', 'EGY', 'Sawhaj', 170125, 64),(
    630,
    'Shibin al-Kawm',
    'EGY',
    'al-Minufiya',
    159909,
    64
  ),(631, 'Bulaq al-Dakrur', 'EGY', 'Giza', 148787, 64),(632, 'Banha', 'EGY', 'al-Qalyubiya', 145792, 64),(633, 'Warraq al-Arab', 'EGY', 'Giza', 127108, 64),(
    634,
    'Kafr al-Shaykh',
    'EGY',
    'Kafr al-Shaykh',
    124819,
    64
  ),(635, 'Mallawi', 'EGY', 'al-Minya', 119283, 64),(636, 'Bilbays', 'EGY', 'al-Sharqiya', 113608, 64),(637, 'Mit Ghamr', 'EGY', 'al-Daqahliya', 101801, 64),(638, 'al-Arish', 'EGY', 'Shamal Sina', 100447, 64),(639, 'Talkha', 'EGY', 'al-Daqahliya', 97700, 64),(640, 'Qalyub', 'EGY', 'al-Qalyubiya', 97200, 64),(641, 'Jirja', 'EGY', 'Sawhaj', 95400, 64),(642, 'Idfu', 'EGY', 'Qina', 94200, 64),(643, 'al-Hawamidiya', 'EGY', 'Giza', 91700, 64),(644, 'Disuq', 'EGY', 'Kafr al-Shaykh', 91300, 64),(
    645,
    'San Salvador',
    'SLV',
    'San Salvador',
    415346,
    193
  ),(646, 'Santa Ana', 'SLV', 'Santa Ana', 139389, 193),(647, 'Mejicanos', 'SLV', 'San Salvador', 138800, 193),(648, 'Soyapango', 'SLV', 'San Salvador', 129800, 193),(649, 'San Miguel', 'SLV', 'San Miguel', 127696, 193),(
    650,
    'Nueva San Salvador',
    'SLV',
    'La Libertad',
    98400,
    193
  ),(651, 'Apopa', 'SLV', 'San Salvador', 88800, 193),(652, 'Asmara', 'ERI', 'Maekel', 431000, 65),(653, 'Madrid', 'ESP', 'Madrid', 2879052, 67),(654, 'Barcelona', 'ESP', 'Katalonia', 1503451, 67),(655, 'Valencia', 'ESP', 'Valencia', 739412, 67),(656, 'Sevilla', 'ESP', 'Andalusia', 701927, 67),(657, 'Zaragoza', 'ESP', 'Aragonia', 603367, 67),(658, 'MÃ¡laga', 'ESP', 'Andalusia', 530553, 67),(659, 'Bilbao', 'ESP', 'Baskimaa', 357589, 67),(
    660,
    'Las Palmas de Gran Canaria',
    'ESP',
    'Canary Islands',
    354757,
    67
  ),(661, 'Murcia', 'ESP', 'Murcia', 353504, 67),(
    662,
    'Palma de Mallorca',
    'ESP',
    'Balears',
    326993,
    67
  ),(
    663,
    'Valladolid',
    'ESP',
    'Castilla and LeÃ³n',
    319998,
    67
  ),(664, 'CÃ³rdoba', 'ESP', 'Andalusia', 311708, 67),(665, 'Vigo', 'ESP', 'Galicia', 283670, 67),(
    666,
    'Alicante [Alacant]',
    'ESP',
    'Valencia',
    272432,
    67
  ),(667, 'GijÃ³n', 'ESP', 'Asturia', 267980, 67),(
    668,
    'LÂ´Hospitalet de Llobregat',
    'ESP',
    'Katalonia',
    247986,
    67
  ),(669, 'Granada', 'ESP', 'Andalusia', 244767, 67),(
    670,
    'A CoruÃ±a (La CoruÃ±a)',
    'ESP',
    'Galicia',
    243402,
    67
  ),(671, 'Vitoria-Gasteiz', 'ESP', 'Baskimaa', 217154, 67),(
    672,
    'Santa Cruz de Tenerife',
    'ESP',
    'Canary Islands',
    213050,
    67
  ),(673, 'Badalona', 'ESP', 'Katalonia', 209635, 67),(674, 'Oviedo', 'ESP', 'Asturia', 200453, 67),(675, 'MÃ³stoles', 'ESP', 'Madrid', 195351, 67),(676, 'Elche [Elx]', 'ESP', 'Valencia', 193174, 67),(677, 'Sabadell', 'ESP', 'Katalonia', 184859, 67),(678, 'Santander', 'ESP', 'Cantabria', 184165, 67),(
    679,
    'Jerez de la Frontera',
    'ESP',
    'Andalusia',
    182660,
    67
  ),(
    680,
    'Pamplona [IruÃ±a]',
    'ESP',
    'Navarra',
    180483,
    67
  ),(
    681,
    'Donostia-San SebastiÃ¡n',
    'ESP',
    'Baskimaa',
    179208,
    67
  ),(682, 'Cartagena', 'ESP', 'Murcia', 177709, 67),(683, 'LeganÃ©s', 'ESP', 'Madrid', 173163, 67),(684, 'Fuenlabrada', 'ESP', 'Madrid', 171173, 67),(685, 'AlmerÃ­a', 'ESP', 'Andalusia', 169027, 67),(686, 'Terrassa', 'ESP', 'Katalonia', 168695, 67),(
    687,
    'AlcalÃ¡ de Henares',
    'ESP',
    'Madrid',
    164463,
    67
  ),(
    688,
    'Burgos',
    'ESP',
    'Castilla and LeÃ³n',
    162802,
    67
  ),(
    689,
    'Salamanca',
    'ESP',
    'Castilla and LeÃ³n',
    158720,
    67
  ),(
    690,
    'Albacete',
    'ESP',
    'Kastilia-La Mancha',
    147527,
    67
  ),(691, 'Getafe', 'ESP', 'Madrid', 145371, 67),(692, 'CÃ¡diz', 'ESP', 'Andalusia', 142449, 67),(693, 'AlcorcÃ³n', 'ESP', 'Madrid', 142048, 67),(694, 'Huelva', 'ESP', 'Andalusia', 140583, 67),(695, 'LeÃ³n', 'ESP', 'Castilla and LeÃ³n', 139809, 67),(
    696,
    'CastellÃ³n de la Plana [Castell',
    'ESP',
    'Valencia',
    139712,
    67
  ),(697, 'Badajoz', 'ESP', 'Extremadura', 136613, 67),(
    698,
    '[San CristÃ³bal de] la Laguna',
    'ESP',
    'Canary Islands',
    127945,
    67
  ),(699, 'LogroÃ±o', 'ESP', 'La Rioja', 127093, 67),(
    700,
    'Santa Coloma de Gramenet',
    'ESP',
    'Katalonia',
    120802,
    67
  ),(701, 'Tarragona', 'ESP', 'Katalonia', 113016, 67),(
    702,
    'Lleida (LÃ©rida)',
    'ESP',
    'Katalonia',
    112207,
    67
  ),(703, 'JaÃ©n', 'ESP', 'Andalusia', 109247, 67),(704, 'Ourense (Orense)', 'ESP', 'Galicia', 109120, 67),(705, 'MatarÃ³', 'ESP', 'Katalonia', 104095, 67),(706, 'Algeciras', 'ESP', 'Andalusia', 103106, 67),(707, 'Marbella', 'ESP', 'Andalusia', 101144, 67),(708, 'Barakaldo', 'ESP', 'Baskimaa', 98212, 67),(709, 'Dos Hermanas', 'ESP', 'Andalusia', 94591, 67),(
    710,
    'Santiago de Compostela',
    'ESP',
    'Galicia',
    93745,
    67
  ),(711, 'TorrejÃ³n de Ardoz', 'ESP', 'Madrid', 92262, 67),(712, 'Cape Town', 'ZAF', 'Western Cape', 2352121, 237),(713, 'Soweto', 'ZAF', 'Gauteng', 904165, 237),(714, 'Johannesburg', 'ZAF', 'Gauteng', 756653, 237),(
    715,
    'Port Elizabeth',
    'ZAF',
    'Eastern Cape',
    752319,
    237
  ),(716, 'Pretoria', 'ZAF', 'Gauteng', 658630, 237),(717, 'Inanda', 'ZAF', 'KwaZulu-Natal', 634065, 237),(718, 'Durban', 'ZAF', 'KwaZulu-Natal', 566120, 237),(719, 'Vanderbijlpark', 'ZAF', 'Gauteng', 468931, 237),(720, 'Kempton Park', 'ZAF', 'Gauteng', 442633, 237),(721, 'Alberton', 'ZAF', 'Gauteng', 410102, 237),(722, 'Pinetown', 'ZAF', 'KwaZulu-Natal', 378810, 237),(
    723,
    'Pietermaritzburg',
    'ZAF',
    'KwaZulu-Natal',
    370190,
    237
  ),(724, 'Benoni', 'ZAF', 'Gauteng', 365467, 237),(725, 'Randburg', 'ZAF', 'Gauteng', 341288, 237),(726, 'Umlazi', 'ZAF', 'KwaZulu-Natal', 339233, 237),(727, 'Bloemfontein', 'ZAF', 'Free State', 334341, 237),(728, 'Vereeniging', 'ZAF', 'Gauteng', 328535, 237),(729, 'Wonderboom', 'ZAF', 'Gauteng', 283289, 237),(730, 'Roodepoort', 'ZAF', 'Gauteng', 279340, 237),(731, 'Boksburg', 'ZAF', 'Gauteng', 262648, 237),(732, 'Klerksdorp', 'ZAF', 'North West', 261911, 237),(733, 'Soshanguve', 'ZAF', 'Gauteng', 242727, 237),(734, 'Newcastle', 'ZAF', 'KwaZulu-Natal', 222993, 237),(
    735,
    'East London',
    'ZAF',
    'Eastern Cape',
    221047,
    237
  ),(736, 'Welkom', 'ZAF', 'Free State', 203296, 237),(737, 'Kimberley', 'ZAF', 'Northern Cape', 197254, 237),(738, 'Uitenhage', 'ZAF', 'Eastern Cape', 192120, 237),(
    739,
    'Chatsworth',
    'ZAF',
    'KwaZulu-Natal',
    189885,
    237
  ),(740, 'Mdantsane', 'ZAF', 'Eastern Cape', 182639, 237),(741, 'Krugersdorp', 'ZAF', 'Gauteng', 181503, 237),(742, 'Botshabelo', 'ZAF', 'Free State', 177971, 237),(743, 'Brakpan', 'ZAF', 'Gauteng', 171363, 237),(744, 'Witbank', 'ZAF', 'Mpumalanga', 167183, 237),(745, 'Oberholzer', 'ZAF', 'Gauteng', 164367, 237),(746, 'Germiston', 'ZAF', 'Gauteng', 164252, 237),(747, 'Springs', 'ZAF', 'Gauteng', 162072, 237),(748, 'Westonaria', 'ZAF', 'Gauteng', 159632, 237),(749, 'Randfontein', 'ZAF', 'Gauteng', 120838, 237),(750, 'Paarl', 'ZAF', 'Western Cape', 105768, 237),(
    751,
    'Potchefstroom',
    'ZAF',
    'North West',
    101817,
    237
  ),(752, 'Rustenburg', 'ZAF', 'North West', 97008, 237),(753, 'Nigel', 'ZAF', 'Gauteng', 96734, 237),(754, 'George', 'ZAF', 'Western Cape', 93818, 237),(755, 'Ladysmith', 'ZAF', 'KwaZulu-Natal', 89292, 237),(756, 'Addis Abeba', 'ETH', 'Addis Abeba', 2495000, 69),(757, 'Dire Dawa', 'ETH', 'Dire Dawa', 164851, 69),(758, 'Nazret', 'ETH', 'Oromia', 127842, 69),(759, 'Gonder', 'ETH', 'Amhara', 112249, 69),(760, 'Dese', 'ETH', 'Amhara', 97314, 69),(761, 'Mekele', 'ETH', 'Tigray', 96938, 69),(762, 'Bahir Dar', 'ETH', 'Amhara', 96140, 69),(763, 'Stanley', 'FLK', 'East Falkland', 1636, 72),(764, 'Suva', 'FJI', 'Central', 77366, 71),(
    765,
    'Quezon',
    'PHL',
    'National Capital Reg',
    2173831,
    169
  ),(
    766,
    'Manila',
    'PHL',
    'National Capital Reg',
    1581082,
    169
  ),(
    767,
    'Kalookan',
    'PHL',
    'National Capital Reg',
    1177604,
    169
  ),(
    768,
    'Davao',
    'PHL',
    'Southern Mindanao',
    1147116,
    169
  ),(769, 'Cebu', 'PHL', 'Central Visayas', 718821, 169),(
    770,
    'Zamboanga',
    'PHL',
    'Western Mindanao',
    601794,
    169
  ),(
    771,
    'Pasig',
    'PHL',
    'National Capital Reg',
    505058,
    169
  ),(
    772,
    'Valenzuela',
    'PHL',
    'National Capital Reg',
    485433,
    169
  ),(
    773,
    'Las PiÃ±as',
    'PHL',
    'National Capital Reg',
    472780,
    169
  ),(
    774,
    'Antipolo',
    'PHL',
    'Southern Tagalog',
    470866,
    169
  ),(
    775,
    'Taguig',
    'PHL',
    'National Capital Reg',
    467375,
    169
  ),(
    776,
    'Cagayan de Oro',
    'PHL',
    'Northern Mindanao',
    461877,
    169
  ),(
    777,
    'ParaÃ±aque',
    'PHL',
    'National Capital Reg',
    449811,
    169
  ),(
    778,
    'Makati',
    'PHL',
    'National Capital Reg',
    444867,
    169
  ),(779, 'Bacolod', 'PHL', 'Western Visayas', 429076, 169),(
    780,
    'General Santos',
    'PHL',
    'Southern Mindanao',
    411822,
    169
  ),(
    781,
    'Marikina',
    'PHL',
    'National Capital Reg',
    391170,
    169
  ),(
    782,
    'DasmariÃ±as',
    'PHL',
    'Southern Tagalog',
    379520,
    169
  ),(
    783,
    'Muntinlupa',
    'PHL',
    'National Capital Reg',
    379310,
    169
  ),(784, 'Iloilo', 'PHL', 'Western Visayas', 365820, 169),(
    785,
    'Pasay',
    'PHL',
    'National Capital Reg',
    354908,
    169
  ),(
    786,
    'Malabon',
    'PHL',
    'National Capital Reg',
    338855,
    169
  ),(
    787,
    'San JosÃ© del Monte',
    'PHL',
    'Central Luzon',
    315807,
    169
  ),(788, 'Bacoor', 'PHL', 'Southern Tagalog', 305699, 169),(789, 'Iligan', 'PHL', 'Central Mindanao', 285061, 169),(
    790,
    'Calamba',
    'PHL',
    'Southern Tagalog',
    281146,
    169
  ),(
    791,
    'Mandaluyong',
    'PHL',
    'National Capital Reg',
    278474,
    169
  ),(792, 'Butuan', 'PHL', 'Caraga', 267279, 169),(793, 'Angeles', 'PHL', 'Central Luzon', 263971, 169),(794, 'Tarlac', 'PHL', 'Central Luzon', 262481, 169),(795, 'Mandaue', 'PHL', 'Central Visayas', 259728, 169),(796, 'Baguio', 'PHL', 'CAR', 252386, 169),(
    797,
    'Batangas',
    'PHL',
    'Southern Tagalog',
    247588,
    169
  ),(798, 'Cainta', 'PHL', 'Southern Tagalog', 242511, 169),(
    799,
    'San Pedro',
    'PHL',
    'Southern Tagalog',
    231403,
    169
  ),(
    800,
    'Navotas',
    'PHL',
    'National Capital Reg',
    230403,
    169
  ),(
    801,
    'Cabanatuan',
    'PHL',
    'Central Luzon',
    222859,
    169
  ),(
    802,
    'San Fernando',
    'PHL',
    'Central Luzon',
    221857,
    169
  ),(803, 'Lipa', 'PHL', 'Southern Tagalog', 218447, 169),(
    804,
    'Lapu-Lapu',
    'PHL',
    'Central Visayas',
    217019,
    169
  ),(
    805,
    'San Pablo',
    'PHL',
    'Southern Tagalog',
    207927,
    169
  ),(806, 'BiÃ±an', 'PHL', 'Southern Tagalog', 201186, 169),(807, 'Taytay', 'PHL', 'Southern Tagalog', 198183, 169),(808, 'Lucena', 'PHL', 'Southern Tagalog', 196075, 169),(809, 'Imus', 'PHL', 'Southern Tagalog', 195482, 169),(810, 'Olongapo', 'PHL', 'Central Luzon', 194260, 169),(
    811,
    'Binangonan',
    'PHL',
    'Southern Tagalog',
    187691,
    169
  ),(
    812,
    'Santa Rosa',
    'PHL',
    'Southern Tagalog',
    185633,
    169
  ),(813, 'Tagum', 'PHL', 'Southern Mindanao', 179531, 169),(
    814,
    'Tacloban',
    'PHL',
    'Eastern Visayas',
    178639,
    169
  ),(815, 'Malolos', 'PHL', 'Central Luzon', 175291, 169),(816, 'Mabalacat', 'PHL', 'Central Luzon', 171045, 169),(
    817,
    'Cotabato',
    'PHL',
    'Central Mindanao',
    163849,
    169
  ),(
    818,
    'Meycauayan',
    'PHL',
    'Central Luzon',
    163037,
    169
  ),(
    819,
    'Puerto Princesa',
    'PHL',
    'Southern Tagalog',
    161912,
    169
  ),(820, 'Legazpi', 'PHL', 'Bicol', 157010, 169),(821, 'Silang', 'PHL', 'Southern Tagalog', 156137, 169),(822, 'Ormoc', 'PHL', 'Eastern Visayas', 154297, 169),(823, 'San Carlos', 'PHL', 'Ilocos', 154264, 169),(
    824,
    'Kabankalan',
    'PHL',
    'Western Visayas',
    149769,
    169
  ),(825, 'Talisay', 'PHL', 'Central Visayas', 148110, 169),(
    826,
    'Valencia',
    'PHL',
    'Northern Mindanao',
    147924,
    169
  ),(
    827,
    'Calbayog',
    'PHL',
    'Eastern Visayas',
    147187,
    169
  ),(
    828,
    'Santa Maria',
    'PHL',
    'Central Luzon',
    144282,
    169
  ),(
    829,
    'Pagadian',
    'PHL',
    'Western Mindanao',
    142515,
    169
  ),(830, 'Cadiz', 'PHL', 'Western Visayas', 141954, 169),(831, 'Bago', 'PHL', 'Western Visayas', 141721, 169),(832, 'Toledo', 'PHL', 'Central Visayas', 141174, 169),(833, 'Naga', 'PHL', 'Bicol', 137810, 169),(
    834,
    'San Mateo',
    'PHL',
    'Southern Tagalog',
    135603,
    169
  ),(
    835,
    'Panabo',
    'PHL',
    'Southern Mindanao',
    133950,
    169
  ),(
    836,
    'Koronadal',
    'PHL',
    'Southern Mindanao',
    133786,
    169
  ),(837, 'Marawi', 'PHL', 'Central Mindanao', 131090, 169),(838, 'Dagupan', 'PHL', 'Ilocos', 130328, 169),(839, 'Sagay', 'PHL', 'Western Visayas', 129765, 169),(840, 'Roxas', 'PHL', 'Western Visayas', 126352, 169),(841, 'Lubao', 'PHL', 'Central Luzon', 125699, 169),(842, 'Digos', 'PHL', 'Southern Mindanao', 125171, 169),(
    843,
    'San Miguel',
    'PHL',
    'Central Luzon',
    123824,
    169
  ),(
    844,
    'Malaybalay',
    'PHL',
    'Northern Mindanao',
    123672,
    169
  ),(
    845,
    'Tuguegarao',
    'PHL',
    'Cagayan Valley',
    120645,
    169
  ),(846, 'Ilagan', 'PHL', 'Cagayan Valley', 119990, 169),(847, 'Baliuag', 'PHL', 'Central Luzon', 119675, 169),(848, 'Surigao', 'PHL', 'Caraga', 118534, 169),(
    849,
    'San Carlos',
    'PHL',
    'Western Visayas',
    118259,
    169
  ),(
    850,
    'San Juan del Monte',
    'PHL',
    'National Capital Reg',
    117680,
    169
  ),(
    851,
    'Tanauan',
    'PHL',
    'Southern Tagalog',
    117539,
    169
  ),(
    852,
    'Concepcion',
    'PHL',
    'Central Luzon',
    115171,
    169
  ),(
    853,
    'Rodriguez (Montalban)',
    'PHL',
    'Southern Tagalog',
    115167,
    169
  ),(
    854,
    'Sariaya',
    'PHL',
    'Southern Tagalog',
    114568,
    169
  ),(855, 'Malasiqui', 'PHL', 'Ilocos', 113190, 169),(
    856,
    'General Mariano Alvarez',
    'PHL',
    'Southern Tagalog',
    112446,
    169
  ),(857, 'Urdaneta', 'PHL', 'Ilocos', 111582, 169),(858, 'Hagonoy', 'PHL', 'Central Luzon', 111425, 169),(
    859,
    'San Jose',
    'PHL',
    'Southern Tagalog',
    111009,
    169
  ),(
    860,
    'Polomolok',
    'PHL',
    'Southern Mindanao',
    110709,
    169
  ),(861, 'Santiago', 'PHL', 'Cagayan Valley', 110531, 169),(862, 'Tanza', 'PHL', 'Southern Tagalog', 110517, 169),(
    863,
    'Ozamis',
    'PHL',
    'Northern Mindanao',
    110420,
    169
  ),(864, 'Mexico', 'PHL', 'Central Luzon', 109481, 169),(865, 'San Jose', 'PHL', 'Central Luzon', 108254, 169),(866, 'Silay', 'PHL', 'Western Visayas', 107722, 169),(
    867,
    'General Trias',
    'PHL',
    'Southern Tagalog',
    107691,
    169
  ),(868, 'Tabaco', 'PHL', 'Bicol', 107166, 169),(
    869,
    'Cabuyao',
    'PHL',
    'Southern Tagalog',
    106630,
    169
  ),(
    870,
    'Calapan',
    'PHL',
    'Southern Tagalog',
    105910,
    169
  ),(871, 'Mati', 'PHL', 'Southern Mindanao', 105908, 169),(
    872,
    'Midsayap',
    'PHL',
    'Central Mindanao',
    105760,
    169
  ),(873, 'Cauayan', 'PHL', 'Cagayan Valley', 103952, 169),(
    874,
    'Gingoog',
    'PHL',
    'Northern Mindanao',
    102379,
    169
  ),(
    875,
    'Dumaguete',
    'PHL',
    'Central Visayas',
    102265,
    169
  ),(876, 'San Fernando', 'PHL', 'Ilocos', 102082, 169),(877, 'Arayat', 'PHL', 'Central Luzon', 101792, 169),(
    878,
    'Bayawan (Tulong)',
    'PHL',
    'Central Visayas',
    101391,
    169
  ),(
    879,
    'Kidapawan',
    'PHL',
    'Central Mindanao',
    101205,
    169
  ),(880, 'Daraga (Locsin)', 'PHL', 'Bicol', 101031, 169),(881, 'Marilao', 'PHL', 'Central Luzon', 101017, 169),(
    882,
    'Malita',
    'PHL',
    'Southern Mindanao',
    100000,
    169
  ),(883, 'Dipolog', 'PHL', 'Western Mindanao', 99862, 169),(884, 'Cavite', 'PHL', 'Southern Tagalog', 99367, 169),(885, 'Danao', 'PHL', 'Central Visayas', 98781, 169),(886, 'Bislig', 'PHL', 'Caraga', 97860, 169),(887, 'Talavera', 'PHL', 'Central Luzon', 97329, 169),(888, 'Guagua', 'PHL', 'Central Luzon', 96858, 169),(889, 'Bayambang', 'PHL', 'Ilocos', 96609, 169),(890, 'Nasugbu', 'PHL', 'Southern Tagalog', 96113, 169),(891, 'Baybay', 'PHL', 'Eastern Visayas', 95630, 169),(892, 'Capas', 'PHL', 'Central Luzon', 95219, 169),(893, 'Sultan Kudarat', 'PHL', 'ARMM', 94861, 169),(894, 'Laoag', 'PHL', 'Ilocos', 94466, 169),(895, 'Bayugan', 'PHL', 'Caraga', 93623, 169),(
    896,
    'Malungon',
    'PHL',
    'Southern Mindanao',
    93232,
    169
  ),(
    897,
    'Santa Cruz',
    'PHL',
    'Southern Tagalog',
    92694,
    169
  ),(898, 'Sorsogon', 'PHL', 'Bicol', 92512, 169),(
    899,
    'Candelaria',
    'PHL',
    'Southern Tagalog',
    92429,
    169
  ),(900, 'Ligao', 'PHL', 'Bicol', 90603, 169),(901, 'TÃ³rshavn', 'FRO', 'Streymoyar', 14542, 74),(902, 'Libreville', 'GAB', 'Estuaire', 419000, 76),(903, 'Serekunda', 'GMB', 'Kombo St Mary', 102600, 83),(904, 'Banjul', 'GMB', 'Banjul', 42326, 83),(905, 'Tbilisi', 'GEO', 'Tbilisi', 1235200, 78),(906, 'Kutaisi', 'GEO', 'Imereti', 240900, 78),(907, 'Rustavi', 'GEO', 'Kvemo Kartli', 155400, 78),(908, 'Batumi', 'GEO', 'Adzaria [AtÂšara]', 137700, 78),(
    909,
    'Sohumi',
    'GEO',
    'Abhasia [Aphazeti]',
    111700,
    78
  ),(910, 'Accra', 'GHA', 'Greater Accra', 1070000, 79),(911, 'Kumasi', 'GHA', 'Ashanti', 385192, 79),(912, 'Tamale', 'GHA', 'Northern', 151069, 79),(913, 'Tema', 'GHA', 'Greater Accra', 109975, 79),(914, 'Sekondi-Takoradi', 'GHA', 'Western', 103653, 79),(915, 'Gibraltar', 'GIB', 'Â–', 27025, 80),(916, 'Saint GeorgeÂ´s', 'GRD', 'St George', 4621, 87),(917, 'Nuuk', 'GRL', 'Kitaa', 13445, 88),(918, 'Les Abymes', 'GLP', 'Grande-Terre', 62947, 82),(919, 'Basse-Terre', 'GLP', 'Basse-Terre', 12433, 82),(920, 'Tamuning', 'GUM', 'Â–', 9500, 91),(921, 'AgaÃ±a', 'GUM', 'Â–', 1139, 91),(
    922,
    'Ciudad de Guatemala',
    'GTM',
    'Guatemala',
    823301,
    89
  ),(923, 'Mixco', 'GTM', 'Guatemala', 209791, 89),(924, 'Villa Nueva', 'GTM', 'Guatemala', 101295, 89),(
    925,
    'Quetzaltenango',
    'GTM',
    'Quetzaltenango',
    90801,
    89
  ),(926, 'Conakry', 'GIN', 'Conakry', 1090610, 81),(927, 'Bissau', 'GNB', 'Bissau', 241000, 84),(928, 'Georgetown', 'GUY', 'Georgetown', 254000, 92),(929, 'Port-au-Prince', 'HTI', 'Ouest', 884472, 97),(930, 'Carrefour', 'HTI', 'Ouest', 290204, 97),(931, 'Delmas', 'HTI', 'Ouest', 240429, 97),(932, 'Le-Cap-HaÃ¯tien', 'HTI', 'Nord', 102233, 97),(
    933,
    'Tegucigalpa',
    'HND',
    'Distrito Central',
    813900,
    95
  ),(934, 'San Pedro Sula', 'HND', 'CortÃ©s', 383900, 95),(935, 'La Ceiba', 'HND', 'AtlÃ¡ntida', 89200, 95),(
    936,
    'Kowloon and New Kowloon',
    'HKG',
    'Kowloon and New Kowl',
    1987996,
    93
  ),(937, 'Victoria', 'HKG', 'Hongkong', 1312637, 93),(938, 'Longyearbyen', 'SJM', 'LÃ¤nsimaa', 1438, 190),(939, 'Jakarta', 'IDN', 'Jakarta Raya', 9604900, 99),(940, 'Surabaya', 'IDN', 'East Java', 2663820, 99),(941, 'Bandung', 'IDN', 'West Java', 2429000, 99),(942, 'Medan', 'IDN', 'Sumatera Utara', 1843919, 99),(
    943,
    'Palembang',
    'IDN',
    'Sumatera Selatan',
    1222764,
    99
  ),(944, 'Tangerang', 'IDN', 'West Java', 1198300, 99),(945, 'Semarang', 'IDN', 'Central Java', 1104405, 99),(
    946,
    'Ujung Pandang',
    'IDN',
    'Sulawesi Selatan',
    1060257,
    99
  ),(947, 'Malang', 'IDN', 'East Java', 716862, 99),(948, 'Bandar Lampung', 'IDN', 'Lampung', 680332, 99),(949, 'Bekasi', 'IDN', 'West Java', 644300, 99),(950, 'Padang', 'IDN', 'Sumatera Barat', 534474, 99),(951, 'Surakarta', 'IDN', 'Central Java', 518600, 99),(
    952,
    'Banjarmasin',
    'IDN',
    'Kalimantan Selatan',
    482931,
    99
  ),(953, 'Pekan Baru', 'IDN', 'Riau', 438638, 99),(954, 'Denpasar', 'IDN', 'Bali', 435000, 99),(955, 'Yogyakarta', 'IDN', 'Yogyakarta', 418944, 99),(
    956,
    'Pontianak',
    'IDN',
    'Kalimantan Barat',
    409632,
    99
  ),(
    957,
    'Samarinda',
    'IDN',
    'Kalimantan Timur',
    399175,
    99
  ),(958, 'Jambi', 'IDN', 'Jambi', 385201, 99),(959, 'Depok', 'IDN', 'West Java', 365200, 99),(960, 'Cimahi', 'IDN', 'West Java', 344600, 99),(
    961,
    'Balikpapan',
    'IDN',
    'Kalimantan Timur',
    338752,
    99
  ),(962, 'Manado', 'IDN', 'Sulawesi Utara', 332288, 99),(
    963,
    'Mataram',
    'IDN',
    'Nusa Tenggara Barat',
    306600,
    99
  ),(964, 'Pekalongan', 'IDN', 'Central Java', 301504, 99),(965, 'Tegal', 'IDN', 'Central Java', 289744, 99),(966, 'Bogor', 'IDN', 'West Java', 285114, 99),(967, 'Ciputat', 'IDN', 'West Java', 270800, 99),(968, 'Pondokgede', 'IDN', 'West Java', 263200, 99),(969, 'Cirebon', 'IDN', 'West Java', 254406, 99),(970, 'Kediri', 'IDN', 'East Java', 253760, 99),(971, 'Ambon', 'IDN', 'Molukit', 249312, 99),(972, 'Jember', 'IDN', 'East Java', 218500, 99),(973, 'Cilacap', 'IDN', 'Central Java', 206900, 99),(974, 'Cimanggis', 'IDN', 'West Java', 205100, 99),(
    975,
    'Pematang Siantar',
    'IDN',
    'Sumatera Utara',
    203056,
    99
  ),(976, 'Purwokerto', 'IDN', 'Central Java', 202500, 99),(977, 'Ciomas', 'IDN', 'West Java', 187400, 99),(978, 'Tasikmalaya', 'IDN', 'West Java', 179800, 99),(979, 'Madiun', 'IDN', 'East Java', 171532, 99),(980, 'Bengkulu', 'IDN', 'Bengkulu', 146439, 99),(981, 'Karawang', 'IDN', 'West Java', 145000, 99),(982, 'Banda Aceh', 'IDN', 'Aceh', 143409, 99),(983, 'Palu', 'IDN', 'Sulawesi Tengah', 142800, 99),(984, 'Pasuruan', 'IDN', 'East Java', 134019, 99),(
    985,
    'Kupang',
    'IDN',
    'Nusa Tenggara Timur',
    129300,
    99
  ),(
    986,
    'Tebing Tinggi',
    'IDN',
    'Sumatera Utara',
    129300,
    99
  ),(
    987,
    'Percut Sei Tuan',
    'IDN',
    'Sumatera Utara',
    129000,
    99
  ),(988, 'Binjai', 'IDN', 'Sumatera Utara', 127222, 99),(989, 'Sukabumi', 'IDN', 'West Java', 125766, 99),(990, 'Waru', 'IDN', 'East Java', 124300, 99),(
    991,
    'Pangkal Pinang',
    'IDN',
    'Sumatera Selatan',
    124000,
    99
  ),(992, 'Magelang', 'IDN', 'Central Java', 123800, 99),(993, 'Blitar', 'IDN', 'East Java', 122600, 99),(994, 'Serang', 'IDN', 'West Java', 122400, 99),(995, 'Probolinggo', 'IDN', 'East Java', 120770, 99),(996, 'Cilegon', 'IDN', 'West Java', 117000, 99),(997, 'Cianjur', 'IDN', 'West Java', 114300, 99),(998, 'Ciparay', 'IDN', 'West Java', 111500, 99),(999, 'Lhokseumawe', 'IDN', 'Aceh', 109600, 99),(1000, 'Taman', 'IDN', 'East Java', 107000, 99),(1001, 'Depok', 'IDN', 'Yogyakarta', 106800, 99),(1002, 'Citeureup', 'IDN', 'West Java', 105100, 99),(1003, 'Pemalang', 'IDN', 'Central Java', 103500, 99),(1004, 'Klaten', 'IDN', 'Central Java', 103300, 99),(1005, 'Salatiga', 'IDN', 'Central Java', 103000, 99),(1006, 'Cibinong', 'IDN', 'West Java', 101300, 99),(
    1007,
    'Palangka Raya',
    'IDN',
    'Kalimantan Tengah',
    99693,
    99
  ),(1008, 'Mojokerto', 'IDN', 'East Java', 96626, 99),(1009, 'Purwakarta', 'IDN', 'West Java', 95900, 99),(1010, 'Garut', 'IDN', 'West Java', 95800, 99),(1011, 'Kudus', 'IDN', 'Central Java', 95300, 99),(
    1012,
    'Kendari',
    'IDN',
    'Sulawesi Tenggara',
    94800,
    99
  ),(1013, 'Jaya Pura', 'IDN', 'West Irian', 94700, 99),(1014, 'Gorontalo', 'IDN', 'Sulawesi Utara', 94058, 99),(1015, 'Majalaya', 'IDN', 'West Java', 93200, 99),(1016, 'Pondok Aren', 'IDN', 'West Java', 92700, 99),(1017, 'Jombang', 'IDN', 'East Java', 92600, 99),(1018, 'Sunggal', 'IDN', 'Sumatera Utara', 92300, 99),(1019, 'Batam', 'IDN', 'Riau', 91871, 99),(
    1020,
    'Padang Sidempuan',
    'IDN',
    'Sumatera Utara',
    91200,
    99
  ),(1021, 'Sawangan', 'IDN', 'West Java', 91100, 99),(1022, 'Banyuwangi', 'IDN', 'East Java', 89900, 99),(1023, 'Tanjung Pinang', 'IDN', 'Riau', 89900, 99),(
    1024,
    'Mumbai (Bombay)',
    'IND',
    'Maharashtra',
    10500000,
    100
  ),(1025, 'Delhi', 'IND', 'Delhi', 7206704, 100),(
    1026,
    'Calcutta [Kolkata]',
    'IND',
    'West Bengali',
    4399819,
    100
  ),(
    1027,
    'Chennai (Madras)',
    'IND',
    'Tamil Nadu',
    3841396,
    100
  ),(
    1028,
    'Hyderabad',
    'IND',
    'Andhra Pradesh',
    2964638,
    100
  ),(1029, 'Ahmedabad', 'IND', 'Gujarat', 2876710, 100),(1030, 'Bangalore', 'IND', 'Karnataka', 2660088, 100),(1031, 'Kanpur', 'IND', 'Uttar Pradesh', 1874409, 100),(1032, 'Nagpur', 'IND', 'Maharashtra', 1624752, 100),(1033, 'Lucknow', 'IND', 'Uttar Pradesh', 1619115, 100),(1034, 'Pune', 'IND', 'Maharashtra', 1566651, 100),(1035, 'Surat', 'IND', 'Gujarat', 1498817, 100),(1036, 'Jaipur', 'IND', 'Rajasthan', 1458483, 100),(1037, 'Indore', 'IND', 'Madhya Pradesh', 1091674, 100),(1038, 'Bhopal', 'IND', 'Madhya Pradesh', 1062771, 100),(1039, 'Ludhiana', 'IND', 'Punjab', 1042740, 100),(
    1040,
    'Vadodara (Baroda)',
    'IND',
    'Gujarat',
    1031346,
    100
  ),(1041, 'Kalyan', 'IND', 'Maharashtra', 1014557, 100),(1042, 'Madurai', 'IND', 'Tamil Nadu', 977856, 100),(
    1043,
    'Haora (Howrah)',
    'IND',
    'West Bengali',
    950435,
    100
  ),(
    1044,
    'Varanasi (Benares)',
    'IND',
    'Uttar Pradesh',
    929270,
    100
  ),(1045, 'Patna', 'IND', 'Bihar', 917243, 100),(
    1046,
    'Srinagar',
    'IND',
    'Jammu and Kashmir',
    892506,
    100
  ),(1047, 'Agra', 'IND', 'Uttar Pradesh', 891790, 100),(1048, 'Coimbatore', 'IND', 'Tamil Nadu', 816321, 100),(
    1049,
    'Thane (Thana)',
    'IND',
    'Maharashtra',
    803389,
    100
  ),(
    1050,
    'Allahabad',
    'IND',
    'Uttar Pradesh',
    792858,
    100
  ),(1051, 'Meerut', 'IND', 'Uttar Pradesh', 753778, 100),(
    1052,
    'Vishakhapatnam',
    'IND',
    'Andhra Pradesh',
    752037,
    100
  ),(
    1053,
    'Jabalpur',
    'IND',
    'Madhya Pradesh',
    741927,
    100
  ),(1054, 'Amritsar', 'IND', 'Punjab', 708835, 100),(1055, 'Faridabad', 'IND', 'Haryana', 703592, 100),(
    1056,
    'Vijayawada',
    'IND',
    'Andhra Pradesh',
    701827,
    100
  ),(1057, 'Gwalior', 'IND', 'Madhya Pradesh', 690765, 100),(1058, 'Jodhpur', 'IND', 'Rajasthan', 666279, 100),(
    1059,
    'Nashik (Nasik)',
    'IND',
    'Maharashtra',
    656925,
    100
  ),(
    1060,
    'Hubli-Dharwad',
    'IND',
    'Karnataka',
    648298,
    100
  ),(
    1061,
    'Solapur (Sholapur)',
    'IND',
    'Maharashtra',
    604215,
    100
  ),(1062, 'Ranchi', 'IND', 'Jharkhand', 599306, 100),(1063, 'Bareilly', 'IND', 'Uttar Pradesh', 587211, 100),(
    1064,
    'Guwahati (Gauhati)',
    'IND',
    'Assam',
    584342,
    100
  ),(
    1065,
    'Shambajinagar (Aurangabad)',
    'IND',
    'Maharashtra',
    573272,
    100
  ),(1066, 'Cochin (Kochi)', 'IND', 'Kerala', 564589, 100),(1067, 'Rajkot', 'IND', 'Gujarat', 559407, 100),(1068, 'Kota', 'IND', 'Rajasthan', 537371, 100),(
    1069,
    'Thiruvananthapuram (Trivandrum',
    'IND',
    'Kerala',
    524006,
    100
  ),(
    1070,
    'Pimpri-Chinchwad',
    'IND',
    'Maharashtra',
    517083,
    100
  ),(
    1071,
    'Jalandhar (Jullundur)',
    'IND',
    'Punjab',
    509510,
    100
  ),(
    1072,
    'Gorakhpur',
    'IND',
    'Uttar Pradesh',
    505566,
    100
  ),(1073, 'Chandigarh', 'IND', 'Chandigarh', 504094, 100),(1074, 'Mysore', 'IND', 'Karnataka', 480692, 100),(1075, 'Aligarh', 'IND', 'Uttar Pradesh', 480520, 100),(1076, 'Guntur', 'IND', 'Andhra Pradesh', 471051, 100),(1077, 'Jamshedpur', 'IND', 'Jharkhand', 460577, 100),(
    1078,
    'Ghaziabad',
    'IND',
    'Uttar Pradesh',
    454156,
    100
  ),(
    1079,
    'Warangal',
    'IND',
    'Andhra Pradesh',
    447657,
    100
  ),(1080, 'Raipur', 'IND', 'Chhatisgarh', 438639, 100),(
    1081,
    'Moradabad',
    'IND',
    'Uttar Pradesh',
    429214,
    100
  ),(1082, 'Durgapur', 'IND', 'West Bengali', 425836, 100),(1083, 'Amravati', 'IND', 'Maharashtra', 421576, 100),(
    1084,
    'Calicut (Kozhikode)',
    'IND',
    'Kerala',
    419831,
    100
  ),(1085, 'Bikaner', 'IND', 'Rajasthan', 416289, 100),(1086, 'Bhubaneswar', 'IND', 'Orissa', 411542, 100),(1087, 'Kolhapur', 'IND', 'Maharashtra', 406370, 100),(
    1088,
    'Kataka (Cuttack)',
    'IND',
    'Orissa',
    403418,
    100
  ),(1089, 'Ajmer', 'IND', 'Rajasthan', 402700, 100),(1090, 'Bhavnagar', 'IND', 'Gujarat', 402338, 100),(
    1091,
    'Tiruchirapalli',
    'IND',
    'Tamil Nadu',
    387223,
    100
  ),(1092, 'Bhilai', 'IND', 'Chhatisgarh', 386159, 100),(1093, 'Bhiwandi', 'IND', 'Maharashtra', 379070, 100),(
    1094,
    'Saharanpur',
    'IND',
    'Uttar Pradesh',
    374945,
    100
  ),(1095, 'Ulhasnagar', 'IND', 'Maharashtra', 369077, 100),(1096, 'Salem', 'IND', 'Tamil Nadu', 366712, 100),(1097, 'Ujjain', 'IND', 'Madhya Pradesh', 362266, 100),(1098, 'Malegaon', 'IND', 'Maharashtra', 342595, 100),(1099, 'Jamnagar', 'IND', 'Gujarat', 341637, 100),(
    1100,
    'Bokaro Steel City',
    'IND',
    'Jharkhand',
    333683,
    100
  ),(1101, 'Akola', 'IND', 'Maharashtra', 328034, 100),(1102, 'Belgaum', 'IND', 'Karnataka', 326399, 100),(
    1103,
    'Rajahmundry',
    'IND',
    'Andhra Pradesh',
    324851,
    100
  ),(1104, 'Nellore', 'IND', 'Andhra Pradesh', 316606, 100),(1105, 'Udaipur', 'IND', 'Rajasthan', 308571, 100),(1106, 'New Bombay', 'IND', 'Maharashtra', 307297, 100),(1107, 'Bhatpara', 'IND', 'West Bengali', 304952, 100),(1108, 'Gulbarga', 'IND', 'Karnataka', 304099, 100),(1109, 'New Delhi', 'IND', 'Delhi', 301297, 100),(1110, 'Jhansi', 'IND', 'Uttar Pradesh', 300850, 100),(1111, 'Gaya', 'IND', 'Bihar', 291675, 100),(
    1112,
    'Kakinada',
    'IND',
    'Andhra Pradesh',
    279980,
    100
  ),(
    1113,
    'Dhule (Dhulia)',
    'IND',
    'Maharashtra',
    278317,
    100
  ),(1114, 'Panihati', 'IND', 'West Bengali', 275990, 100),(
    1115,
    'Nanded (Nander)',
    'IND',
    'Maharashtra',
    275083,
    100
  ),(1116, 'Mangalore', 'IND', 'Karnataka', 273304, 100),(1117, 'Dehra Dun', 'IND', 'Uttaranchal', 270159, 100),(1118, 'Kamarhati', 'IND', 'West Bengali', 266889, 100),(1119, 'Davangere', 'IND', 'Karnataka', 266082, 100),(1120, 'Asansol', 'IND', 'West Bengali', 262188, 100),(1121, 'Bhagalpur', 'IND', 'Bihar', 253225, 100),(1122, 'Bellary', 'IND', 'Karnataka', 245391, 100),(
    1123,
    'Barddhaman (Burdwan)',
    'IND',
    'West Bengali',
    245079,
    100
  ),(1124, 'Rampur', 'IND', 'Uttar Pradesh', 243742, 100),(1125, 'Jalgaon', 'IND', 'Maharashtra', 242193, 100),(1126, 'Muzaffarpur', 'IND', 'Bihar', 241107, 100),(
    1127,
    'Nizamabad',
    'IND',
    'Andhra Pradesh',
    241034,
    100
  ),(
    1128,
    'Muzaffarnagar',
    'IND',
    'Uttar Pradesh',
    240609,
    100
  ),(1129, 'Patiala', 'IND', 'Punjab', 238368, 100),(
    1130,
    'Shahjahanpur',
    'IND',
    'Uttar Pradesh',
    237713,
    100
  ),(1131, 'Kurnool', 'IND', 'Andhra Pradesh', 236800, 100),(
    1132,
    'Tiruppur (Tirupper)',
    'IND',
    'Tamil Nadu',
    235661,
    100
  ),(1133, 'Rohtak', 'IND', 'Haryana', 233400, 100),(
    1134,
    'South Dum Dum',
    'IND',
    'West Bengali',
    232811,
    100
  ),(1135, 'Mathura', 'IND', 'Uttar Pradesh', 226691, 100),(1136, 'Chandrapur', 'IND', 'Maharashtra', 226105, 100),(
    1137,
    'Barahanagar (Baranagar)',
    'IND',
    'West Bengali',
    224821,
    100
  ),(1138, 'Darbhanga', 'IND', 'Bihar', 218391, 100),(
    1139,
    'Siliguri (Shiliguri)',
    'IND',
    'West Bengali',
    216950,
    100
  ),(1140, 'Raurkela', 'IND', 'Orissa', 215489, 100),(1141, 'Ambattur', 'IND', 'Tamil Nadu', 215424, 100),(1142, 'Panipat', 'IND', 'Haryana', 215218, 100),(
    1143,
    'Firozabad',
    'IND',
    'Uttar Pradesh',
    215128,
    100
  ),(
    1144,
    'Ichalkaranji',
    'IND',
    'Maharashtra',
    214950,
    100
  ),(
    1145,
    'Jammu',
    'IND',
    'Jammu and Kashmir',
    214737,
    100
  ),(
    1146,
    'Ramagundam',
    'IND',
    'Andhra Pradesh',
    214384,
    100
  ),(1147, 'Eluru', 'IND', 'Andhra Pradesh', 212866, 100),(1148, 'Brahmapur', 'IND', 'Orissa', 210418, 100),(1149, 'Alwar', 'IND', 'Rajasthan', 205086, 100),(
    1150,
    'Pondicherry',
    'IND',
    'Pondicherry',
    203065,
    100
  ),(1151, 'Thanjavur', 'IND', 'Tamil Nadu', 202013, 100),(1152, 'Bihar Sharif', 'IND', 'Bihar', 201323, 100),(1153, 'Tuticorin', 'IND', 'Tamil Nadu', 199854, 100),(1154, 'Imphal', 'IND', 'Manipur', 198535, 100),(1155, 'Latur', 'IND', 'Maharashtra', 197408, 100),(1156, 'Sagar', 'IND', 'Madhya Pradesh', 195346, 100),(
    1157,
    'Farrukhabad-cum-Fatehgarh',
    'IND',
    'Uttar Pradesh',
    194567,
    100
  ),(1158, 'Sangli', 'IND', 'Maharashtra', 193197, 100),(1159, 'Parbhani', 'IND', 'Maharashtra', 190255, 100),(1160, 'Nagar Coil', 'IND', 'Tamil Nadu', 190084, 100),(1161, 'Bijapur', 'IND', 'Karnataka', 186939, 100),(
    1162,
    'Kukatpalle',
    'IND',
    'Andhra Pradesh',
    185378,
    100
  ),(1163, 'Bally', 'IND', 'West Bengali', 184474, 100),(1164, 'Bhilwara', 'IND', 'Rajasthan', 183965, 100),(1165, 'Ratlam', 'IND', 'Madhya Pradesh', 183375, 100),(1166, 'Avadi', 'IND', 'Tamil Nadu', 183215, 100),(1167, 'Dindigul', 'IND', 'Tamil Nadu', 182477, 100),(1168, 'Ahmadnagar', 'IND', 'Maharashtra', 181339, 100),(1169, 'Bilaspur', 'IND', 'Chhatisgarh', 179833, 100),(1170, 'Shimoga', 'IND', 'Karnataka', 179258, 100),(1171, 'Kharagpur', 'IND', 'West Bengali', 177989, 100),(
    1172,
    'Mira Bhayandar',
    'IND',
    'Maharashtra',
    175372,
    100
  ),(1173, 'Vellore', 'IND', 'Tamil Nadu', 175061, 100),(1174, 'Jalna', 'IND', 'Maharashtra', 174985, 100),(1175, 'Burnpur', 'IND', 'West Bengali', 174933, 100),(
    1176,
    'Anantapur',
    'IND',
    'Andhra Pradesh',
    174924,
    100
  ),(
    1177,
    'Allappuzha (Alleppey)',
    'IND',
    'Kerala',
    174666,
    100
  ),(
    1178,
    'Tirupati',
    'IND',
    'Andhra Pradesh',
    174369,
    100
  ),(1179, 'Karnal', 'IND', 'Haryana', 173751, 100),(
    1180,
    'Burhanpur',
    'IND',
    'Madhya Pradesh',
    172710,
    100
  ),(1181, 'Hisar (Hissar)', 'IND', 'Haryana', 172677, 100),(
    1182,
    'Tiruvottiyur',
    'IND',
    'Tamil Nadu',
    172562,
    100
  ),(
    1183,
    'Mirzapur-cum-Vindhyachal',
    'IND',
    'Uttar Pradesh',
    169336,
    100
  ),(
    1184,
    'Secunderabad',
    'IND',
    'Andhra Pradesh',
    167461,
    100
  ),(1185, 'Nadiad', 'IND', 'Gujarat', 167051, 100),(1186, 'Dewas', 'IND', 'Madhya Pradesh', 164364, 100),(
    1187,
    'Murwara (Katni)',
    'IND',
    'Madhya Pradesh',
    163431,
    100
  ),(1188, 'Ganganagar', 'IND', 'Rajasthan', 161482, 100),(
    1189,
    'Vizianagaram',
    'IND',
    'Andhra Pradesh',
    160359,
    100
  ),(1190, 'Erode', 'IND', 'Tamil Nadu', 159232, 100),(
    1191,
    'Machilipatnam (Masulipatam)',
    'IND',
    'Andhra Pradesh',
    159110,
    100
  ),(
    1192,
    'Bhatinda (Bathinda)',
    'IND',
    'Punjab',
    159042,
    100
  ),(1193, 'Raichur', 'IND', 'Karnataka', 157551, 100),(1194, 'Agartala', 'IND', 'Tripura', 157358, 100),(1195, 'Arrah (Ara)', 'IND', 'Bihar', 157082, 100),(1196, 'Satna', 'IND', 'Madhya Pradesh', 156630, 100),(
    1197,
    'Lalbahadur Nagar',
    'IND',
    'Andhra Pradesh',
    155500,
    100
  ),(1198, 'Aizawl', 'IND', 'Mizoram', 155240, 100),(1199, 'Uluberia', 'IND', 'West Bengali', 155172, 100),(1200, 'Katihar', 'IND', 'Bihar', 154367, 100),(1201, 'Cuddalore', 'IND', 'Tamil Nadu', 153086, 100),(
    1202,
    'Hugli-Chinsurah',
    'IND',
    'West Bengali',
    151806,
    100
  ),(1203, 'Dhanbad', 'IND', 'Jharkhand', 151789, 100),(1204, 'Raiganj', 'IND', 'West Bengali', 151045, 100),(1205, 'Sambhal', 'IND', 'Uttar Pradesh', 150869, 100),(1206, 'Durg', 'IND', 'Chhatisgarh', 150645, 100),(1207, 'Munger (Monghyr)', 'IND', 'Bihar', 150112, 100),(1208, 'Kanchipuram', 'IND', 'Tamil Nadu', 150100, 100),(
    1209,
    'North Dum Dum',
    'IND',
    'West Bengali',
    149965,
    100
  ),(
    1210,
    'Karimnagar',
    'IND',
    'Andhra Pradesh',
    148583,
    100
  ),(1211, 'Bharatpur', 'IND', 'Rajasthan', 148519, 100),(1212, 'Sikar', 'IND', 'Rajasthan', 148272, 100),(
    1213,
    'Hardwar (Haridwar)',
    'IND',
    'Uttaranchal',
    147305,
    100
  ),(1214, 'Dabgram', 'IND', 'West Bengali', 147217, 100),(1215, 'Morena', 'IND', 'Madhya Pradesh', 147124, 100),(1216, 'Noida', 'IND', 'Uttar Pradesh', 146514, 100),(1217, 'Hapur', 'IND', 'Uttar Pradesh', 146262, 100),(1218, 'Bhusawal', 'IND', 'Maharashtra', 145143, 100),(1219, 'Khandwa', 'IND', 'Madhya Pradesh', 145133, 100),(1220, 'Yamuna Nagar', 'IND', 'Haryana', 144346, 100),(
    1221,
    'Sonipat (Sonepat)',
    'IND',
    'Haryana',
    143922,
    100
  ),(1222, 'Tenali', 'IND', 'Andhra Pradesh', 143726, 100),(
    1223,
    'Raurkela Civil Township',
    'IND',
    'Orissa',
    140408,
    100
  ),(1224, 'Kollam (Quilon)', 'IND', 'Kerala', 139852, 100),(1225, 'Kumbakonam', 'IND', 'Tamil Nadu', 139483, 100),(
    1226,
    'Ingraj Bazar (English Bazar)',
    'IND',
    'West Bengali',
    139204,
    100
  ),(1227, 'Timkur', 'IND', 'Karnataka', 138903, 100),(1228, 'Amroha', 'IND', 'Uttar Pradesh', 137061, 100),(1229, 'Serampore', 'IND', 'West Bengali', 137028, 100),(1230, 'Chapra', 'IND', 'Bihar', 136877, 100),(1231, 'Pali', 'IND', 'Rajasthan', 136842, 100),(
    1232,
    'Maunath Bhanjan',
    'IND',
    'Uttar Pradesh',
    136697,
    100
  ),(1233, 'Adoni', 'IND', 'Andhra Pradesh', 136182, 100),(1234, 'Jaunpur', 'IND', 'Uttar Pradesh', 136062, 100),(1235, 'Tirunelveli', 'IND', 'Tamil Nadu', 135825, 100),(1236, 'Bahraich', 'IND', 'Uttar Pradesh', 135400, 100),(
    1237,
    'Gadag Betigeri',
    'IND',
    'Karnataka',
    134051,
    100
  ),(
    1238,
    'Proddatur',
    'IND',
    'Andhra Pradesh',
    133914,
    100
  ),(
    1239,
    'Chittoor',
    'IND',
    'Andhra Pradesh',
    133462,
    100
  ),(
    1240,
    'Barrackpur',
    'IND',
    'West Bengali',
    133265,
    100
  ),(
    1241,
    'Bharuch (Broach)',
    'IND',
    'Gujarat',
    133102,
    100
  ),(1242, 'Naihati', 'IND', 'West Bengali', 132701, 100),(1243, 'Shillong', 'IND', 'Meghalaya', 131719, 100),(1244, 'Sambalpur', 'IND', 'Orissa', 131138, 100),(1245, 'Junagadh', 'IND', 'Gujarat', 130484, 100),(
    1246,
    'Rae Bareli',
    'IND',
    'Uttar Pradesh',
    129904,
    100
  ),(1247, 'Rewa', 'IND', 'Madhya Pradesh', 128981, 100),(1248, 'Gurgaon', 'IND', 'Haryana', 128608, 100),(1249, 'Khammam', 'IND', 'Andhra Pradesh', 127992, 100),(
    1250,
    'Bulandshahr',
    'IND',
    'Uttar Pradesh',
    127201,
    100
  ),(1251, 'Navsari', 'IND', 'Gujarat', 126089, 100),(
    1252,
    'Malkajgiri',
    'IND',
    'Andhra Pradesh',
    126066,
    100
  ),(
    1253,
    'Midnapore (Medinipur)',
    'IND',
    'West Bengali',
    125498,
    100
  ),(1254, 'Miraj', 'IND', 'Maharashtra', 125407, 100),(
    1255,
    'Raj Nandgaon',
    'IND',
    'Chhatisgarh',
    125371,
    100
  ),(1256, 'Alandur', 'IND', 'Tamil Nadu', 125244, 100),(1257, 'Puri', 'IND', 'Orissa', 125199, 100),(1258, 'Navadwip', 'IND', 'West Bengali', 125037, 100),(1259, 'Sirsa', 'IND', 'Haryana', 125000, 100),(1260, 'Korba', 'IND', 'Chhatisgarh', 124501, 100),(1261, 'Faizabad', 'IND', 'Uttar Pradesh', 124437, 100),(1262, 'Etawah', 'IND', 'Uttar Pradesh', 124072, 100),(1263, 'Pathankot', 'IND', 'Punjab', 123930, 100),(1264, 'Gandhinagar', 'IND', 'Gujarat', 123359, 100),(
    1265,
    'Palghat (Palakkad)',
    'IND',
    'Kerala',
    123289,
    100
  ),(1266, 'Veraval', 'IND', 'Gujarat', 123000, 100),(1267, 'Hoshiarpur', 'IND', 'Punjab', 122705, 100),(1268, 'Ambala', 'IND', 'Haryana', 122596, 100),(1269, 'Sitapur', 'IND', 'Uttar Pradesh', 121842, 100),(1270, 'Bhiwani', 'IND', 'Haryana', 121629, 100),(
    1271,
    'Cuddapah',
    'IND',
    'Andhra Pradesh',
    121463,
    100
  ),(
    1272,
    'Bhimavaram',
    'IND',
    'Andhra Pradesh',
    121314,
    100
  ),(
    1273,
    'Krishnanagar',
    'IND',
    'West Bengali',
    121110,
    100
  ),(
    1274,
    'Chandannagar',
    'IND',
    'West Bengali',
    120378,
    100
  ),(1275, 'Mandya', 'IND', 'Karnataka', 120265, 100),(1276, 'Dibrugarh', 'IND', 'Assam', 120127, 100),(1277, 'Nandyal', 'IND', 'Andhra Pradesh', 119813, 100),(1278, 'Balurghat', 'IND', 'West Bengali', 119796, 100),(1279, 'Neyveli', 'IND', 'Tamil Nadu', 118080, 100),(1280, 'Fatehpur', 'IND', 'Uttar Pradesh', 117675, 100),(
    1281,
    'Mahbubnagar',
    'IND',
    'Andhra Pradesh',
    116833,
    100
  ),(1282, 'Budaun', 'IND', 'Uttar Pradesh', 116695, 100),(1283, 'Porbandar', 'IND', 'Gujarat', 116671, 100),(1284, 'Silchar', 'IND', 'Assam', 115483, 100),(
    1285,
    'Berhampore (Baharampur)',
    'IND',
    'West Bengali',
    115144,
    100
  ),(
    1286,
    'Purnea (Purnia)',
    'IND',
    'Jharkhand',
    114912,
    100
  ),(1287, 'Bankura', 'IND', 'West Bengali', 114876, 100),(
    1288,
    'Rajapalaiyam',
    'IND',
    'Tamil Nadu',
    114202,
    100
  ),(1289, 'Titagarh', 'IND', 'West Bengali', 114085, 100),(1290, 'Halisahar', 'IND', 'West Bengali', 114028, 100),(1291, 'Hathras', 'IND', 'Uttar Pradesh', 113285, 100),(1292, 'Bhir (Bid)', 'IND', 'Maharashtra', 112434, 100),(1293, 'Pallavaram', 'IND', 'Tamil Nadu', 111866, 100),(1294, 'Anand', 'IND', 'Gujarat', 110266, 100),(1295, 'Mango', 'IND', 'Jharkhand', 110024, 100),(1296, 'Santipur', 'IND', 'West Bengali', 109956, 100),(1297, 'Bhind', 'IND', 'Madhya Pradesh', 109755, 100),(1298, 'Gondiya', 'IND', 'Maharashtra', 109470, 100),(
    1299,
    'Tiruvannamalai',
    'IND',
    'Tamil Nadu',
    109196,
    100
  ),(
    1300,
    'Yeotmal (Yavatmal)',
    'IND',
    'Maharashtra',
    108578,
    100
  ),(
    1301,
    'Kulti-Barakar',
    'IND',
    'West Bengali',
    108518,
    100
  ),(1302, 'Moga', 'IND', 'Punjab', 108304, 100),(
    1303,
    'Shivapuri',
    'IND',
    'Madhya Pradesh',
    108277,
    100
  ),(1304, 'Bidar', 'IND', 'Karnataka', 108016, 100),(
    1305,
    'Guntakal',
    'IND',
    'Andhra Pradesh',
    107592,
    100
  ),(1306, 'Unnao', 'IND', 'Uttar Pradesh', 107425, 100),(1307, 'Barasat', 'IND', 'West Bengali', 107365, 100),(1308, 'Tambaram', 'IND', 'Tamil Nadu', 107187, 100),(1309, 'Abohar', 'IND', 'Punjab', 107163, 100),(1310, 'Pilibhit', 'IND', 'Uttar Pradesh', 106605, 100),(1311, 'Valparai', 'IND', 'Tamil Nadu', 106523, 100),(1312, 'Gonda', 'IND', 'Uttar Pradesh', 106078, 100),(1313, 'Surendranagar', 'IND', 'Gujarat', 105973, 100),(
    1314,
    'Qutubullapur',
    'IND',
    'Andhra Pradesh',
    105380,
    100
  ),(1315, 'Beawar', 'IND', 'Rajasthan', 105363, 100),(
    1316,
    'Hindupur',
    'IND',
    'Andhra Pradesh',
    104651,
    100
  ),(1317, 'Gandhidham', 'IND', 'Gujarat', 104585, 100),(
    1318,
    'Haldwani-cum-Kathgodam',
    'IND',
    'Uttaranchal',
    104195,
    100
  ),(
    1319,
    'Tellicherry (Thalassery)',
    'IND',
    'Kerala',
    103579,
    100
  ),(1320, 'Wardha', 'IND', 'Maharashtra', 102985, 100),(1321, 'Rishra', 'IND', 'West Bengali', 102649, 100),(1322, 'Bhuj', 'IND', 'Gujarat', 102176, 100),(
    1323,
    'Modinagar',
    'IND',
    'Uttar Pradesh',
    101660,
    100
  ),(
    1324,
    'Gudivada',
    'IND',
    'Andhra Pradesh',
    101656,
    100
  ),(1325, 'Basirhat', 'IND', 'West Bengali', 101409, 100),(
    1326,
    'Uttarpara-Kotrung',
    'IND',
    'West Bengali',
    100867,
    100
  ),(1327, 'Ongole', 'IND', 'Andhra Pradesh', 100836, 100),(
    1328,
    'North Barrackpur',
    'IND',
    'West Bengali',
    100513,
    100
  ),(1329, 'Guna', 'IND', 'Madhya Pradesh', 100490, 100),(1330, 'Haldia', 'IND', 'West Bengali', 100347, 100),(1331, 'Habra', 'IND', 'West Bengali', 100223, 100),(
    1332,
    'Kanchrapara',
    'IND',
    'West Bengali',
    100194,
    100
  ),(1333, 'Tonk', 'IND', 'Rajasthan', 100079, 100),(1334, 'Champdani', 'IND', 'West Bengali', 98818, 100),(1335, 'Orai', 'IND', 'Uttar Pradesh', 98640, 100),(1336, 'Pudukkottai', 'IND', 'Tamil Nadu', 98619, 100),(1337, 'Sasaram', 'IND', 'Bihar', 98220, 100),(1338, 'Hazaribag', 'IND', 'Jharkhand', 97712, 100),(
    1339,
    'Palayankottai',
    'IND',
    'Tamil Nadu',
    97662,
    100
  ),(1340, 'Banda', 'IND', 'Uttar Pradesh', 97227, 100),(1341, 'Godhra', 'IND', 'Gujarat', 96813, 100),(1342, 'Hospet', 'IND', 'Karnataka', 96322, 100),(
    1343,
    'Ashoknagar-Kalyangarh',
    'IND',
    'West Bengali',
    96315,
    100
  ),(1344, 'Achalpur', 'IND', 'Maharashtra', 96216, 100),(1345, 'Patan', 'IND', 'Gujarat', 96109, 100),(1346, 'Mandasor', 'IND', 'Madhya Pradesh', 95758, 100),(1347, 'Damoh', 'IND', 'Madhya Pradesh', 95661, 100),(1348, 'Satara', 'IND', 'Maharashtra', 95133, 100),(
    1349,
    'Meerut Cantonment',
    'IND',
    'Uttar Pradesh',
    94876,
    100
  ),(1350, 'Dehri', 'IND', 'Bihar', 94526, 100),(1351, 'Delhi Cantonment', 'IND', 'Delhi', 94326, 100),(
    1352,
    'Chhindwara',
    'IND',
    'Madhya Pradesh',
    93731,
    100
  ),(1353, 'Bansberia', 'IND', 'West Bengali', 93447, 100),(1354, 'Nagaon', 'IND', 'Assam', 93350, 100),(
    1355,
    'Kanpur Cantonment',
    'IND',
    'Uttar Pradesh',
    93109,
    100
  ),(1356, 'Vidisha', 'IND', 'Madhya Pradesh', 92917, 100),(1357, 'Bettiah', 'IND', 'Bihar', 92583, 100),(1358, 'Purulia', 'IND', 'Jharkhand', 92574, 100),(1359, 'Hassan', 'IND', 'Karnataka', 90803, 100),(1360, 'Ambala Sadar', 'IND', 'Haryana', 90712, 100),(1361, 'Baidyabati', 'IND', 'West Bengali', 90601, 100),(1362, 'Morvi', 'IND', 'Gujarat', 90357, 100),(1363, 'Raigarh', 'IND', 'Chhatisgarh', 89166, 100),(1364, 'Vejalpur', 'IND', 'Gujarat', 89053, 100),(1365, 'Baghdad', 'IRQ', 'Baghdad', 4336000, 104),(1366, 'Mosul', 'IRQ', 'Ninawa', 879000, 104),(1367, 'Irbil', 'IRQ', 'Irbil', 485968, 104),(1368, 'Kirkuk', 'IRQ', 'al-Tamim', 418624, 104),(1369, 'Basra', 'IRQ', 'Basra', 406296, 104),(
    1370,
    'al-Sulaymaniya',
    'IRQ',
    'al-Sulaymaniya',
    364096,
    104
  ),(1371, 'al-Najaf', 'IRQ', 'al-Najaf', 309010, 104),(1372, 'Karbala', 'IRQ', 'Karbala', 296705, 104),(1373, 'al-Hilla', 'IRQ', 'Babil', 268834, 104),(1374, 'al-Nasiriya', 'IRQ', 'DhiQar', 265937, 104),(1375, 'al-Amara', 'IRQ', 'Maysan', 208797, 104),(
    1376,
    'al-Diwaniya',
    'IRQ',
    'al-Qadisiya',
    196519,
    104
  ),(1377, 'al-Ramadi', 'IRQ', 'al-Anbar', 192556, 104),(1378, 'al-Kut', 'IRQ', 'Wasit', 183183, 104),(1379, 'Baquba', 'IRQ', 'Diyala', 114516, 104),(1380, 'Teheran', 'IRN', 'Teheran', 6758845, 103),(1381, 'Mashhad', 'IRN', 'Khorasan', 1887405, 103),(1382, 'Esfahan', 'IRN', 'Esfahan', 1266072, 103),(
    1383,
    'Tabriz',
    'IRN',
    'East Azerbaidzan',
    1191043,
    103
  ),(1384, 'Shiraz', 'IRN', 'Fars', 1053025, 103),(1385, 'Karaj', 'IRN', 'Teheran', 940968, 103),(1386, 'Ahvaz', 'IRN', 'Khuzestan', 804980, 103),(1387, 'Qom', 'IRN', 'Qom', 777677, 103),(1388, 'Kermanshah', 'IRN', 'Kermanshah', 692986, 103),(1389, 'Urmia', 'IRN', 'West Azerbaidzan', 435200, 103),(
    1390,
    'Zahedan',
    'IRN',
    'Sistan va Baluchesta',
    419518,
    103
  ),(1391, 'Rasht', 'IRN', 'Gilan', 417748, 103),(1392, 'Hamadan', 'IRN', 'Hamadan', 401281, 103),(1393, 'Kerman', 'IRN', 'Kerman', 384991, 103),(1394, 'Arak', 'IRN', 'Markazi', 380755, 103),(1395, 'Ardebil', 'IRN', 'Ardebil', 340386, 103),(1396, 'Yazd', 'IRN', 'Yazd', 326776, 103),(1397, 'Qazvin', 'IRN', 'Qazvin', 291117, 103),(1398, 'Zanjan', 'IRN', 'Zanjan', 286295, 103),(1399, 'Sanandaj', 'IRN', 'Kordestan', 277808, 103),(
    1400,
    'Bandar-e-Abbas',
    'IRN',
    'Hormozgan',
    273578,
    103
  ),(1401, 'Khorramabad', 'IRN', 'Lorestan', 272815, 103),(1402, 'Eslamshahr', 'IRN', 'Teheran', 265450, 103),(1403, 'Borujerd', 'IRN', 'Lorestan', 217804, 103),(1404, 'Abadan', 'IRN', 'Khuzestan', 206073, 103),(1405, 'Dezful', 'IRN', 'Khuzestan', 202639, 103),(1406, 'Kashan', 'IRN', 'Esfahan', 201372, 103),(1407, 'Sari', 'IRN', 'Mazandaran', 195882, 103),(1408, 'Gorgan', 'IRN', 'Golestan', 188710, 103),(1409, 'Najafabad', 'IRN', 'Esfahan', 178498, 103),(1410, 'Sabzevar', 'IRN', 'Khorasan', 170738, 103),(1411, 'Khomeynishahr', 'IRN', 'Esfahan', 165888, 103),(1412, 'Amol', 'IRN', 'Mazandaran', 159092, 103),(1413, 'Neyshabur', 'IRN', 'Khorasan', 158847, 103),(1414, 'Babol', 'IRN', 'Mazandaran', 158346, 103),(1415, 'Khoy', 'IRN', 'West Azerbaidzan', 148944, 103),(1416, 'Malayer', 'IRN', 'Hamadan', 144373, 103),(1417, 'Bushehr', 'IRN', 'Bushehr', 143641, 103),(1418, 'Qaemshahr', 'IRN', 'Mazandaran', 143286, 103),(1419, 'Qarchak', 'IRN', 'Teheran', 142690, 103),(1420, 'Qods', 'IRN', 'Teheran', 138278, 103),(1421, 'Sirjan', 'IRN', 'Kerman', 135024, 103),(1422, 'Bojnurd', 'IRN', 'Khorasan', 134835, 103),(
    1423,
    'Maragheh',
    'IRN',
    'East Azerbaidzan',
    132318,
    103
  ),(1424, 'Birjand', 'IRN', 'Khorasan', 127608, 103),(1425, 'Ilam', 'IRN', 'Ilam', 126346, 103),(1426, 'Bukan', 'IRN', 'West Azerbaidzan', 120020, 103),(
    1427,
    'Masjed-e-Soleyman',
    'IRN',
    'Khuzestan',
    116883,
    103
  ),(1428, 'Saqqez', 'IRN', 'Kordestan', 115394, 103),(
    1429,
    'Gonbad-e Qabus',
    'IRN',
    'Mazandaran',
    111253,
    103
  ),(1430, 'Saveh', 'IRN', 'Qom', 111245, 103),(
    1431,
    'Mahabad',
    'IRN',
    'West Azerbaidzan',
    107799,
    103
  ),(1432, 'Varamin', 'IRN', 'Teheran', 107233, 103),(1433, 'Andimeshk', 'IRN', 'Khuzestan', 106923, 103),(1434, 'Khorramshahr', 'IRN', 'Khuzestan', 105636, 103),(1435, 'Shahrud', 'IRN', 'Semnan', 104765, 103),(1436, 'Marv Dasht', 'IRN', 'Fars', 103579, 103),(
    1437,
    'Zabol',
    'IRN',
    'Sistan va Baluchesta',
    100887,
    103
  ),(
    1438,
    'Shahr-e Kord',
    'IRN',
    'Chaharmahal va Bakht',
    100477,
    103
  ),(1439, 'Bandar-e Anzali', 'IRN', 'Gilan', 98500, 103),(1440, 'Rafsanjan', 'IRN', 'Kerman', 98300, 103),(1441, 'Marand', 'IRN', 'East Azerbaidzan', 96400, 103),(
    1442,
    'Torbat-e Heydariyeh',
    'IRN',
    'Khorasan',
    94600,
    103
  ),(1443, 'Jahrom', 'IRN', 'Fars', 94200, 103),(1444, 'Semnan', 'IRN', 'Semnan', 91045, 103),(
    1445,
    'Miandoab',
    'IRN',
    'West Azerbaidzan',
    90100,
    103
  ),(1446, 'Qomsheh', 'IRN', 'Esfahan', 89800, 103),(1447, 'Dublin', 'IRL', 'Leinster', 481854, 102),(1448, 'Cork', 'IRL', 'Munster', 127187, 102),(
    1449,
    'ReykjavÃ­k',
    'ISL',
    'HÃ¶fuÃ°borgarsvÃ¦Ã°i',
    109184,
    105
  ),(1450, 'Jerusalem', 'ISR', 'Jerusalem', 633700, 106),(
    1451,
    'Tel Aviv-Jaffa',
    'ISR',
    'Tel Aviv',
    348100,
    106
  ),(1452, 'Haifa', 'ISR', 'Haifa', 265700, 106),(
    1453,
    'Rishon Le Ziyyon',
    'ISR',
    'Ha Merkaz',
    188200,
    106
  ),(1454, 'Beerseba', 'ISR', 'Ha Darom', 163700, 106),(1455, 'Holon', 'ISR', 'Tel Aviv', 163100, 106),(1456, 'Petah Tiqwa', 'ISR', 'Ha Merkaz', 159400, 106),(1457, 'Ashdod', 'ISR', 'Ha Darom', 155800, 106),(1458, 'Netanya', 'ISR', 'Ha Merkaz', 154900, 106),(1459, 'Bat Yam', 'ISR', 'Tel Aviv', 137000, 106),(1460, 'Bene Beraq', 'ISR', 'Tel Aviv', 133900, 106),(1461, 'Ramat Gan', 'ISR', 'Tel Aviv', 126900, 106),(1462, 'Ashqelon', 'ISR', 'Ha Darom', 92300, 106),(1463, 'Rehovot', 'ISR', 'Ha Merkaz', 90300, 106),(1464, 'Roma', 'ITA', 'Latium', 2643581, 107),(1465, 'Milano', 'ITA', 'Lombardia', 1300977, 107),(1466, 'Napoli', 'ITA', 'Campania', 1002619, 107),(1467, 'Torino', 'ITA', 'Piemonte', 903705, 107),(1468, 'Palermo', 'ITA', 'Sisilia', 683794, 107),(1469, 'Genova', 'ITA', 'Liguria', 636104, 107),(1470, 'Bologna', 'ITA', 'Emilia-Romagna', 381161, 107),(1471, 'Firenze', 'ITA', 'Toscana', 376662, 107),(1472, 'Catania', 'ITA', 'Sisilia', 337862, 107),(1473, 'Bari', 'ITA', 'Apulia', 331848, 107),(1474, 'Venezia', 'ITA', 'Veneto', 277305, 107),(1475, 'Messina', 'ITA', 'Sisilia', 259156, 107),(1476, 'Verona', 'ITA', 'Veneto', 255268, 107),(
    1477,
    'Trieste',
    'ITA',
    'Friuli-Venezia Giuli',
    216459,
    107
  ),(1478, 'Padova', 'ITA', 'Veneto', 211391, 107),(1479, 'Taranto', 'ITA', 'Apulia', 208214, 107),(1480, 'Brescia', 'ITA', 'Lombardia', 191317, 107),(
    1481,
    'Reggio di Calabria',
    'ITA',
    'Calabria',
    179617,
    107
  ),(1482, 'Modena', 'ITA', 'Emilia-Romagna', 176022, 107),(1483, 'Prato', 'ITA', 'Toscana', 172473, 107),(1484, 'Parma', 'ITA', 'Emilia-Romagna', 168717, 107),(1485, 'Cagliari', 'ITA', 'Sardinia', 165926, 107),(1486, 'Livorno', 'ITA', 'Toscana', 161673, 107),(1487, 'Perugia', 'ITA', 'Umbria', 156673, 107),(1488, 'Foggia', 'ITA', 'Apulia', 154891, 107),(
    1489,
    'Reggio nellÂ´ Emilia',
    'ITA',
    'Emilia-Romagna',
    143664,
    107
  ),(1490, 'Salerno', 'ITA', 'Campania', 142055, 107),(1491, 'Ravenna', 'ITA', 'Emilia-Romagna', 138418, 107),(1492, 'Ferrara', 'ITA', 'Emilia-Romagna', 132127, 107),(1493, 'Rimini', 'ITA', 'Emilia-Romagna', 131062, 107),(1494, 'Syrakusa', 'ITA', 'Sisilia', 126282, 107),(1495, 'Sassari', 'ITA', 'Sardinia', 120803, 107),(1496, 'Monza', 'ITA', 'Lombardia', 119516, 107),(1497, 'Bergamo', 'ITA', 'Lombardia', 117837, 107),(1498, 'Pescara', 'ITA', 'Abruzzit', 115698, 107),(1499, 'Latina', 'ITA', 'Latium', 114099, 107),(1500, 'Vicenza', 'ITA', 'Veneto', 109738, 107),(1501, 'Terni', 'ITA', 'Umbria', 107770, 107),(1502, 'ForlÃ¬', 'ITA', 'Emilia-Romagna', 107475, 107),(
    1503,
    'Trento',
    'ITA',
    'Trentino-Alto Adige',
    104906,
    107
  ),(1504, 'Novara', 'ITA', 'Piemonte', 102037, 107),(1505, 'Piacenza', 'ITA', 'Emilia-Romagna', 98384, 107),(1506, 'Ancona', 'ITA', 'Marche', 98329, 107),(1507, 'Lecce', 'ITA', 'Apulia', 98208, 107),(
    1508,
    'Bolzano',
    'ITA',
    'Trentino-Alto Adige',
    97232,
    107
  ),(1509, 'Catanzaro', 'ITA', 'Calabria', 96700, 107),(1510, 'La Spezia', 'ITA', 'Liguria', 95504, 107),(
    1511,
    'Udine',
    'ITA',
    'Friuli-Venezia Giuli',
    94932,
    107
  ),(
    1512,
    'Torre del Greco',
    'ITA',
    'Campania',
    94505,
    107
  ),(1513, 'Andria', 'ITA', 'Apulia', 94443, 107),(1514, 'Brindisi', 'ITA', 'Apulia', 93454, 107),(
    1515,
    'Giugliano in Campania',
    'ITA',
    'Campania',
    93286,
    107
  ),(1516, 'Pisa', 'ITA', 'Toscana', 92379, 107),(1517, 'Barletta', 'ITA', 'Apulia', 91904, 107),(1518, 'Arezzo', 'ITA', 'Toscana', 91729, 107),(1519, 'Alessandria', 'ITA', 'Piemonte', 90289, 107),(1520, 'Cesena', 'ITA', 'Emilia-Romagna', 89852, 107),(1521, 'Pesaro', 'ITA', 'Marche', 88987, 107),(1522, 'Dili', 'TMP', 'Dili', 47900, 212),(1523, 'Wien', 'AUT', 'Wien', 1608144, 16),(1524, 'Graz', 'AUT', 'Steiermark', 240967, 16),(1525, 'Linz', 'AUT', 'North Austria', 188022, 16),(1526, 'Salzburg', 'AUT', 'Salzburg', 144247, 16),(1527, 'Innsbruck', 'AUT', 'Tiroli', 111752, 16),(1528, 'Klagenfurt', 'AUT', 'KÃ¤rnten', 91141, 16),(
    1529,
    'Spanish Town',
    'JAM',
    'St. Catherine',
    110379,
    108
  ),(1530, 'Kingston', 'JAM', 'St. Andrew', 103962, 108),(1531, 'Portmore', 'JAM', 'St. Andrew', 99799, 108),(1532, 'Tokyo', 'JPN', 'Tokyo-to', 7980230, 110),(
    1533,
    'Jokohama [Yokohama]',
    'JPN',
    'Kanagawa',
    3339594,
    110
  ),(1534, 'Osaka', 'JPN', 'Osaka', 2595674, 110),(1535, 'Nagoya', 'JPN', 'Aichi', 2154376, 110),(1536, 'Sapporo', 'JPN', 'Hokkaido', 1790886, 110),(1537, 'Kioto', 'JPN', 'Kyoto', 1461974, 110),(1538, 'Kobe', 'JPN', 'Hyogo', 1425139, 110),(1539, 'Fukuoka', 'JPN', 'Fukuoka', 1308379, 110),(1540, 'Kawasaki', 'JPN', 'Kanagawa', 1217359, 110),(1541, 'Hiroshima', 'JPN', 'Hiroshima', 1119117, 110),(1542, 'Kitakyushu', 'JPN', 'Fukuoka', 1016264, 110),(1543, 'Sendai', 'JPN', 'Miyagi', 989975, 110),(1544, 'Chiba', 'JPN', 'Chiba', 863930, 110),(1545, 'Sakai', 'JPN', 'Osaka', 797735, 110),(1546, 'Kumamoto', 'JPN', 'Kumamoto', 656734, 110),(1547, 'Okayama', 'JPN', 'Okayama', 624269, 110),(1548, 'Sagamihara', 'JPN', 'Kanagawa', 586300, 110),(1549, 'Hamamatsu', 'JPN', 'Shizuoka', 568796, 110),(1550, 'Kagoshima', 'JPN', 'Kagoshima', 549977, 110),(1551, 'Funabashi', 'JPN', 'Chiba', 545299, 110),(1552, 'Higashiosaka', 'JPN', 'Osaka', 517785, 110),(1553, 'Hachioji', 'JPN', 'Tokyo-to', 513451, 110),(1554, 'Niigata', 'JPN', 'Niigata', 497464, 110),(1555, 'Amagasaki', 'JPN', 'Hyogo', 481434, 110),(1556, 'Himeji', 'JPN', 'Hyogo', 475167, 110),(1557, 'Shizuoka', 'JPN', 'Shizuoka', 473854, 110),(1558, 'Urawa', 'JPN', 'Saitama', 469675, 110),(1559, 'Matsuyama', 'JPN', 'Ehime', 466133, 110),(1560, 'Matsudo', 'JPN', 'Chiba', 461126, 110),(1561, 'Kanazawa', 'JPN', 'Ishikawa', 455386, 110),(1562, 'Kawaguchi', 'JPN', 'Saitama', 452155, 110),(1563, 'Ichikawa', 'JPN', 'Chiba', 441893, 110),(1564, 'Omiya', 'JPN', 'Saitama', 441649, 110),(1565, 'Utsunomiya', 'JPN', 'Tochigi', 440353, 110),(1566, 'Oita', 'JPN', 'Oita', 433401, 110),(1567, 'Nagasaki', 'JPN', 'Nagasaki', 432759, 110),(1568, 'Yokosuka', 'JPN', 'Kanagawa', 430200, 110),(1569, 'Kurashiki', 'JPN', 'Okayama', 425103, 110),(1570, 'Gifu', 'JPN', 'Gifu', 408007, 110),(1571, 'Hirakata', 'JPN', 'Osaka', 403151, 110),(1572, 'Nishinomiya', 'JPN', 'Hyogo', 397618, 110),(1573, 'Toyonaka', 'JPN', 'Osaka', 396689, 110),(1574, 'Wakayama', 'JPN', 'Wakayama', 391233, 110),(1575, 'Fukuyama', 'JPN', 'Hiroshima', 376921, 110),(1576, 'Fujisawa', 'JPN', 'Kanagawa', 372840, 110),(1577, 'Asahikawa', 'JPN', 'Hokkaido', 364813, 110),(1578, 'Machida', 'JPN', 'Tokyo-to', 364197, 110),(1579, 'Nara', 'JPN', 'Nara', 362812, 110),(1580, 'Takatsuki', 'JPN', 'Osaka', 361747, 110),(1581, 'Iwaki', 'JPN', 'Fukushima', 361737, 110),(1582, 'Nagano', 'JPN', 'Nagano', 361391, 110),(1583, 'Toyohashi', 'JPN', 'Aichi', 360066, 110),(1584, 'Toyota', 'JPN', 'Aichi', 346090, 110),(1585, 'Suita', 'JPN', 'Osaka', 345750, 110),(1586, 'Takamatsu', 'JPN', 'Kagawa', 332471, 110),(1587, 'Koriyama', 'JPN', 'Fukushima', 330335, 110),(1588, 'Okazaki', 'JPN', 'Aichi', 328711, 110),(1589, 'Kawagoe', 'JPN', 'Saitama', 327211, 110),(1590, 'Tokorozawa', 'JPN', 'Saitama', 325809, 110),(1591, 'Toyama', 'JPN', 'Toyama', 325790, 110),(1592, 'Kochi', 'JPN', 'Kochi', 324710, 110),(1593, 'Kashiwa', 'JPN', 'Chiba', 320296, 110),(1594, 'Akita', 'JPN', 'Akita', 314440, 110),(1595, 'Miyazaki', 'JPN', 'Miyazaki', 303784, 110),(1596, 'Koshigaya', 'JPN', 'Saitama', 301446, 110),(1597, 'Naha', 'JPN', 'Okinawa', 299851, 110),(1598, 'Aomori', 'JPN', 'Aomori', 295969, 110),(1599, 'Hakodate', 'JPN', 'Hokkaido', 294788, 110),(1600, 'Akashi', 'JPN', 'Hyogo', 292253, 110),(1601, 'Yokkaichi', 'JPN', 'Mie', 288173, 110),(1602, 'Fukushima', 'JPN', 'Fukushima', 287525, 110),(1603, 'Morioka', 'JPN', 'Iwate', 287353, 110),(1604, 'Maebashi', 'JPN', 'Gumma', 284473, 110),(1605, 'Kasugai', 'JPN', 'Aichi', 282348, 110),(1606, 'Otsu', 'JPN', 'Shiga', 282070, 110),(1607, 'Ichihara', 'JPN', 'Chiba', 279280, 110),(1608, 'Yao', 'JPN', 'Osaka', 276421, 110),(1609, 'Ichinomiya', 'JPN', 'Aichi', 270828, 110),(1610, 'Tokushima', 'JPN', 'Tokushima', 269649, 110),(1611, 'Kakogawa', 'JPN', 'Hyogo', 266281, 110),(1612, 'Ibaraki', 'JPN', 'Osaka', 261020, 110),(1613, 'Neyagawa', 'JPN', 'Osaka', 257315, 110),(1614, 'Shimonoseki', 'JPN', 'Yamaguchi', 257263, 110),(1615, 'Yamagata', 'JPN', 'Yamagata', 255617, 110),(1616, 'Fukui', 'JPN', 'Fukui', 254818, 110),(1617, 'Hiratsuka', 'JPN', 'Kanagawa', 254207, 110),(1618, 'Mito', 'JPN', 'Ibaragi', 246559, 110),(1619, 'Sasebo', 'JPN', 'Nagasaki', 244240, 110),(1620, 'Hachinohe', 'JPN', 'Aomori', 242979, 110),(1621, 'Takasaki', 'JPN', 'Gumma', 239124, 110),(1622, 'Shimizu', 'JPN', 'Shizuoka', 239123, 110),(1623, 'Kurume', 'JPN', 'Fukuoka', 235611, 110),(1624, 'Fuji', 'JPN', 'Shizuoka', 231527, 110),(1625, 'Soka', 'JPN', 'Saitama', 222768, 110),(1626, 'Fuchu', 'JPN', 'Tokyo-to', 220576, 110),(1627, 'Chigasaki', 'JPN', 'Kanagawa', 216015, 110),(1628, 'Atsugi', 'JPN', 'Kanagawa', 212407, 110),(1629, 'Numazu', 'JPN', 'Shizuoka', 211382, 110),(1630, 'Ageo', 'JPN', 'Saitama', 209442, 110),(1631, 'Yamato', 'JPN', 'Kanagawa', 208234, 110),(1632, 'Matsumoto', 'JPN', 'Nagano', 206801, 110),(1633, 'Kure', 'JPN', 'Hiroshima', 206504, 110),(1634, 'Takarazuka', 'JPN', 'Hyogo', 205993, 110),(1635, 'Kasukabe', 'JPN', 'Saitama', 201838, 110),(1636, 'Chofu', 'JPN', 'Tokyo-to', 201585, 110),(1637, 'Odawara', 'JPN', 'Kanagawa', 200171, 110),(1638, 'Kofu', 'JPN', 'Yamanashi', 199753, 110),(1639, 'Kushiro', 'JPN', 'Hokkaido', 197608, 110),(1640, 'Kishiwada', 'JPN', 'Osaka', 197276, 110),(1641, 'Hitachi', 'JPN', 'Ibaragi', 196622, 110),(1642, 'Nagaoka', 'JPN', 'Niigata', 192407, 110),(1643, 'Itami', 'JPN', 'Hyogo', 190886, 110),(1644, 'Uji', 'JPN', 'Kyoto', 188735, 110),(1645, 'Suzuka', 'JPN', 'Mie', 184061, 110),(1646, 'Hirosaki', 'JPN', 'Aomori', 177522, 110),(1647, 'Ube', 'JPN', 'Yamaguchi', 175206, 110),(1648, 'Kodaira', 'JPN', 'Tokyo-to', 174984, 110),(1649, 'Takaoka', 'JPN', 'Toyama', 174380, 110),(1650, 'Obihiro', 'JPN', 'Hokkaido', 173685, 110),(1651, 'Tomakomai', 'JPN', 'Hokkaido', 171958, 110),(1652, 'Saga', 'JPN', 'Saga', 170034, 110),(1653, 'Sakura', 'JPN', 'Chiba', 168072, 110),(1654, 'Kamakura', 'JPN', 'Kanagawa', 167661, 110),(1655, 'Mitaka', 'JPN', 'Tokyo-to', 167268, 110),(1656, 'Izumi', 'JPN', 'Osaka', 166979, 110),(1657, 'Hino', 'JPN', 'Tokyo-to', 166770, 110),(1658, 'Hadano', 'JPN', 'Kanagawa', 166512, 110),(1659, 'Ashikaga', 'JPN', 'Tochigi', 165243, 110),(1660, 'Tsu', 'JPN', 'Mie', 164543, 110),(1661, 'Sayama', 'JPN', 'Saitama', 162472, 110),(1662, 'Yachiyo', 'JPN', 'Chiba', 161222, 110),(1663, 'Tsukuba', 'JPN', 'Ibaragi', 160768, 110),(1664, 'Tachikawa', 'JPN', 'Tokyo-to', 159430, 110),(1665, 'Kumagaya', 'JPN', 'Saitama', 157171, 110),(1666, 'Moriguchi', 'JPN', 'Osaka', 155941, 110),(1667, 'Otaru', 'JPN', 'Hokkaido', 155784, 110),(1668, 'Anjo', 'JPN', 'Aichi', 153823, 110),(1669, 'Narashino', 'JPN', 'Chiba', 152849, 110),(1670, 'Oyama', 'JPN', 'Tochigi', 152820, 110),(1671, 'Ogaki', 'JPN', 'Gifu', 151758, 110),(1672, 'Matsue', 'JPN', 'Shimane', 149821, 110),(1673, 'Kawanishi', 'JPN', 'Hyogo', 149794, 110),(1674, 'Hitachinaka', 'JPN', 'Tokyo-to', 148006, 110),(1675, 'Niiza', 'JPN', 'Saitama', 147744, 110),(1676, 'Nagareyama', 'JPN', 'Chiba', 147738, 110),(1677, 'Tottori', 'JPN', 'Tottori', 147523, 110),(1678, 'Tama', 'JPN', 'Ibaragi', 146712, 110),(1679, 'Iruma', 'JPN', 'Saitama', 145922, 110),(1680, 'Ota', 'JPN', 'Gumma', 145317, 110),(1681, 'Omuta', 'JPN', 'Fukuoka', 142889, 110),(1682, 'Komaki', 'JPN', 'Aichi', 139827, 110),(1683, 'Ome', 'JPN', 'Tokyo-to', 139216, 110),(1684, 'Kadoma', 'JPN', 'Osaka', 138953, 110),(1685, 'Yamaguchi', 'JPN', 'Yamaguchi', 138210, 110),(
    1686,
    'Higashimurayama',
    'JPN',
    'Tokyo-to',
    136970,
    110
  ),(1687, 'Yonago', 'JPN', 'Tottori', 136461, 110),(1688, 'Matsubara', 'JPN', 'Osaka', 135010, 110),(1689, 'Musashino', 'JPN', 'Tokyo-to', 134426, 110),(1690, 'Tsuchiura', 'JPN', 'Ibaragi', 134072, 110),(1691, 'Joetsu', 'JPN', 'Niigata', 133505, 110),(1692, 'Miyakonojo', 'JPN', 'Miyazaki', 133183, 110),(1693, 'Misato', 'JPN', 'Saitama', 132957, 110),(1694, 'Kakamigahara', 'JPN', 'Gifu', 131831, 110),(1695, 'Daito', 'JPN', 'Osaka', 130594, 110),(1696, 'Seto', 'JPN', 'Aichi', 130470, 110),(1697, 'Kariya', 'JPN', 'Aichi', 127969, 110),(1698, 'Urayasu', 'JPN', 'Chiba', 127550, 110),(1699, 'Beppu', 'JPN', 'Oita', 127486, 110),(1700, 'Niihama', 'JPN', 'Ehime', 127207, 110),(1701, 'Minoo', 'JPN', 'Osaka', 127026, 110),(1702, 'Fujieda', 'JPN', 'Shizuoka', 126897, 110),(1703, 'Abiko', 'JPN', 'Chiba', 126670, 110),(1704, 'Nobeoka', 'JPN', 'Miyazaki', 125547, 110),(1705, 'Tondabayashi', 'JPN', 'Osaka', 125094, 110),(1706, 'Ueda', 'JPN', 'Nagano', 124217, 110),(1707, 'Kashihara', 'JPN', 'Nara', 124013, 110),(1708, 'Matsusaka', 'JPN', 'Mie', 123582, 110),(1709, 'Isesaki', 'JPN', 'Gumma', 123285, 110),(1710, 'Zama', 'JPN', 'Kanagawa', 122046, 110),(1711, 'Kisarazu', 'JPN', 'Chiba', 121967, 110),(1712, 'Noda', 'JPN', 'Chiba', 121030, 110),(1713, 'Ishinomaki', 'JPN', 'Miyagi', 120963, 110),(1714, 'Fujinomiya', 'JPN', 'Shizuoka', 119714, 110),(1715, 'Kawachinagano', 'JPN', 'Osaka', 119666, 110),(1716, 'Imabari', 'JPN', 'Ehime', 119357, 110),(
    1717,
    'Aizuwakamatsu',
    'JPN',
    'Fukushima',
    119287,
    110
  ),(
    1718,
    'Higashihiroshima',
    'JPN',
    'Hiroshima',
    119166,
    110
  ),(1719, 'Habikino', 'JPN', 'Osaka', 118968, 110),(1720, 'Ebetsu', 'JPN', 'Hokkaido', 118805, 110),(1721, 'Hofu', 'JPN', 'Yamaguchi', 118751, 110),(1722, 'Kiryu', 'JPN', 'Gumma', 118326, 110),(1723, 'Okinawa', 'JPN', 'Okinawa', 117748, 110),(1724, 'Yaizu', 'JPN', 'Shizuoka', 117258, 110),(1725, 'Toyokawa', 'JPN', 'Aichi', 115781, 110),(1726, 'Ebina', 'JPN', 'Kanagawa', 115571, 110),(1727, 'Asaka', 'JPN', 'Saitama', 114815, 110),(1728, 'Higashikurume', 'JPN', 'Tokyo-to', 111666, 110),(1729, 'Ikoma', 'JPN', 'Nara', 111645, 110),(1730, 'Kitami', 'JPN', 'Hokkaido', 111295, 110),(1731, 'Koganei', 'JPN', 'Tokyo-to', 110969, 110),(1732, 'Iwatsuki', 'JPN', 'Saitama', 110034, 110),(1733, 'Mishima', 'JPN', 'Shizuoka', 109699, 110),(1734, 'Handa', 'JPN', 'Aichi', 108600, 110),(1735, 'Muroran', 'JPN', 'Hokkaido', 108275, 110),(1736, 'Komatsu', 'JPN', 'Ishikawa', 107937, 110),(1737, 'Yatsushiro', 'JPN', 'Kumamoto', 107661, 110),(1738, 'Iida', 'JPN', 'Nagano', 107583, 110),(1739, 'Tokuyama', 'JPN', 'Yamaguchi', 107078, 110),(1740, 'Kokubunji', 'JPN', 'Tokyo-to', 106996, 110),(1741, 'Akishima', 'JPN', 'Tokyo-to', 106914, 110),(1742, 'Iwakuni', 'JPN', 'Yamaguchi', 106647, 110),(1743, 'Kusatsu', 'JPN', 'Shiga', 106232, 110),(1744, 'Kuwana', 'JPN', 'Mie', 106121, 110),(1745, 'Sanda', 'JPN', 'Hyogo', 105643, 110),(1746, 'Hikone', 'JPN', 'Shiga', 105508, 110),(1747, 'Toda', 'JPN', 'Saitama', 103969, 110),(1748, 'Tajimi', 'JPN', 'Gifu', 103171, 110),(1749, 'Ikeda', 'JPN', 'Osaka', 102710, 110),(1750, 'Fukaya', 'JPN', 'Saitama', 102156, 110),(1751, 'Ise', 'JPN', 'Mie', 101732, 110),(1752, 'Sakata', 'JPN', 'Yamagata', 101651, 110),(1753, 'Kasuga', 'JPN', 'Fukuoka', 101344, 110),(1754, 'Kamagaya', 'JPN', 'Chiba', 100821, 110),(1755, 'Tsuruoka', 'JPN', 'Yamagata', 100713, 110),(1756, 'Hoya', 'JPN', 'Tokyo-to', 100313, 110),(1757, 'Nishio', 'JPN', 'Chiba', 100032, 110),(1758, 'Tokai', 'JPN', 'Aichi', 99738, 110),(1759, 'Inazawa', 'JPN', 'Aichi', 98746, 110),(1760, 'Sakado', 'JPN', 'Saitama', 98221, 110),(1761, 'Isehara', 'JPN', 'Kanagawa', 98123, 110),(1762, 'Takasago', 'JPN', 'Hyogo', 97632, 110),(1763, 'Fujimi', 'JPN', 'Saitama', 96972, 110),(1764, 'Urasoe', 'JPN', 'Okinawa', 96002, 110),(1765, 'Yonezawa', 'JPN', 'Yamagata', 95592, 110),(1766, 'Konan', 'JPN', 'Aichi', 95521, 110),(1767, 'Yamatokoriyama', 'JPN', 'Nara', 95165, 110),(1768, 'Maizuru', 'JPN', 'Kyoto', 94784, 110),(1769, 'Onomichi', 'JPN', 'Hiroshima', 93756, 110),(
    1770,
    'Higashimatsuyama',
    'JPN',
    'Saitama',
    93342,
    110
  ),(1771, 'Kimitsu', 'JPN', 'Chiba', 93216, 110),(1772, 'Isahaya', 'JPN', 'Nagasaki', 93058, 110),(1773, 'Kanuma', 'JPN', 'Tochigi', 93053, 110),(1774, 'Izumisano', 'JPN', 'Osaka', 92583, 110),(1775, 'Kameoka', 'JPN', 'Kyoto', 92398, 110),(1776, 'Mobara', 'JPN', 'Chiba', 91664, 110),(1777, 'Narita', 'JPN', 'Chiba', 91470, 110),(1778, 'Kashiwazaki', 'JPN', 'Niigata', 91229, 110),(1779, 'Tsuyama', 'JPN', 'Okayama', 91170, 110),(1780, 'Sanaa', 'YEM', 'Sanaa', 503600, 235),(1781, 'Aden', 'YEM', 'Aden', 398300, 235),(1782, 'Taizz', 'YEM', 'Taizz', 317600, 235),(1783, 'Hodeida', 'YEM', 'Hodeida', 298500, 235),(1784, 'al-Mukalla', 'YEM', 'Hadramawt', 122400, 235),(1785, 'Ibb', 'YEM', 'Ibb', 103300, 235),(1786, 'Amman', 'JOR', 'Amman', 1000000, 109),(1787, 'al-Zarqa', 'JOR', 'al-Zarqa', 389815, 109),(1788, 'Irbid', 'JOR', 'Irbid', 231511, 109),(1789, 'al-Rusayfa', 'JOR', 'al-Zarqa', 137247, 109),(1790, 'Wadi al-Sir', 'JOR', 'Amman', 89104, 109),(1791, 'Flying Fish Cove', 'CXR', 'Â–', 700, 53),(
    1792,
    'Beograd',
    'YUG',
    'Central Serbia',
    1204000,
    236
  ),(1793, 'Novi Sad', 'YUG', 'Vojvodina', 179626, 236),(1794, 'NiÂš', 'YUG', 'Central Serbia', 175391, 236),(
    1795,
    'PriÂština',
    'YUG',
    'Kosovo and Metohija',
    155496,
    236
  ),(
    1796,
    'Kragujevac',
    'YUG',
    'Central Serbia',
    147305,
    236
  ),(1797, 'Podgorica', 'YUG', 'Montenegro', 135000, 236),(1798, 'Subotica', 'YUG', 'Vojvodina', 100386, 236),(
    1799,
    'Prizren',
    'YUG',
    'Kosovo and Metohija',
    92303,
    236
  ),(1800, 'Phnom Penh', 'KHM', 'Phnom Penh', 570155, 114),(1801, 'Battambang', 'KHM', 'Battambang', 129800, 114),(1802, 'Siem Reap', 'KHM', 'Siem Reap', 105100, 114),(1803, 'Douala', 'CMR', 'Littoral', 1448300, 44),(1804, 'YaoundÃ©', 'CMR', 'Centre', 1372800, 44),(1805, 'Garoua', 'CMR', 'Nord', 177000, 44),(1806, 'Maroua', 'CMR', 'ExtrÃªme-Nord', 143000, 44),(1807, 'Bamenda', 'CMR', 'Nord-Ouest', 138000, 44),(1808, 'Bafoussam', 'CMR', 'Ouest', 131000, 44),(1809, 'Nkongsamba', 'CMR', 'Littoral', 112454, 44),(1810, 'MontrÃ©al', 'CAN', 'QuÃ©bec', 1016376, 38),(1811, 'Calgary', 'CAN', 'Alberta', 768082, 38),(1812, 'Toronto', 'CAN', 'Ontario', 688275, 38),(1813, 'North York', 'CAN', 'Ontario', 622632, 38),(1814, 'Winnipeg', 'CAN', 'Manitoba', 618477, 38),(1815, 'Edmonton', 'CAN', 'Alberta', 616306, 38),(1816, 'Mississauga', 'CAN', 'Ontario', 608072, 38),(1817, 'Scarborough', 'CAN', 'Ontario', 594501, 38),(
    1818,
    'Vancouver',
    'CAN',
    'British Colombia',
    514008,
    38
  ),(1819, 'Etobicoke', 'CAN', 'Ontario', 348845, 38),(1820, 'London', 'CAN', 'Ontario', 339917, 38),(1821, 'Hamilton', 'CAN', 'Ontario', 335614, 38),(1822, 'Ottawa', 'CAN', 'Ontario', 335277, 38),(1823, 'Laval', 'CAN', 'QuÃ©bec', 330393, 38),(1824, 'Surrey', 'CAN', 'British Colombia', 304477, 38),(1825, 'Brampton', 'CAN', 'Ontario', 296711, 38),(1826, 'Windsor', 'CAN', 'Ontario', 207588, 38),(1827, 'Saskatoon', 'CAN', 'Saskatchewan', 193647, 38),(1828, 'Kitchener', 'CAN', 'Ontario', 189959, 38),(1829, 'Markham', 'CAN', 'Ontario', 189098, 38),(1830, 'Regina', 'CAN', 'Saskatchewan', 180400, 38),(
    1831,
    'Burnaby',
    'CAN',
    'British Colombia',
    179209,
    38
  ),(1832, 'QuÃ©bec', 'CAN', 'QuÃ©bec', 167264, 38),(1833, 'York', 'CAN', 'Ontario', 154980, 38),(
    1834,
    'Richmond',
    'CAN',
    'British Colombia',
    148867,
    38
  ),(1835, 'Vaughan', 'CAN', 'Ontario', 147889, 38),(1836, 'Burlington', 'CAN', 'Ontario', 145150, 38),(1837, 'Oshawa', 'CAN', 'Ontario', 140173, 38),(1838, 'Oakville', 'CAN', 'Ontario', 139192, 38),(
    1839,
    'Saint Catharines',
    'CAN',
    'Ontario',
    136216,
    38
  ),(1840, 'Longueuil', 'CAN', 'QuÃ©bec', 127977, 38),(1841, 'Richmond Hill', 'CAN', 'Ontario', 116428, 38),(1842, 'Thunder Bay', 'CAN', 'Ontario', 115913, 38),(1843, 'Nepean', 'CAN', 'Ontario', 115100, 38),(1844, 'Cape Breton', 'CAN', 'Nova Scotia', 114733, 38),(1845, 'East York', 'CAN', 'Ontario', 114034, 38),(1846, 'Halifax', 'CAN', 'Nova Scotia', 113910, 38),(1847, 'Cambridge', 'CAN', 'Ontario', 109186, 38),(1848, 'Gloucester', 'CAN', 'Ontario', 107314, 38),(
    1849,
    'Abbotsford',
    'CAN',
    'British Colombia',
    105403,
    38
  ),(1850, 'Guelph', 'CAN', 'Ontario', 103593, 38),(
    1851,
    'Saint JohnÂ´s',
    'CAN',
    'Newfoundland',
    101936,
    38
  ),(
    1852,
    'Coquitlam',
    'CAN',
    'British Colombia',
    101820,
    38
  ),(
    1853,
    'Saanich',
    'CAN',
    'British Colombia',
    101388,
    38
  ),(1854, 'Gatineau', 'CAN', 'QuÃ©bec', 100702, 38),(1855, 'Delta', 'CAN', 'British Colombia', 95411, 38),(1856, 'Sudbury', 'CAN', 'Ontario', 92686, 38),(1857, 'Kelowna', 'CAN', 'British Colombia', 89442, 38),(1858, 'Barrie', 'CAN', 'Ontario', 89269, 38),(1859, 'Praia', 'CPV', 'SÃ£o Tiago', 94800, 50),(1860, 'Almaty', 'KAZ', 'Almaty Qalasy', 1129400, 111),(1861, 'Qaraghandy', 'KAZ', 'Qaraghandy', 436900, 111),(
    1862,
    'Shymkent',
    'KAZ',
    'South Kazakstan',
    360100,
    111
  ),(1863, 'Taraz', 'KAZ', 'Taraz', 330100, 111),(1864, 'Astana', 'KAZ', 'Astana', 311200, 111),(
    1865,
    'Ã–skemen',
    'KAZ',
    'East Kazakstan',
    311000,
    111
  ),(1866, 'Pavlodar', 'KAZ', 'Pavlodar', 300500, 111),(1867, 'Semey', 'KAZ', 'East Kazakstan', 269600, 111),(1868, 'AqtÃ¶be', 'KAZ', 'AqtÃ¶be', 253100, 111),(1869, 'Qostanay', 'KAZ', 'Qostanay', 221400, 111),(
    1870,
    'Petropavl',
    'KAZ',
    'North Kazakstan',
    203500,
    111
  ),(1871, 'Oral', 'KAZ', 'West Kazakstan', 195500, 111),(1872, 'Temirtau', 'KAZ', 'Qaraghandy', 170500, 111),(1873, 'Qyzylorda', 'KAZ', 'Qyzylorda', 157400, 111),(1874, 'Aqtau', 'KAZ', 'Mangghystau', 143400, 111),(1875, 'Atyrau', 'KAZ', 'Atyrau', 142500, 111),(1876, 'Ekibastuz', 'KAZ', 'Pavlodar', 127200, 111),(
    1877,
    'KÃ¶kshetau',
    'KAZ',
    'North Kazakstan',
    123400,
    111
  ),(1878, 'Rudnyy', 'KAZ', 'Qostanay', 109500, 111),(1879, 'Taldyqorghan', 'KAZ', 'Almaty', 98000, 111),(1880, 'Zhezqazghan', 'KAZ', 'Qaraghandy', 90000, 111),(1881, 'Nairobi', 'KEN', 'Nairobi', 2290000, 112),(1882, 'Mombasa', 'KEN', 'Coast', 461753, 112),(1883, 'Kisumu', 'KEN', 'Nyanza', 192733, 112),(1884, 'Nakuru', 'KEN', 'Rift Valley', 163927, 112),(1885, 'Machakos', 'KEN', 'Eastern', 116293, 112),(1886, 'Eldoret', 'KEN', 'Rift Valley', 111882, 112),(1887, 'Meru', 'KEN', 'Eastern', 94947, 112),(1888, 'Nyeri', 'KEN', 'Central', 91258, 112),(1889, 'Bangui', 'CAF', 'Bangui', 524000, 37),(1890, 'Shanghai', 'CHN', 'Shanghai', 9696300, 42),(1891, 'Peking', 'CHN', 'Peking', 7472000, 42),(1892, 'Chongqing', 'CHN', 'Chongqing', 6351600, 42),(1893, 'Tianjin', 'CHN', 'Tianjin', 5286800, 42),(1894, 'Wuhan', 'CHN', 'Hubei', 4344600, 42),(1895, 'Harbin', 'CHN', 'Heilongjiang', 4289800, 42),(1896, 'Shenyang', 'CHN', 'Liaoning', 4265200, 42),(
    1897,
    'Kanton [Guangzhou]',
    'CHN',
    'Guangdong',
    4256300,
    42
  ),(1898, 'Chengdu', 'CHN', 'Sichuan', 3361500, 42),(
    1899,
    'Nanking [Nanjing]',
    'CHN',
    'Jiangsu',
    2870300,
    42
  ),(1900, 'Changchun', 'CHN', 'Jilin', 2812000, 42),(1901, 'XiÂ´an', 'CHN', 'Shaanxi', 2761400, 42),(1902, 'Dalian', 'CHN', 'Liaoning', 2697000, 42),(1903, 'Qingdao', 'CHN', 'Shandong', 2596000, 42),(1904, 'Jinan', 'CHN', 'Shandong', 2278100, 42),(1905, 'Hangzhou', 'CHN', 'Zhejiang', 2190500, 42),(1906, 'Zhengzhou', 'CHN', 'Henan', 2107200, 42),(1907, 'Shijiazhuang', 'CHN', 'Hebei', 2041500, 42),(1908, 'Taiyuan', 'CHN', 'Shanxi', 1968400, 42),(1909, 'Kunming', 'CHN', 'Yunnan', 1829500, 42),(1910, 'Changsha', 'CHN', 'Hunan', 1809800, 42),(1911, 'Nanchang', 'CHN', 'Jiangxi', 1691600, 42),(1912, 'Fuzhou', 'CHN', 'Fujian', 1593800, 42),(1913, 'Lanzhou', 'CHN', 'Gansu', 1565800, 42),(1914, 'Guiyang', 'CHN', 'Guizhou', 1465200, 42),(1915, 'Ningbo', 'CHN', 'Zhejiang', 1371200, 42),(1916, 'Hefei', 'CHN', 'Anhui', 1369100, 42),(
    1917,
    'UrumtÂši [ÃœrÃ¼mqi]',
    'CHN',
    'Xinxiang',
    1310100,
    42
  ),(1918, 'Anshan', 'CHN', 'Liaoning', 1200000, 42),(1919, 'Fushun', 'CHN', 'Liaoning', 1200000, 42),(1920, 'Nanning', 'CHN', 'Guangxi', 1161800, 42),(1921, 'Zibo', 'CHN', 'Shandong', 1140000, 42),(1922, 'Qiqihar', 'CHN', 'Heilongjiang', 1070000, 42),(1923, 'Jilin', 'CHN', 'Jilin', 1040000, 42),(1924, 'Tangshan', 'CHN', 'Hebei', 1040000, 42),(1925, 'Baotou', 'CHN', 'Inner Mongolia', 980000, 42),(1926, 'Shenzhen', 'CHN', 'Guangdong', 950500, 42),(1927, 'Hohhot', 'CHN', 'Inner Mongolia', 916700, 42),(1928, 'Handan', 'CHN', 'Hebei', 840000, 42),(1929, 'Wuxi', 'CHN', 'Jiangsu', 830000, 42),(1930, 'Xuzhou', 'CHN', 'Jiangsu', 810000, 42),(1931, 'Datong', 'CHN', 'Shanxi', 800000, 42),(1932, 'Yichun', 'CHN', 'Heilongjiang', 800000, 42),(1933, 'Benxi', 'CHN', 'Liaoning', 770000, 42),(1934, 'Luoyang', 'CHN', 'Henan', 760000, 42),(1935, 'Suzhou', 'CHN', 'Jiangsu', 710000, 42),(1936, 'Xining', 'CHN', 'Qinghai', 700200, 42),(1937, 'Huainan', 'CHN', 'Anhui', 700000, 42),(1938, 'Jixi', 'CHN', 'Heilongjiang', 683885, 42),(1939, 'Daqing', 'CHN', 'Heilongjiang', 660000, 42),(1940, 'Fuxin', 'CHN', 'Liaoning', 640000, 42),(1941, 'Amoy [Xiamen]', 'CHN', 'Fujian', 627500, 42),(1942, 'Liuzhou', 'CHN', 'Guangxi', 610000, 42),(1943, 'Shantou', 'CHN', 'Guangdong', 580000, 42),(1944, 'Jinzhou', 'CHN', 'Liaoning', 570000, 42),(1945, 'Mudanjiang', 'CHN', 'Heilongjiang', 570000, 42),(1946, 'Yinchuan', 'CHN', 'Ningxia', 544500, 42),(1947, 'Changzhou', 'CHN', 'Jiangsu', 530000, 42),(1948, 'Zhangjiakou', 'CHN', 'Hebei', 530000, 42),(1949, 'Dandong', 'CHN', 'Liaoning', 520000, 42),(1950, 'Hegang', 'CHN', 'Heilongjiang', 520000, 42),(1951, 'Kaifeng', 'CHN', 'Henan', 510000, 42),(1952, 'Jiamusi', 'CHN', 'Heilongjiang', 493409, 42),(1953, 'Liaoyang', 'CHN', 'Liaoning', 492559, 42),(1954, 'Hengyang', 'CHN', 'Hunan', 487148, 42),(1955, 'Baoding', 'CHN', 'Hebei', 483155, 42),(1956, 'Hunjiang', 'CHN', 'Jilin', 482043, 42),(1957, 'Xinxiang', 'CHN', 'Henan', 473762, 42),(1958, 'Huangshi', 'CHN', 'Hubei', 457601, 42),(1959, 'Haikou', 'CHN', 'Hainan', 454300, 42),(1960, 'Yantai', 'CHN', 'Shandong', 452127, 42),(1961, 'Bengbu', 'CHN', 'Anhui', 449245, 42),(1962, 'Xiangtan', 'CHN', 'Hunan', 441968, 42),(1963, 'Weifang', 'CHN', 'Shandong', 428522, 42),(1964, 'Wuhu', 'CHN', 'Anhui', 425740, 42),(1965, 'Pingxiang', 'CHN', 'Jiangxi', 425579, 42),(1966, 'Yingkou', 'CHN', 'Liaoning', 421589, 42),(1967, 'Anyang', 'CHN', 'Henan', 420332, 42),(1968, 'Panzhihua', 'CHN', 'Sichuan', 415466, 42),(1969, 'Pingdingshan', 'CHN', 'Henan', 410775, 42),(1970, 'Xiangfan', 'CHN', 'Hubei', 410407, 42),(1971, 'Zhuzhou', 'CHN', 'Hunan', 409924, 42),(1972, 'Jiaozuo', 'CHN', 'Henan', 409100, 42),(1973, 'Wenzhou', 'CHN', 'Zhejiang', 401871, 42),(1974, 'Zhangjiang', 'CHN', 'Guangdong', 400997, 42),(1975, 'Zigong', 'CHN', 'Sichuan', 393184, 42),(
    1976,
    'Shuangyashan',
    'CHN',
    'Heilongjiang',
    386081,
    42
  ),(1977, 'Zaozhuang', 'CHN', 'Shandong', 380846, 42),(1978, 'Yakeshi', 'CHN', 'Inner Mongolia', 377869, 42),(1979, 'Yichang', 'CHN', 'Hubei', 371601, 42),(1980, 'Zhenjiang', 'CHN', 'Jiangsu', 368316, 42),(1981, 'Huaibei', 'CHN', 'Anhui', 366549, 42),(1982, 'Qinhuangdao', 'CHN', 'Hebei', 364972, 42),(1983, 'Guilin', 'CHN', 'Guangxi', 364130, 42),(1984, 'Liupanshui', 'CHN', 'Guizhou', 363954, 42),(1985, 'Panjin', 'CHN', 'Liaoning', 362773, 42),(1986, 'Yangquan', 'CHN', 'Shanxi', 362268, 42),(1987, 'Jinxi', 'CHN', 'Liaoning', 357052, 42),(1988, 'Liaoyuan', 'CHN', 'Jilin', 354141, 42),(1989, 'Lianyungang', 'CHN', 'Jiangsu', 354139, 42),(1990, 'Xianyang', 'CHN', 'Shaanxi', 352125, 42),(1991, 'TaiÂ´an', 'CHN', 'Shandong', 350696, 42),(1992, 'Chifeng', 'CHN', 'Inner Mongolia', 350077, 42),(1993, 'Shaoguan', 'CHN', 'Guangdong', 350043, 42),(1994, 'Nantong', 'CHN', 'Jiangsu', 343341, 42),(1995, 'Leshan', 'CHN', 'Sichuan', 341128, 42),(1996, 'Baoji', 'CHN', 'Shaanxi', 337765, 42),(1997, 'Linyi', 'CHN', 'Shandong', 324720, 42),(1998, 'Tonghua', 'CHN', 'Jilin', 324600, 42),(1999, 'Siping', 'CHN', 'Jilin', 317223, 42),(2000, 'Changzhi', 'CHN', 'Shanxi', 317144, 42),(2001, 'Tengzhou', 'CHN', 'Shandong', 315083, 42),(2002, 'Chaozhou', 'CHN', 'Guangdong', 313469, 42),(2003, 'Yangzhou', 'CHN', 'Jiangsu', 312892, 42),(2004, 'Dongwan', 'CHN', 'Guangdong', 308669, 42),(2005, 'MaÂ´anshan', 'CHN', 'Anhui', 305421, 42),(2006, 'Foshan', 'CHN', 'Guangdong', 303160, 42),(2007, 'Yueyang', 'CHN', 'Hunan', 302800, 42),(2008, 'Xingtai', 'CHN', 'Hebei', 302789, 42),(2009, 'Changde', 'CHN', 'Hunan', 301276, 42),(2010, 'Shihezi', 'CHN', 'Xinxiang', 299676, 42),(2011, 'Yancheng', 'CHN', 'Jiangsu', 296831, 42),(2012, 'Jiujiang', 'CHN', 'Jiangxi', 291187, 42),(2013, 'Dongying', 'CHN', 'Shandong', 281728, 42),(2014, 'Shashi', 'CHN', 'Hubei', 281352, 42),(2015, 'Xintai', 'CHN', 'Shandong', 281248, 42),(2016, 'Jingdezhen', 'CHN', 'Jiangxi', 281183, 42),(2017, 'Tongchuan', 'CHN', 'Shaanxi', 280657, 42),(2018, 'Zhongshan', 'CHN', 'Guangdong', 278829, 42),(2019, 'Shiyan', 'CHN', 'Hubei', 273786, 42),(2020, 'Tieli', 'CHN', 'Heilongjiang', 265683, 42),(2021, 'Jining', 'CHN', 'Shandong', 265248, 42),(2022, 'Wuhai', 'CHN', 'Inner Mongolia', 264081, 42),(2023, 'Mianyang', 'CHN', 'Sichuan', 262947, 42),(2024, 'Luzhou', 'CHN', 'Sichuan', 262892, 42),(2025, 'Zunyi', 'CHN', 'Guizhou', 261862, 42),(2026, 'Shizuishan', 'CHN', 'Ningxia', 257862, 42),(2027, 'Neijiang', 'CHN', 'Sichuan', 256012, 42),(2028, 'Tongliao', 'CHN', 'Inner Mongolia', 255129, 42),(2029, 'Tieling', 'CHN', 'Liaoning', 254842, 42),(2030, 'Wafangdian', 'CHN', 'Liaoning', 251733, 42),(2031, 'Anqing', 'CHN', 'Anhui', 250718, 42),(2032, 'Shaoyang', 'CHN', 'Hunan', 247227, 42),(2033, 'Laiwu', 'CHN', 'Shandong', 246833, 42),(2034, 'Chengde', 'CHN', 'Hebei', 246799, 42),(2035, 'Tianshui', 'CHN', 'Gansu', 244974, 42),(2036, 'Nanyang', 'CHN', 'Henan', 243303, 42),(2037, 'Cangzhou', 'CHN', 'Hebei', 242708, 42),(2038, 'Yibin', 'CHN', 'Sichuan', 241019, 42),(2039, 'Huaiyin', 'CHN', 'Jiangsu', 239675, 42),(2040, 'Dunhua', 'CHN', 'Jilin', 235100, 42),(2041, 'Yanji', 'CHN', 'Jilin', 230892, 42),(2042, 'Jiangmen', 'CHN', 'Guangdong', 230587, 42),(2043, 'Tongling', 'CHN', 'Anhui', 228017, 42),(2044, 'Suihua', 'CHN', 'Heilongjiang', 227881, 42),(2045, 'Gongziling', 'CHN', 'Jilin', 226569, 42),(2046, 'Xiantao', 'CHN', 'Hubei', 222884, 42),(2047, 'Chaoyang', 'CHN', 'Liaoning', 222394, 42),(2048, 'Ganzhou', 'CHN', 'Jiangxi', 220129, 42),(2049, 'Huzhou', 'CHN', 'Zhejiang', 218071, 42),(2050, 'Baicheng', 'CHN', 'Jilin', 217987, 42),(2051, 'Shangzi', 'CHN', 'Heilongjiang', 215373, 42),(2052, 'Yangjiang', 'CHN', 'Guangdong', 215196, 42),(2053, 'Qitaihe', 'CHN', 'Heilongjiang', 214957, 42),(2054, 'Gejiu', 'CHN', 'Yunnan', 214294, 42),(2055, 'Jiangyin', 'CHN', 'Jiangsu', 213659, 42),(2056, 'Hebi', 'CHN', 'Henan', 212976, 42),(2057, 'Jiaxing', 'CHN', 'Zhejiang', 211526, 42),(2058, 'Wuzhou', 'CHN', 'Guangxi', 210452, 42),(2059, 'Meihekou', 'CHN', 'Jilin', 209038, 42),(2060, 'Xuchang', 'CHN', 'Henan', 208815, 42),(2061, 'Liaocheng', 'CHN', 'Shandong', 207844, 42),(2062, 'Haicheng', 'CHN', 'Liaoning', 205560, 42),(2063, 'Qianjiang', 'CHN', 'Hubei', 205504, 42),(2064, 'Baiyin', 'CHN', 'Gansu', 204970, 42),(2065, 'BeiÂ´an', 'CHN', 'Heilongjiang', 204899, 42),(2066, 'Yixing', 'CHN', 'Jiangsu', 200824, 42),(2067, 'Laizhou', 'CHN', 'Shandong', 198664, 42),(2068, 'Qaramay', 'CHN', 'Xinxiang', 197602, 42),(2069, 'Acheng', 'CHN', 'Heilongjiang', 197595, 42),(2070, 'Dezhou', 'CHN', 'Shandong', 195485, 42),(2071, 'Nanping', 'CHN', 'Fujian', 195064, 42),(2072, 'Zhaoqing', 'CHN', 'Guangdong', 194784, 42),(2073, 'Beipiao', 'CHN', 'Liaoning', 194301, 42),(2074, 'Fengcheng', 'CHN', 'Jiangxi', 193784, 42),(2075, 'Fuyu', 'CHN', 'Jilin', 192981, 42),(2076, 'Xinyang', 'CHN', 'Henan', 192509, 42),(2077, 'Dongtai', 'CHN', 'Jiangsu', 192247, 42),(2078, 'Yuci', 'CHN', 'Shanxi', 191356, 42),(2079, 'Honghu', 'CHN', 'Hubei', 190772, 42),(2080, 'Ezhou', 'CHN', 'Hubei', 190123, 42),(2081, 'Heze', 'CHN', 'Shandong', 189293, 42),(2082, 'Daxian', 'CHN', 'Sichuan', 188101, 42),(2083, 'Linfen', 'CHN', 'Shanxi', 187309, 42),(2084, 'Tianmen', 'CHN', 'Hubei', 186332, 42),(2085, 'Yiyang', 'CHN', 'Hunan', 185818, 42),(2086, 'Quanzhou', 'CHN', 'Fujian', 185154, 42),(2087, 'Rizhao', 'CHN', 'Shandong', 185048, 42),(2088, 'Deyang', 'CHN', 'Sichuan', 182488, 42),(2089, 'Guangyuan', 'CHN', 'Sichuan', 182241, 42),(2090, 'Changshu', 'CHN', 'Jiangsu', 181805, 42),(2091, 'Zhangzhou', 'CHN', 'Fujian', 181424, 42),(2092, 'Hailar', 'CHN', 'Inner Mongolia', 180650, 42),(2093, 'Nanchong', 'CHN', 'Sichuan', 180273, 42),(2094, 'Jiutai', 'CHN', 'Jilin', 180130, 42),(2095, 'Zhaodong', 'CHN', 'Heilongjiang', 179976, 42),(2096, 'Shaoxing', 'CHN', 'Zhejiang', 179818, 42),(2097, 'Fuyang', 'CHN', 'Anhui', 179572, 42),(2098, 'Maoming', 'CHN', 'Guangdong', 178683, 42),(2099, 'Qujing', 'CHN', 'Yunnan', 178669, 42),(2100, 'Ghulja', 'CHN', 'Xinxiang', 177193, 42),(2101, 'Jiaohe', 'CHN', 'Jilin', 176367, 42),(2102, 'Puyang', 'CHN', 'Henan', 175988, 42),(2103, 'Huadian', 'CHN', 'Jilin', 175873, 42),(2104, 'Jiangyou', 'CHN', 'Sichuan', 175753, 42),(2105, 'Qashqar', 'CHN', 'Xinxiang', 174570, 42),(2106, 'Anshun', 'CHN', 'Guizhou', 174142, 42),(2107, 'Fuling', 'CHN', 'Sichuan', 173878, 42),(2108, 'Xinyu', 'CHN', 'Jiangxi', 173524, 42),(2109, 'Hanzhong', 'CHN', 'Shaanxi', 169930, 42),(2110, 'Danyang', 'CHN', 'Jiangsu', 169603, 42),(2111, 'Chenzhou', 'CHN', 'Hunan', 169400, 42),(2112, 'Xiaogan', 'CHN', 'Hubei', 166280, 42),(2113, 'Shangqiu', 'CHN', 'Henan', 164880, 42),(2114, 'Zhuhai', 'CHN', 'Guangdong', 164747, 42),(2115, 'Qingyuan', 'CHN', 'Guangdong', 164641, 42),(2116, 'Aqsu', 'CHN', 'Xinxiang', 164092, 42),(2117, 'Jining', 'CHN', 'Inner Mongolia', 163552, 42),(2118, 'Xiaoshan', 'CHN', 'Zhejiang', 162930, 42),(2119, 'Zaoyang', 'CHN', 'Hubei', 162198, 42),(2120, 'Xinghua', 'CHN', 'Jiangsu', 161910, 42),(2121, 'Hami', 'CHN', 'Xinxiang', 161315, 42),(2122, 'Huizhou', 'CHN', 'Guangdong', 161023, 42),(2123, 'Jinmen', 'CHN', 'Hubei', 160794, 42),(2124, 'Sanming', 'CHN', 'Fujian', 160691, 42),(2125, 'Ulanhot', 'CHN', 'Inner Mongolia', 159538, 42),(2126, 'Korla', 'CHN', 'Xinxiang', 159344, 42),(2127, 'Wanxian', 'CHN', 'Sichuan', 156823, 42),(2128, 'RuiÂ´an', 'CHN', 'Zhejiang', 156468, 42),(2129, 'Zhoushan', 'CHN', 'Zhejiang', 156317, 42),(2130, 'Liangcheng', 'CHN', 'Shandong', 156307, 42),(2131, 'Jiaozhou', 'CHN', 'Shandong', 153364, 42),(2132, 'Taizhou', 'CHN', 'Jiangsu', 152442, 42),(2133, 'Suzhou', 'CHN', 'Anhui', 151862, 42),(2134, 'Yichun', 'CHN', 'Jiangxi', 151585, 42),(2135, 'Taonan', 'CHN', 'Jilin', 150168, 42),(2136, 'Pingdu', 'CHN', 'Shandong', 150123, 42),(2137, 'JiÂ´an', 'CHN', 'Jiangxi', 148583, 42),(2138, 'Longkou', 'CHN', 'Shandong', 148362, 42),(2139, 'Langfang', 'CHN', 'Hebei', 148105, 42),(2140, 'Zhoukou', 'CHN', 'Henan', 146288, 42),(2141, 'Suining', 'CHN', 'Sichuan', 146086, 42),(2142, 'Yulin', 'CHN', 'Guangxi', 144467, 42),(2143, 'Jinhua', 'CHN', 'Zhejiang', 144280, 42),(2144, 'LiuÂ´an', 'CHN', 'Anhui', 144248, 42),(
    2145,
    'Shuangcheng',
    'CHN',
    'Heilongjiang',
    142659,
    42
  ),(2146, 'Suizhou', 'CHN', 'Hubei', 142302, 42),(2147, 'Ankang', 'CHN', 'Shaanxi', 142170, 42),(2148, 'Weinan', 'CHN', 'Shaanxi', 140169, 42),(2149, 'Longjing', 'CHN', 'Jilin', 139417, 42),(2150, 'DaÂ´an', 'CHN', 'Jilin', 138963, 42),(2151, 'Lengshuijiang', 'CHN', 'Hunan', 137994, 42),(2152, 'Laiyang', 'CHN', 'Shandong', 137080, 42),(2153, 'Xianning', 'CHN', 'Hubei', 136811, 42),(2154, 'Dali', 'CHN', 'Yunnan', 136554, 42),(2155, 'Anda', 'CHN', 'Heilongjiang', 136446, 42),(2156, 'Jincheng', 'CHN', 'Shanxi', 136396, 42),(2157, 'Longyan', 'CHN', 'Fujian', 134481, 42),(2158, 'Xichang', 'CHN', 'Sichuan', 134419, 42),(2159, 'Wendeng', 'CHN', 'Shandong', 133910, 42),(2160, 'Hailun', 'CHN', 'Heilongjiang', 133565, 42),(2161, 'Binzhou', 'CHN', 'Shandong', 133555, 42),(2162, 'Linhe', 'CHN', 'Inner Mongolia', 133183, 42),(2163, 'Wuwei', 'CHN', 'Gansu', 133101, 42),(2164, 'Duyun', 'CHN', 'Guizhou', 132971, 42),(2165, 'Mishan', 'CHN', 'Heilongjiang', 132744, 42),(2166, 'Shangrao', 'CHN', 'Jiangxi', 132455, 42),(2167, 'Changji', 'CHN', 'Xinxiang', 132260, 42),(2168, 'Meixian', 'CHN', 'Guangdong', 132156, 42),(2169, 'Yushu', 'CHN', 'Jilin', 131861, 42),(2170, 'Tiefa', 'CHN', 'Liaoning', 131807, 42),(2171, 'HuaiÂ´an', 'CHN', 'Jiangsu', 131149, 42),(2172, 'Leiyang', 'CHN', 'Hunan', 130115, 42),(2173, 'Zalantun', 'CHN', 'Inner Mongolia', 130031, 42),(2174, 'Weihai', 'CHN', 'Shandong', 128888, 42),(2175, 'Loudi', 'CHN', 'Hunan', 128418, 42),(2176, 'Qingzhou', 'CHN', 'Shandong', 128258, 42),(2177, 'Qidong', 'CHN', 'Jiangsu', 126872, 42),(2178, 'Huaihua', 'CHN', 'Hunan', 126785, 42),(2179, 'Luohe', 'CHN', 'Henan', 126438, 42),(2180, 'Chuzhou', 'CHN', 'Anhui', 125341, 42),(2181, 'Kaiyuan', 'CHN', 'Liaoning', 124219, 42),(2182, 'Linqing', 'CHN', 'Shandong', 123958, 42),(2183, 'Chaohu', 'CHN', 'Anhui', 123676, 42),(2184, 'Laohekou', 'CHN', 'Hubei', 123366, 42),(2185, 'Dujiangyan', 'CHN', 'Sichuan', 123357, 42),(2186, 'Zhumadian', 'CHN', 'Henan', 123232, 42),(2187, 'Linchuan', 'CHN', 'Jiangxi', 121949, 42),(2188, 'Jiaonan', 'CHN', 'Shandong', 121397, 42),(2189, 'Sanmenxia', 'CHN', 'Henan', 120523, 42),(2190, 'Heyuan', 'CHN', 'Guangdong', 120101, 42),(
    2191,
    'Manzhouli',
    'CHN',
    'Inner Mongolia',
    120023,
    42
  ),(2192, 'Lhasa', 'CHN', 'Tibet', 120000, 42),(2193, 'Lianyuan', 'CHN', 'Hunan', 118858, 42),(2194, 'Kuytun', 'CHN', 'Xinxiang', 118553, 42),(2195, 'Puqi', 'CHN', 'Hubei', 117264, 42),(2196, 'Hongjiang', 'CHN', 'Hunan', 116188, 42),(2197, 'Qinzhou', 'CHN', 'Guangxi', 114586, 42),(2198, 'Renqiu', 'CHN', 'Hebei', 114256, 42),(2199, 'Yuyao', 'CHN', 'Zhejiang', 114065, 42),(2200, 'Guigang', 'CHN', 'Guangxi', 114025, 42),(2201, 'Kaili', 'CHN', 'Guizhou', 113958, 42),(2202, 'YanÂ´an', 'CHN', 'Shaanxi', 113277, 42),(2203, 'Beihai', 'CHN', 'Guangxi', 112673, 42),(2204, 'Xuangzhou', 'CHN', 'Anhui', 112673, 42),(2205, 'Quzhou', 'CHN', 'Zhejiang', 112373, 42),(2206, 'YongÂ´an', 'CHN', 'Fujian', 111762, 42),(2207, 'Zixing', 'CHN', 'Hunan', 110048, 42),(2208, 'Liyang', 'CHN', 'Jiangsu', 109520, 42),(2209, 'Yizheng', 'CHN', 'Jiangsu', 109268, 42),(2210, 'Yumen', 'CHN', 'Gansu', 109234, 42),(2211, 'Liling', 'CHN', 'Hunan', 108504, 42),(2212, 'Yuncheng', 'CHN', 'Shanxi', 108359, 42),(2213, 'Shanwei', 'CHN', 'Guangdong', 107847, 42),(2214, 'Cixi', 'CHN', 'Zhejiang', 107329, 42),(2215, 'Yuanjiang', 'CHN', 'Hunan', 107004, 42),(2216, 'Bozhou', 'CHN', 'Anhui', 106346, 42),(2217, 'Jinchang', 'CHN', 'Gansu', 105287, 42),(2218, 'FuÂ´an', 'CHN', 'Fujian', 105265, 42),(2219, 'Suqian', 'CHN', 'Jiangsu', 105021, 42),(2220, 'Shishou', 'CHN', 'Hubei', 104571, 42),(2221, 'Hengshui', 'CHN', 'Hebei', 104269, 42),(2222, 'Danjiangkou', 'CHN', 'Hubei', 103211, 42),(2223, 'Fujin', 'CHN', 'Heilongjiang', 103104, 42),(2224, 'Sanya', 'CHN', 'Hainan', 102820, 42),(2225, 'Guangshui', 'CHN', 'Hubei', 102770, 42),(2226, 'Huangshan', 'CHN', 'Anhui', 102628, 42),(2227, 'Xingcheng', 'CHN', 'Liaoning', 102384, 42),(2228, 'Zhucheng', 'CHN', 'Shandong', 102134, 42),(2229, 'Kunshan', 'CHN', 'Jiangsu', 102052, 42),(2230, 'Haining', 'CHN', 'Zhejiang', 100478, 42),(2231, 'Pingliang', 'CHN', 'Gansu', 99265, 42),(2232, 'Fuqing', 'CHN', 'Fujian', 99193, 42),(2233, 'Xinzhou', 'CHN', 'Shanxi', 98667, 42),(2234, 'Jieyang', 'CHN', 'Guangdong', 98531, 42),(2235, 'Zhangjiagang', 'CHN', 'Jiangsu', 97994, 42),(2236, 'Tong Xian', 'CHN', 'Peking', 97168, 42),(2237, 'YaÂ´an', 'CHN', 'Sichuan', 95900, 42),(2238, 'Jinzhou', 'CHN', 'Liaoning', 95761, 42),(2239, 'Emeishan', 'CHN', 'Sichuan', 94000, 42),(2240, 'Enshi', 'CHN', 'Hubei', 93056, 42),(2241, 'Bose', 'CHN', 'Guangxi', 93009, 42),(2242, 'Yuzhou', 'CHN', 'Henan', 92889, 42),(2243, 'Kaiyuan', 'CHN', 'Yunnan', 91999, 42),(2244, 'Tumen', 'CHN', 'Jilin', 91471, 42),(2245, 'Putian', 'CHN', 'Fujian', 91030, 42),(2246, 'Linhai', 'CHN', 'Zhejiang', 90870, 42),(2247, 'Xilin Hot', 'CHN', 'Inner Mongolia', 90646, 42),(2248, 'Shaowu', 'CHN', 'Fujian', 90286, 42),(2249, 'Junan', 'CHN', 'Shandong', 90222, 42),(2250, 'Huaying', 'CHN', 'Sichuan', 89400, 42),(2251, 'Pingyi', 'CHN', 'Shandong', 89373, 42),(2252, 'Huangyan', 'CHN', 'Zhejiang', 89288, 42),(2253, 'Bishkek', 'KGZ', 'Bishkek shaary', 589400, 113),(2254, 'Osh', 'KGZ', 'Osh', 222700, 113),(2255, 'Bikenibeu', 'KIR', 'South Tarawa', 5055, 115),(2256, 'Bairiki', 'KIR', 'South Tarawa', 2226, 115),(
    2257,
    'SantafÃ© de BogotÃ¡',
    'COL',
    'SantafÃ© de BogotÃ¡',
    6260862,
    48
  ),(2258, 'Cali', 'COL', 'Valle', 2077386, 48),(2259, 'MedellÃ­n', 'COL', 'Antioquia', 1861265, 48),(
    2260,
    'Barranquilla',
    'COL',
    'AtlÃ¡ntico',
    1223260,
    48
  ),(2261, 'Cartagena', 'COL', 'BolÃ­var', 805757, 48),(
    2262,
    'CÃºcuta',
    'COL',
    'Norte de Santander',
    606932,
    48
  ),(2263, 'Bucaramanga', 'COL', 'Santander', 515555, 48),(2264, 'IbaguÃ©', 'COL', 'Tolima', 393664, 48),(2265, 'Pereira', 'COL', 'Risaralda', 381725, 48),(2266, 'Santa Marta', 'COL', 'Magdalena', 359147, 48),(2267, 'Manizales', 'COL', 'Caldas', 337580, 48),(2268, 'Bello', 'COL', 'Antioquia', 333470, 48),(2269, 'Pasto', 'COL', 'NariÃ±o', 332396, 48),(2270, 'Neiva', 'COL', 'Huila', 300052, 48),(2271, 'Soledad', 'COL', 'AtlÃ¡ntico', 295058, 48),(2272, 'Armenia', 'COL', 'QuindÃ­o', 288977, 48),(2273, 'Villavicencio', 'COL', 'Meta', 273140, 48),(2274, 'Soacha', 'COL', 'Cundinamarca', 272058, 48),(2275, 'Valledupar', 'COL', 'Cesar', 263247, 48),(2276, 'MonterÃ­a', 'COL', 'CÃ³rdoba', 248245, 48),(2277, 'ItagÃ¼Ã­', 'COL', 'Antioquia', 228985, 48),(2278, 'Palmira', 'COL', 'Valle', 226509, 48),(2279, 'Buenaventura', 'COL', 'Valle', 224336, 48),(2280, 'Floridablanca', 'COL', 'Santander', 221913, 48),(2281, 'Sincelejo', 'COL', 'Sucre', 220704, 48),(2282, 'PopayÃ¡n', 'COL', 'Cauca', 200719, 48),(
    2283,
    'Barrancabermeja',
    'COL',
    'Santander',
    178020,
    48
  ),(2284, 'Dos Quebradas', 'COL', 'Risaralda', 159363, 48),(2285, 'TuluÃ¡', 'COL', 'Valle', 152488, 48),(2286, 'Envigado', 'COL', 'Antioquia', 135848, 48),(2287, 'Cartago', 'COL', 'Valle', 125884, 48),(2288, 'Girardot', 'COL', 'Cundinamarca', 110963, 48),(2289, 'Buga', 'COL', 'Valle', 110699, 48),(2290, 'Tunja', 'COL', 'BoyacÃ¡', 109740, 48),(2291, 'Florencia', 'COL', 'CaquetÃ¡', 108574, 48),(2292, 'Maicao', 'COL', 'La Guajira', 108053, 48),(2293, 'Sogamoso', 'COL', 'BoyacÃ¡', 107728, 48),(2294, 'Giron', 'COL', 'Santander', 90688, 48),(2295, 'Moroni', 'COM', 'Njazidja', 36000, 49),(2296, 'Brazzaville', 'COG', 'Brazzaville', 950000, 46),(2297, 'Pointe-Noire', 'COG', 'Kouilou', 500000, 46),(2298, 'Kinshasa', 'COD', 'Kinshasa', 5064000, 45),(2299, 'Lubumbashi', 'COD', 'Shaba', 851381, 45),(2300, 'Mbuji-Mayi', 'COD', 'East Kasai', 806475, 45),(2301, 'Kolwezi', 'COD', 'Shaba', 417810, 45),(2302, 'Kisangani', 'COD', 'Haute-ZaÃ¯re', 417517, 45),(2303, 'Kananga', 'COD', 'West Kasai', 393030, 45),(2304, 'Likasi', 'COD', 'Shaba', 299118, 45),(2305, 'Bukavu', 'COD', 'South Kivu', 201569, 45),(2306, 'Kikwit', 'COD', 'Bandundu', 182142, 45),(2307, 'Tshikapa', 'COD', 'West Kasai', 180860, 45),(2308, 'Matadi', 'COD', 'Bas-ZaÃ¯re', 172730, 45),(2309, 'Mbandaka', 'COD', 'Equateur', 169841, 45),(2310, 'Mwene-Ditu', 'COD', 'East Kasai', 137459, 45),(2311, 'Boma', 'COD', 'Bas-ZaÃ¯re', 135284, 45),(2312, 'Uvira', 'COD', 'South Kivu', 115590, 45),(2313, 'Butembo', 'COD', 'North Kivu', 109406, 45),(2314, 'Goma', 'COD', 'North Kivu', 109094, 45),(2315, 'Kalemie', 'COD', 'Shaba', 101309, 45),(2316, 'Bantam', 'CCK', 'Home Island', 503, 39),(2317, 'West Island', 'CCK', 'West Island', 167, 39),(
    2318,
    'Pyongyang',
    'PRK',
    'Pyongyang-si',
    2484000,
    174
  ),(2319, 'Hamhung', 'PRK', 'Hamgyong N', 709730, 174),(2320, 'Chongjin', 'PRK', 'Hamgyong P', 582480, 174),(2321, 'Nampo', 'PRK', 'Nampo-si', 566200, 174),(2322, 'Sinuiju', 'PRK', 'Pyongan P', 326011, 174),(2323, 'Wonsan', 'PRK', 'Kangwon', 300148, 174),(2324, 'Phyongsong', 'PRK', 'Pyongan N', 272934, 174),(2325, 'Sariwon', 'PRK', 'Hwanghae P', 254146, 174),(2326, 'Haeju', 'PRK', 'Hwanghae N', 229172, 174),(2327, 'Kanggye', 'PRK', 'Chagang', 223410, 174),(2328, 'Kimchaek', 'PRK', 'Hamgyong P', 179000, 174),(2329, 'Hyesan', 'PRK', 'Yanggang', 178020, 174),(2330, 'Kaesong', 'PRK', 'Kaesong-si', 171500, 174),(2331, 'Seoul', 'KOR', 'Seoul', 9981619, 117),(2332, 'Pusan', 'KOR', 'Pusan', 3804522, 117),(2333, 'Inchon', 'KOR', 'Inchon', 2559424, 117),(2334, 'Taegu', 'KOR', 'Taegu', 2548568, 117),(2335, 'Taejon', 'KOR', 'Taejon', 1425835, 117),(2336, 'Kwangju', 'KOR', 'Kwangju', 1368341, 117),(2337, 'Ulsan', 'KOR', 'Kyongsangnam', 1084891, 117),(2338, 'Songnam', 'KOR', 'Kyonggi', 869094, 117),(2339, 'Puchon', 'KOR', 'Kyonggi', 779412, 117),(2340, 'Suwon', 'KOR', 'Kyonggi', 755550, 117),(2341, 'Anyang', 'KOR', 'Kyonggi', 591106, 117),(2342, 'Chonju', 'KOR', 'Chollabuk', 563153, 117),(2343, 'Chongju', 'KOR', 'Chungchongbuk', 531376, 117),(2344, 'Koyang', 'KOR', 'Kyonggi', 518282, 117),(2345, 'Ansan', 'KOR', 'Kyonggi', 510314, 117),(2346, 'Pohang', 'KOR', 'Kyongsangbuk', 508899, 117),(2347, 'Chang-won', 'KOR', 'Kyongsangnam', 481694, 117),(2348, 'Masan', 'KOR', 'Kyongsangnam', 441242, 117),(2349, 'Kwangmyong', 'KOR', 'Kyonggi', 350914, 117),(2350, 'Chonan', 'KOR', 'Chungchongnam', 330259, 117),(2351, 'Chinju', 'KOR', 'Kyongsangnam', 329886, 117),(2352, 'Iksan', 'KOR', 'Chollabuk', 322685, 117),(2353, 'Pyongtaek', 'KOR', 'Kyonggi', 312927, 117),(2354, 'Kumi', 'KOR', 'Kyongsangbuk', 311431, 117),(2355, 'Uijongbu', 'KOR', 'Kyonggi', 276111, 117),(2356, 'Kyongju', 'KOR', 'Kyongsangbuk', 272968, 117),(2357, 'Kunsan', 'KOR', 'Chollabuk', 266569, 117),(2358, 'Cheju', 'KOR', 'Cheju', 258511, 117),(2359, 'Kimhae', 'KOR', 'Kyongsangnam', 256370, 117),(2360, 'Sunchon', 'KOR', 'Chollanam', 249263, 117),(2361, 'Mokpo', 'KOR', 'Chollanam', 247452, 117),(2362, 'Yong-in', 'KOR', 'Kyonggi', 242643, 117),(2363, 'Wonju', 'KOR', 'Kang-won', 237460, 117),(2364, 'Kunpo', 'KOR', 'Kyonggi', 235233, 117),(2365, 'Chunchon', 'KOR', 'Kang-won', 234528, 117),(2366, 'Namyangju', 'KOR', 'Kyonggi', 229060, 117),(2367, 'Kangnung', 'KOR', 'Kang-won', 220403, 117),(2368, 'Chungju', 'KOR', 'Chungchongbuk', 205206, 117),(2369, 'Andong', 'KOR', 'Kyongsangbuk', 188443, 117),(2370, 'Yosu', 'KOR', 'Chollanam', 183596, 117),(2371, 'Kyongsan', 'KOR', 'Kyongsangbuk', 173746, 117),(2372, 'Paju', 'KOR', 'Kyonggi', 163379, 117),(2373, 'Yangsan', 'KOR', 'Kyongsangnam', 163351, 117),(2374, 'Ichon', 'KOR', 'Kyonggi', 155332, 117),(2375, 'Asan', 'KOR', 'Chungchongnam', 154663, 117),(2376, 'Koje', 'KOR', 'Kyongsangnam', 147562, 117),(2377, 'Kimchon', 'KOR', 'Kyongsangbuk', 147027, 117),(2378, 'Nonsan', 'KOR', 'Chungchongnam', 146619, 117),(2379, 'Kuri', 'KOR', 'Kyonggi', 142173, 117),(2380, 'Chong-up', 'KOR', 'Chollabuk', 139111, 117),(2381, 'Chechon', 'KOR', 'Chungchongbuk', 137070, 117),(2382, 'Sosan', 'KOR', 'Chungchongnam', 134746, 117),(2383, 'Shihung', 'KOR', 'Kyonggi', 133443, 117),(2384, 'Tong-yong', 'KOR', 'Kyongsangnam', 131717, 117),(2385, 'Kongju', 'KOR', 'Chungchongnam', 131229, 117),(2386, 'Yongju', 'KOR', 'Kyongsangbuk', 131097, 117),(2387, 'Chinhae', 'KOR', 'Kyongsangnam', 125997, 117),(2388, 'Sangju', 'KOR', 'Kyongsangbuk', 124116, 117),(2389, 'Poryong', 'KOR', 'Chungchongnam', 122604, 117),(2390, 'Kwang-yang', 'KOR', 'Chollanam', 122052, 117),(2391, 'Miryang', 'KOR', 'Kyongsangnam', 121501, 117),(2392, 'Hanam', 'KOR', 'Kyonggi', 115812, 117),(2393, 'Kimje', 'KOR', 'Chollabuk', 115427, 117),(2394, 'Yongchon', 'KOR', 'Kyongsangbuk', 113511, 117),(2395, 'Sachon', 'KOR', 'Kyongsangnam', 113494, 117),(2396, 'Uiwang', 'KOR', 'Kyonggi', 108788, 117),(2397, 'Naju', 'KOR', 'Chollanam', 107831, 117),(2398, 'Namwon', 'KOR', 'Chollabuk', 103544, 117),(2399, 'Tonghae', 'KOR', 'Kang-won', 95472, 117),(2400, 'Mun-gyong', 'KOR', 'Kyongsangbuk', 92239, 117),(2401, 'Athenai', 'GRC', 'Attika', 772072, 86),(
    2402,
    'Thessaloniki',
    'GRC',
    'Central Macedonia',
    383967,
    86
  ),(2403, 'Pireus', 'GRC', 'Attika', 182671, 86),(2404, 'Patras', 'GRC', 'West Greece', 153344, 86),(2405, 'Peristerion', 'GRC', 'Attika', 137288, 86),(2406, 'Herakleion', 'GRC', 'Crete', 116178, 86),(2407, 'Kallithea', 'GRC', 'Attika', 114233, 86),(2408, 'Larisa', 'GRC', 'Thessalia', 113090, 86),(2409, 'Zagreb', 'HRV', 'Grad Zagreb', 706770, 96),(2410, 'Split', 'HRV', 'Split-Dalmatia', 189388, 96),(
    2411,
    'Rijeka',
    'HRV',
    'Primorje-Gorski Kota',
    167964,
    96
  ),(2412, 'Osijek', 'HRV', 'Osijek-Baranja', 104761, 96),(2413, 'La Habana', 'CUB', 'La Habana', 2256000, 52),(
    2414,
    'Santiago de Cuba',
    'CUB',
    'Santiago de Cuba',
    433180,
    52
  ),(2415, 'CamagÃ¼ey', 'CUB', 'CamagÃ¼ey', 298726, 52),(2416, 'HolguÃ­n', 'CUB', 'HolguÃ­n', 249492, 52),(2417, 'Santa Clara', 'CUB', 'Villa Clara', 207350, 52),(2418, 'GuantÃ¡namo', 'CUB', 'GuantÃ¡namo', 205078, 52),(
    2419,
    'Pinar del RÃ­o',
    'CUB',
    'Pinar del RÃ­o',
    142100,
    52
  ),(2420, 'Bayamo', 'CUB', 'Granma', 141000, 52),(2421, 'Cienfuegos', 'CUB', 'Cienfuegos', 132770, 52),(
    2422,
    'Victoria de las Tunas',
    'CUB',
    'Las Tunas',
    132350,
    52
  ),(2423, 'Matanzas', 'CUB', 'Matanzas', 123273, 52),(2424, 'Manzanillo', 'CUB', 'Granma', 109350, 52),(
    2425,
    'Sancti-SpÃ­ritus',
    'CUB',
    'Sancti-SpÃ­ritus',
    100751,
    52
  ),(
    2426,
    'Ciego de Ãvila',
    'CUB',
    'Ciego de Ãvila',
    98505,
    52
  ),(2427, 'al-Salimiya', 'KWT', 'Hawalli', 130215, 118),(
    2428,
    'Jalib al-Shuyukh',
    'KWT',
    'Hawalli',
    102178,
    118
  ),(2429, 'Kuwait', 'KWT', 'al-Asima', 28859, 118),(2430, 'Nicosia', 'CYP', 'Nicosia', 195000, 55),(2431, 'Limassol', 'CYP', 'Limassol', 154400, 55),(2432, 'Vientiane', 'LAO', 'Viangchan', 531800, 119),(2433, 'Savannakhet', 'LAO', 'Savannakhet', 96652, 119),(2434, 'Riga', 'LVA', 'Riika', 764328, 129),(2435, 'Daugavpils', 'LVA', 'Daugavpils', 114829, 129),(2436, 'Liepaja', 'LVA', 'Liepaja', 89439, 129),(2437, 'Maseru', 'LSO', 'Maseru', 297000, 126),(2438, 'Beirut', 'LBN', 'Beirut', 1100000, 120),(2439, 'Tripoli', 'LBN', 'al-Shamal', 240000, 120),(2440, 'Monrovia', 'LBR', 'Montserrado', 850000, 121),(2441, 'Tripoli', 'LBY', 'Tripoli', 1682000, 122),(2442, 'Bengasi', 'LBY', 'Bengasi', 804000, 122),(2443, 'Misrata', 'LBY', 'Misrata', 121669, 122),(2444, 'al-Zawiya', 'LBY', 'al-Zawiya', 89338, 122),(2445, 'Schaan', 'LIE', 'Schaan', 5346, 124),(2446, 'Vaduz', 'LIE', 'Vaduz', 5043, 124),(2447, 'Vilnius', 'LTU', 'Vilna', 577969, 127),(2448, 'Kaunas', 'LTU', 'Kaunas', 412639, 127),(2449, 'Klaipeda', 'LTU', 'Klaipeda', 202451, 127),(2450, 'ÂŠiauliai', 'LTU', 'ÂŠiauliai', 146563, 127),(2451, 'Panevezys', 'LTU', 'Panevezys', 133695, 127),(
    2452,
    'Luxembourg [Luxemburg/LÃ«tzebuerg]',
    'LUX',
    'Luxembourg',
    80700,
    128
  ),(2453, 'El-AaiÃºn', 'ESH', 'El-AaiÃºn', 169000, 66),(2454, 'Macao', 'MAC', 'Macau', 437500, 130),(
    2455,
    'Antananarivo',
    'MDG',
    'Antananarivo',
    675669,
    134
  ),(2456, 'Toamasina', 'MDG', 'Toamasina', 127441, 134),(
    2457,
    'AntsirabÃ©',
    'MDG',
    'Antananarivo',
    120239,
    134
  ),(2458, 'Mahajanga', 'MDG', 'Mahajanga', 100807, 134),(
    2459,
    'Fianarantsoa',
    'MDG',
    'Fianarantsoa',
    99005,
    134
  ),(2460, 'Skopje', 'MKD', 'Skopje', 444299, 138),(2461, 'Blantyre', 'MWI', 'Blantyre', 478155, 149),(2462, 'Lilongwe', 'MWI', 'Lilongwe', 435964, 149),(2463, 'Male', 'MDV', 'Maale', 71000, 135),(
    2464,
    'Kuala Lumpur',
    'MYS',
    'Wilayah Persekutuan',
    1297526,
    150
  ),(2465, 'Ipoh', 'MYS', 'Perak', 382853, 150),(2466, 'Johor Baharu', 'MYS', 'Johor', 328436, 150),(2467, 'Petaling Jaya', 'MYS', 'Selangor', 254350, 150),(2468, 'Kelang', 'MYS', 'Selangor', 243355, 150),(
    2469,
    'Kuala Terengganu',
    'MYS',
    'Terengganu',
    228119,
    150
  ),(2470, 'Pinang', 'MYS', 'Pulau Pinang', 219603, 150),(2471, 'Kota Bharu', 'MYS', 'Kelantan', 219582, 150),(2472, 'Kuantan', 'MYS', 'Pahang', 199484, 150),(2473, 'Taiping', 'MYS', 'Perak', 183261, 150),(
    2474,
    'Seremban',
    'MYS',
    'Negeri Sembilan',
    182869,
    150
  ),(2475, 'Kuching', 'MYS', 'Sarawak', 148059, 150),(2476, 'Sibu', 'MYS', 'Sarawak', 126381, 150),(2477, 'Sandakan', 'MYS', 'Sabah', 125841, 150),(2478, 'Alor Setar', 'MYS', 'Kedah', 124412, 150),(2479, 'Selayang Baru', 'MYS', 'Selangor', 124228, 150),(2480, 'Sungai Petani', 'MYS', 'Kedah', 114763, 150),(2481, 'Shah Alam', 'MYS', 'Selangor', 102019, 150),(2482, 'Bamako', 'MLI', 'Bamako', 809552, 139),(
    2483,
    'Birkirkara',
    'MLT',
    'Outer Harbour',
    21445,
    140
  ),(2484, 'Valletta', 'MLT', 'Inner Harbour', 7073, 140),(2485, 'Casablanca', 'MAR', 'Casablanca', 2940623, 131),(
    2486,
    'Rabat',
    'MAR',
    'Rabat-SalÃ©-Zammour-',
    623457,
    131
  ),(
    2487,
    'Marrakech',
    'MAR',
    'Marrakech-Tensift-Al',
    621914,
    131
  ),(2488, 'FÃ¨s', 'MAR', 'FÃ¨s-Boulemane', 541162, 131),(2489, 'Tanger', 'MAR', 'Tanger-TÃ©touan', 521735, 131),(
    2490,
    'SalÃ©',
    'MAR',
    'Rabat-SalÃ©-Zammour-',
    504420,
    131
  ),(
    2491,
    'MeknÃ¨s',
    'MAR',
    'MeknÃ¨s-Tafilalet',
    460000,
    131
  ),(2492, 'Oujda', 'MAR', 'Oriental', 365382, 131),(
    2493,
    'KÃ©nitra',
    'MAR',
    'Gharb-Chrarda-BÃ©ni',
    292600,
    131
  ),(
    2494,
    'TÃ©touan',
    'MAR',
    'Tanger-TÃ©touan',
    277516,
    131
  ),(2495, 'Safi', 'MAR', 'Doukkala-Abda', 262300, 131),(
    2496,
    'Agadir',
    'MAR',
    'Souss Massa-DraÃ¢',
    155244,
    131
  ),(2497, 'Mohammedia', 'MAR', 'Casablanca', 154706, 131),(
    2498,
    'Khouribga',
    'MAR',
    'Chaouia-Ouardigha',
    152090,
    131
  ),(
    2499,
    'Beni-Mellal',
    'MAR',
    'Tadla-Azilal',
    140212,
    131
  ),(
    2500,
    'TÃ©mara',
    'MAR',
    'Rabat-SalÃ©-Zammour-',
    126303,
    131
  ),(
    2501,
    'El Jadida',
    'MAR',
    'Doukkala-Abda',
    119083,
    131
  ),(2502, 'Nador', 'MAR', 'Oriental', 112450, 131),(
    2503,
    'Ksar el Kebir',
    'MAR',
    'Tanger-TÃ©touan',
    107065,
    131
  ),(
    2504,
    'Settat',
    'MAR',
    'Chaouia-Ouardigha',
    96200,
    131
  ),(
    2505,
    'Taza',
    'MAR',
    'Taza-Al Hoceima-Taou',
    92700,
    131
  ),(
    2506,
    'El Araich',
    'MAR',
    'Tanger-TÃ©touan',
    90400,
    131
  ),(
    2507,
    'Dalap-Uliga-Darrit',
    'MHL',
    'Majuro',
    28000,
    137
  ),(
    2508,
    'Fort-de-France',
    'MTQ',
    'Fort-de-France',
    94050,
    147
  ),(2509, 'Nouakchott', 'MRT', 'Nouakchott', 667300, 145),(
    2510,
    'NouÃ¢dhibou',
    'MRT',
    'Dakhlet NouÃ¢dhibou',
    97600,
    145
  ),(2511, 'Port-Louis', 'MUS', 'Port-Louis', 138200, 148),(
    2512,
    'Beau Bassin-Rose Hill',
    'MUS',
    'Plaines Wilhelms',
    100616,
    148
  ),(
    2513,
    'Vacoas-Phoenix',
    'MUS',
    'Plaines Wilhelms',
    98464,
    148
  ),(2514, 'Mamoutzou', 'MYT', 'Mamoutzou', 12000, 151),(
    2515,
    'Ciudad de MÃ©xico',
    'MEX',
    'Distrito Federal',
    8591309,
    136
  ),(2516, 'Guadalajara', 'MEX', 'Jalisco', 1647720, 136),(
    2517,
    'Ecatepec de Morelos',
    'MEX',
    'MÃ©xico',
    1620303,
    136
  ),(2518, 'Puebla', 'MEX', 'Puebla', 1346176, 136),(
    2519,
    'NezahualcÃ³yotl',
    'MEX',
    'MÃ©xico',
    1224924,
    136
  ),(2520, 'JuÃ¡rez', 'MEX', 'Chihuahua', 1217818, 136),(
    2521,
    'Tijuana',
    'MEX',
    'Baja California',
    1212232,
    136
  ),(2522, 'LeÃ³n', 'MEX', 'Guanajuato', 1133576, 136),(2523, 'Monterrey', 'MEX', 'Nuevo LeÃ³n', 1108499, 136),(2524, 'Zapopan', 'MEX', 'Jalisco', 1002239, 136),(
    2525,
    'Naucalpan de JuÃ¡rez',
    'MEX',
    'MÃ©xico',
    857511,
    136
  ),(
    2526,
    'Mexicali',
    'MEX',
    'Baja California',
    764902,
    136
  ),(2527, 'CuliacÃ¡n', 'MEX', 'Sinaloa', 744859, 136),(
    2528,
    'Acapulco de JuÃ¡rez',
    'MEX',
    'Guerrero',
    721011,
    136
  ),(
    2529,
    'Tlalnepantla de Baz',
    'MEX',
    'MÃ©xico',
    720755,
    136
  ),(2530, 'MÃ©rida', 'MEX', 'YucatÃ¡n', 703324, 136),(2531, 'Chihuahua', 'MEX', 'Chihuahua', 670208, 136),(
    2532,
    'San Luis PotosÃ­',
    'MEX',
    'San Luis PotosÃ­',
    669353,
    136
  ),(2533, 'Guadalupe', 'MEX', 'Nuevo LeÃ³n', 668780, 136),(2534, 'Toluca', 'MEX', 'MÃ©xico', 665617, 136),(
    2535,
    'Aguascalientes',
    'MEX',
    'Aguascalientes',
    643360,
    136
  ),(
    2536,
    'QuerÃ©taro',
    'MEX',
    'QuerÃ©taro de Arteag',
    639839,
    136
  ),(
    2537,
    'Morelia',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    619958,
    136
  ),(2538, 'Hermosillo', 'MEX', 'Sonora', 608697, 136),(
    2539,
    'Saltillo',
    'MEX',
    'Coahuila de Zaragoza',
    577352,
    136
  ),(
    2540,
    'TorreÃ³n',
    'MEX',
    'Coahuila de Zaragoza',
    529093,
    136
  ),(
    2541,
    'Centro (Villahermosa)',
    'MEX',
    'Tabasco',
    519873,
    136
  ),(
    2542,
    'San NicolÃ¡s de los Garza',
    'MEX',
    'Nuevo LeÃ³n',
    495540,
    136
  ),(2543, 'Durango', 'MEX', 'Durango', 490524, 136),(2544, 'ChimalhuacÃ¡n', 'MEX', 'MÃ©xico', 490245, 136),(2545, 'Tlaquepaque', 'MEX', 'Jalisco', 475472, 136),(
    2546,
    'AtizapÃ¡n de Zaragoza',
    'MEX',
    'MÃ©xico',
    467262,
    136
  ),(2547, 'Veracruz', 'MEX', 'Veracruz', 457119, 136),(
    2548,
    'CuautitlÃ¡n Izcalli',
    'MEX',
    'MÃ©xico',
    452976,
    136
  ),(2549, 'Irapuato', 'MEX', 'Guanajuato', 440039, 136),(
    2550,
    'Tuxtla GutiÃ©rrez',
    'MEX',
    'Chiapas',
    433544,
    136
  ),(2551, 'TultitlÃ¡n', 'MEX', 'MÃ©xico', 432411, 136),(2552, 'Reynosa', 'MEX', 'Tamaulipas', 419776, 136),(
    2553,
    'Benito JuÃ¡rez',
    'MEX',
    'Quintana Roo',
    419276,
    136
  ),(2554, 'Matamoros', 'MEX', 'Tamaulipas', 416428, 136),(2555, 'Xalapa', 'MEX', 'Veracruz', 390058, 136),(2556, 'Celaya', 'MEX', 'Guanajuato', 382140, 136),(2557, 'MazatlÃ¡n', 'MEX', 'Sinaloa', 380265, 136),(
    2558,
    'Ensenada',
    'MEX',
    'Baja California',
    369573,
    136
  ),(2559, 'Ahome', 'MEX', 'Sinaloa', 358663, 136),(2560, 'Cajeme', 'MEX', 'Sonora', 355679, 136),(2561, 'Cuernavaca', 'MEX', 'Morelos', 337966, 136),(2562, 'TonalÃ¡', 'MEX', 'Jalisco', 336109, 136),(
    2563,
    'Valle de Chalco Solidaridad',
    'MEX',
    'MÃ©xico',
    323113,
    136
  ),(
    2564,
    'Nuevo Laredo',
    'MEX',
    'Tamaulipas',
    310277,
    136
  ),(2565, 'Tepic', 'MEX', 'Nayarit', 305025, 136),(2566, 'Tampico', 'MEX', 'Tamaulipas', 294789, 136),(2567, 'Ixtapaluca', 'MEX', 'MÃ©xico', 293160, 136),(2568, 'Apodaca', 'MEX', 'Nuevo LeÃ³n', 282941, 136),(2569, 'Guasave', 'MEX', 'Sinaloa', 277201, 136),(2570, 'GÃ³mez Palacio', 'MEX', 'Durango', 272806, 136),(2571, 'Tapachula', 'MEX', 'Chiapas', 271141, 136),(
    2572,
    'NicolÃ¡s Romero',
    'MEX',
    'MÃ©xico',
    269393,
    136
  ),(2573, 'Coatzacoalcos', 'MEX', 'Veracruz', 267037, 136),(
    2574,
    'Uruapan',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    265211,
    136
  ),(2575, 'Victoria', 'MEX', 'Tamaulipas', 262686, 136),(
    2576,
    'Oaxaca de JuÃ¡rez',
    'MEX',
    'Oaxaca',
    256848,
    136
  ),(
    2577,
    'Coacalco de BerriozÃ¡bal',
    'MEX',
    'MÃ©xico',
    252270,
    136
  ),(
    2578,
    'Pachuca de Soto',
    'MEX',
    'Hidalgo',
    244688,
    136
  ),(
    2579,
    'General Escobedo',
    'MEX',
    'Nuevo LeÃ³n',
    232961,
    136
  ),(2580, 'Salamanca', 'MEX', 'Guanajuato', 226864, 136),(
    2581,
    'Santa Catarina',
    'MEX',
    'Nuevo LeÃ³n',
    226573,
    136
  ),(2582, 'TehuacÃ¡n', 'MEX', 'Puebla', 225943, 136),(2583, 'Chalco', 'MEX', 'MÃ©xico', 222201, 136),(2584, 'CÃ¡rdenas', 'MEX', 'Tabasco', 216903, 136),(2585, 'Campeche', 'MEX', 'Campeche', 216735, 136),(2586, 'La Paz', 'MEX', 'MÃ©xico', 213045, 136),(
    2587,
    'OthÃ³n P. Blanco (Chetumal)',
    'MEX',
    'Quintana Roo',
    208014,
    136
  ),(2588, 'Texcoco', 'MEX', 'MÃ©xico', 203681, 136),(
    2589,
    'La Paz',
    'MEX',
    'Baja California Sur',
    196708,
    136
  ),(2590, 'Metepec', 'MEX', 'MÃ©xico', 194265, 136),(
    2591,
    'Monclova',
    'MEX',
    'Coahuila de Zaragoza',
    193657,
    136
  ),(2592, 'Huixquilucan', 'MEX', 'MÃ©xico', 193156, 136),(
    2593,
    'Chilpancingo de los Bravo',
    'MEX',
    'Guerrero',
    192509,
    136
  ),(
    2594,
    'Puerto Vallarta',
    'MEX',
    'Jalisco',
    183741,
    136
  ),(2595, 'Fresnillo', 'MEX', 'Zacatecas', 182744, 136),(
    2596,
    'Ciudad Madero',
    'MEX',
    'Tamaulipas',
    182012,
    136
  ),(
    2597,
    'Soledad de Graciano SÃ¡nchez',
    'MEX',
    'San Luis PotosÃ­',
    179956,
    136
  ),(
    2598,
    'San Juan del RÃ­o',
    'MEX',
    'QuerÃ©taro',
    179300,
    136
  ),(
    2599,
    'San Felipe del Progreso',
    'MEX',
    'MÃ©xico',
    177330,
    136
  ),(2600, 'CÃ³rdoba', 'MEX', 'Veracruz', 176952, 136),(2601, 'TecÃ¡mac', 'MEX', 'MÃ©xico', 172410, 136),(2602, 'Ocosingo', 'MEX', 'Chiapas', 171495, 136),(2603, 'Carmen', 'MEX', 'Campeche', 171367, 136),(
    2604,
    'LÃ¡zaro CÃ¡rdenas',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    170878,
    136
  ),(2605, 'Jiutepec', 'MEX', 'Morelos', 170428, 136),(2606, 'Papantla', 'MEX', 'Veracruz', 170123, 136),(2607, 'Comalcalco', 'MEX', 'Tabasco', 164640, 136),(
    2608,
    'Zamora',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    161191,
    136
  ),(2609, 'Nogales', 'MEX', 'Sonora', 159103, 136),(2610, 'Huimanguillo', 'MEX', 'Tabasco', 158335, 136),(2611, 'Cuautla', 'MEX', 'Morelos', 153132, 136),(2612, 'MinatitlÃ¡n', 'MEX', 'Veracruz', 152983, 136),(
    2613,
    'Poza Rica de Hidalgo',
    'MEX',
    'Veracruz',
    152678,
    136
  ),(
    2614,
    'Ciudad Valles',
    'MEX',
    'San Luis PotosÃ­',
    146411,
    136
  ),(2615, 'Navolato', 'MEX', 'Sinaloa', 145396, 136),(
    2616,
    'San Luis RÃ­o Colorado',
    'MEX',
    'Sonora',
    145276,
    136
  ),(2617, 'PÃ©njamo', 'MEX', 'Guanajuato', 143927, 136),(
    2618,
    'San AndrÃ©s Tuxtla',
    'MEX',
    'Veracruz',
    142251,
    136
  ),(2619, 'Guanajuato', 'MEX', 'Guanajuato', 141215, 136),(2620, 'Navojoa', 'MEX', 'Sonora', 140495, 136),(
    2621,
    'ZitÃ¡cuaro',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    137970,
    136
  ),(
    2622,
    'Boca del RÃ­o',
    'MEX',
    'Veracruz-Llave',
    135721,
    136
  ),(2623, 'Allende', 'MEX', 'Guanajuato', 134645, 136),(2624, 'Silao', 'MEX', 'Guanajuato', 134037, 136),(2625, 'Macuspana', 'MEX', 'Tabasco', 133795, 136),(
    2626,
    'San Juan Bautista Tuxtepec',
    'MEX',
    'Oaxaca',
    133675,
    136
  ),(
    2627,
    'San CristÃ³bal de las Casas',
    'MEX',
    'Chiapas',
    132317,
    136
  ),(
    2628,
    'Valle de Santiago',
    'MEX',
    'Guanajuato',
    130557,
    136
  ),(2629, 'Guaymas', 'MEX', 'Sonora', 130108, 136),(2630, 'Colima', 'MEX', 'Colima', 129454, 136),(
    2631,
    'Dolores Hidalgo',
    'MEX',
    'Guanajuato',
    128675,
    136
  ),(
    2632,
    'Lagos de Moreno',
    'MEX',
    'Jalisco',
    127949,
    136
  ),(
    2633,
    'Piedras Negras',
    'MEX',
    'Coahuila de Zaragoza',
    127898,
    136
  ),(2634, 'Altamira', 'MEX', 'Tamaulipas', 127490, 136),(2635, 'TÃºxpam', 'MEX', 'Veracruz', 126475, 136),(
    2636,
    'San Pedro Garza GarcÃ­a',
    'MEX',
    'Nuevo LeÃ³n',
    126147,
    136
  ),(2637, 'CuauhtÃ©moc', 'MEX', 'Chihuahua', 124279, 136),(2638, 'Manzanillo', 'MEX', 'Colima', 124014, 136),(
    2639,
    'Iguala de la Independencia',
    'MEX',
    'Guerrero',
    123883,
    136
  ),(2640, 'Zacatecas', 'MEX', 'Zacatecas', 123700, 136),(
    2641,
    'Tlajomulco de ZÃºÃ±iga',
    'MEX',
    'Jalisco',
    123220,
    136
  ),(
    2642,
    'Tulancingo de Bravo',
    'MEX',
    'Hidalgo',
    121946,
    136
  ),(2643, 'Zinacantepec', 'MEX', 'MÃ©xico', 121715, 136),(
    2644,
    'San MartÃ­n Texmelucan',
    'MEX',
    'Puebla',
    121093,
    136
  ),(
    2645,
    'TepatitlÃ¡n de Morelos',
    'MEX',
    'Jalisco',
    118948,
    136
  ),(
    2646,
    'MartÃ­nez de la Torre',
    'MEX',
    'Veracruz',
    118815,
    136
  ),(2647, 'Orizaba', 'MEX', 'Veracruz', 118488, 136),(
    2648,
    'ApatzingÃ¡n',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    117849,
    136
  ),(2649, 'Atlixco', 'MEX', 'Puebla', 117019, 136),(2650, 'Delicias', 'MEX', 'Chihuahua', 116132, 136),(2651, 'Ixtlahuaca', 'MEX', 'MÃ©xico', 115548, 136),(2652, 'El Mante', 'MEX', 'Tamaulipas', 112453, 136),(2653, 'Lerdo', 'MEX', 'Durango', 112272, 136),(
    2654,
    'Almoloya de JuÃ¡rez',
    'MEX',
    'MÃ©xico',
    110550,
    136
  ),(2655, 'AcÃ¡mbaro', 'MEX', 'Guanajuato', 110487, 136),(
    2656,
    'AcuÃ±a',
    'MEX',
    'Coahuila de Zaragoza',
    110388,
    136
  ),(2657, 'Guadalupe', 'MEX', 'Zacatecas', 108881, 136),(
    2658,
    'Huejutla de Reyes',
    'MEX',
    'Hidalgo',
    108017,
    136
  ),(
    2659,
    'Hidalgo',
    'MEX',
    'MichoacÃ¡n de Ocampo',
    106198,
    136
  ),(
    2660,
    'Los Cabos',
    'MEX',
    'Baja California Sur',
    105199,
    136
  ),(
    2661,
    'ComitÃ¡n de DomÃ­nguez',
    'MEX',
    'Chiapas',
    104986,
    136
  ),(2662, 'CunduacÃ¡n', 'MEX', 'Tabasco', 104164, 136),(2663, 'RÃ­o Bravo', 'MEX', 'Tamaulipas', 103901, 136),(2664, 'Temapache', 'MEX', 'Veracruz', 102824, 136),(
    2665,
    'Chilapa de Alvarez',
    'MEX',
    'Guerrero',
    102716,
    136
  ),(
    2666,
    'Hidalgo del Parral',
    'MEX',
    'Chihuahua',
    100881,
    136
  ),(
    2667,
    'San Francisco del RincÃ³n',
    'MEX',
    'Guanajuato',
    100149,
    136
  ),(
    2668,
    'Taxco de AlarcÃ³n',
    'MEX',
    'Guerrero',
    99907,
    136
  ),(2669, 'Zumpango', 'MEX', 'MÃ©xico', 99781, 136),(
    2670,
    'San Pedro Cholula',
    'MEX',
    'Puebla',
    99734,
    136
  ),(2671, 'Lerma', 'MEX', 'MÃ©xico', 99714, 136),(2672, 'TecomÃ¡n', 'MEX', 'Colima', 99296, 136),(2673, 'Las Margaritas', 'MEX', 'Chiapas', 97389, 136),(2674, 'Cosoleacaque', 'MEX', 'Veracruz', 97199, 136),(
    2675,
    'San Luis de la Paz',
    'MEX',
    'Guanajuato',
    96763,
    136
  ),(2676, 'JosÃ© Azueta', 'MEX', 'Guerrero', 95448, 136),(
    2677,
    'Santiago Ixcuintla',
    'MEX',
    'Nayarit',
    95311,
    136
  ),(2678, 'San Felipe', 'MEX', 'Guanajuato', 95305, 136),(2679, 'Tejupilco', 'MEX', 'MÃ©xico', 94934, 136),(2680, 'Tantoyuca', 'MEX', 'Veracruz', 94709, 136),(2681, 'Salvatierra', 'MEX', 'Guanajuato', 94322, 136),(2682, 'Tultepec', 'MEX', 'MÃ©xico', 93364, 136),(2683, 'Temixco', 'MEX', 'Morelos', 92686, 136),(
    2684,
    'Matamoros',
    'MEX',
    'Coahuila de Zaragoza',
    91858,
    136
  ),(2685, 'PÃ¡nuco', 'MEX', 'Veracruz', 90551, 136),(2686, 'El Fuerte', 'MEX', 'Sinaloa', 89556, 136),(2687, 'Tierra Blanca', 'MEX', 'Veracruz', 89143, 136),(2688, 'Weno', 'FSM', 'Chuuk', 22000, 75),(2689, 'Palikir', 'FSM', 'Pohnpei', 8600, 75),(2690, 'Chisinau', 'MDA', 'Chisinau', 719900, 133),(2691, 'Tiraspol', 'MDA', 'Dnjestria', 194300, 133),(2692, 'Balti', 'MDA', 'Balti', 153400, 133),(
    2693,
    'Bender (TÃ®ghina)',
    'MDA',
    'Bender (TÃ®ghina)',
    125700,
    133
  ),(2694, 'Monte-Carlo', 'MCO', 'Â–', 13154, 132),(2695, 'Monaco-Ville', 'MCO', 'Â–', 1234, 132),(2696, 'Ulan Bator', 'MNG', 'Ulaanbaatar', 773700, 142),(2697, 'Plymouth', 'MSR', 'Plymouth', 2000, 146),(2698, 'Maputo', 'MOZ', 'Maputo', 1018938, 144),(2699, 'Matola', 'MOZ', 'Maputo', 424662, 144),(2700, 'Beira', 'MOZ', 'Sofala', 397368, 144),(2701, 'Nampula', 'MOZ', 'Nampula', 303346, 144),(2702, 'Chimoio', 'MOZ', 'Manica', 171056, 144),(2703, 'NaÃ§ala-Porto', 'MOZ', 'Nampula', 158248, 144),(2704, 'Quelimane', 'MOZ', 'ZambÃ©zia', 150116, 144),(2705, 'Mocuba', 'MOZ', 'ZambÃ©zia', 124700, 144),(2706, 'Tete', 'MOZ', 'Tete', 101984, 144),(2707, 'Xai-Xai', 'MOZ', 'Gaza', 99442, 144),(2708, 'Gurue', 'MOZ', 'ZambÃ©zia', 99300, 144),(2709, 'Maxixe', 'MOZ', 'Inhambane', 93985, 144),(
    2710,
    'Rangoon (Yangon)',
    'MMR',
    'Rangoon [Yangon]',
    3361700,
    141
  ),(2711, 'Mandalay', 'MMR', 'Mandalay', 885300, 141),(
    2712,
    'Moulmein (Mawlamyine)',
    'MMR',
    'Mon',
    307900,
    141
  ),(
    2713,
    'Pegu (Bago)',
    'MMR',
    'Pegu [Bago]',
    190900,
    141
  ),(
    2714,
    'Bassein (Pathein)',
    'MMR',
    'Irrawaddy [Ayeyarwad',
    183900,
    141
  ),(2715, 'Monywa', 'MMR', 'Sagaing', 138600, 141),(2716, 'Sittwe (Akyab)', 'MMR', 'Rakhine', 137600, 141),(
    2717,
    'Taunggyi (Taunggye)',
    'MMR',
    'Shan',
    131500,
    141
  ),(2718, 'Meikhtila', 'MMR', 'Mandalay', 129700, 141),(
    2719,
    'Mergui (Myeik)',
    'MMR',
    'Tenasserim [Tanintha',
    122700,
    141
  ),(2720, 'Lashio (Lasho)', 'MMR', 'Shan', 107600, 141),(
    2721,
    'Prome (Pyay)',
    'MMR',
    'Pegu [Bago]',
    105700,
    141
  ),(
    2722,
    'Henzada (Hinthada)',
    'MMR',
    'Irrawaddy [Ayeyarwad',
    104700,
    141
  ),(2723, 'Myingyan', 'MMR', 'Mandalay', 103600, 141),(
    2724,
    'Tavoy (Dawei)',
    'MMR',
    'Tenasserim [Tanintha',
    96800,
    141
  ),(
    2725,
    'Pagakku (Pakokku)',
    'MMR',
    'Magwe [Magway]',
    94800,
    141
  ),(2726, 'Windhoek', 'NAM', 'Khomas', 169000, 152),(2727, 'Yangor', 'NRU', 'Â–', 4050, 162),(2728, 'Yaren', 'NRU', 'Â–', 559, 162),(2729, 'Kathmandu', 'NPL', 'Central', 591835, 161),(2730, 'Biratnagar', 'NPL', 'Eastern', 157764, 161),(2731, 'Pokhara', 'NPL', 'Western', 146318, 161),(2732, 'Lalitapur', 'NPL', 'Central', 145847, 161),(2733, 'Birgunj', 'NPL', 'Central', 90639, 161),(2734, 'Managua', 'NIC', 'Managua', 959000, 157),(2735, 'LeÃ³n', 'NIC', 'LeÃ³n', 123865, 157),(2736, 'Chinandega', 'NIC', 'Chinandega', 97387, 157),(2737, 'Masaya', 'NIC', 'Masaya', 88971, 157),(2738, 'Niamey', 'NER', 'Niamey', 420000, 154),(2739, 'Zinder', 'NER', 'Zinder', 120892, 154),(2740, 'Maradi', 'NER', 'Maradi', 112965, 154),(2741, 'Lagos', 'NGA', 'Lagos', 1518000, 156),(2742, 'Ibadan', 'NGA', 'Oyo & Osun', 1432000, 156),(2743, 'Ogbomosho', 'NGA', 'Oyo & Osun', 730000, 156),(2744, 'Kano', 'NGA', 'Kano & Jigawa', 674100, 156),(2745, 'Oshogbo', 'NGA', 'Oyo & Osun', 476800, 156),(2746, 'Ilorin', 'NGA', 'Kwara & Kogi', 475800, 156),(2747, 'Abeokuta', 'NGA', 'Ogun', 427400, 156),(
    2748,
    'Port Harcourt',
    'NGA',
    'Rivers & Bayelsa',
    410000,
    156
  ),(2749, 'Zaria', 'NGA', 'Kaduna', 379200, 156),(2750, 'Ilesha', 'NGA', 'Oyo & Osun', 378400, 156),(
    2751,
    'Onitsha',
    'NGA',
    'Anambra & Enugu & Eb',
    371900,
    156
  ),(2752, 'Iwo', 'NGA', 'Oyo & Osun', 362000, 156),(2753, 'Ado-Ekiti', 'NGA', 'Ondo & Ekiti', 359400, 156),(
    2754,
    'Abuja',
    'NGA',
    'Federal Capital Dist',
    350100,
    156
  ),(2755, 'Kaduna', 'NGA', 'Kaduna', 342200, 156),(2756, 'Mushin', 'NGA', 'Lagos', 333200, 156),(2757, 'Maiduguri', 'NGA', 'Borno & Yobe', 320000, 156),(
    2758,
    'Enugu',
    'NGA',
    'Anambra & Enugu & Eb',
    316100,
    156
  ),(2759, 'Ede', 'NGA', 'Oyo & Osun', 307100, 156),(2760, 'Aba', 'NGA', 'Imo & Abia', 298900, 156),(2761, 'Ife', 'NGA', 'Oyo & Osun', 296800, 156),(2762, 'Ila', 'NGA', 'Oyo & Osun', 264000, 156),(2763, 'Oyo', 'NGA', 'Oyo & Osun', 256400, 156),(2764, 'Ikerre', 'NGA', 'Ondo & Ekiti', 244600, 156),(2765, 'Benin City', 'NGA', 'Edo & Delta', 229400, 156),(2766, 'Iseyin', 'NGA', 'Oyo & Osun', 217300, 156),(2767, 'Katsina', 'NGA', 'Katsina', 206500, 156),(
    2768,
    'Jos',
    'NGA',
    'Plateau & Nassarawa',
    206300,
    156
  ),(
    2769,
    'Sokoto',
    'NGA',
    'Sokoto & Kebbi & Zam',
    204900,
    156
  ),(2770, 'Ilobu', 'NGA', 'Oyo & Osun', 199000, 156),(2771, 'Offa', 'NGA', 'Kwara & Kogi', 197200, 156),(2772, 'Ikorodu', 'NGA', 'Lagos', 184900, 156),(
    2773,
    'Ilawe-Ekiti',
    'NGA',
    'Ondo & Ekiti',
    184500,
    156
  ),(2774, 'Owo', 'NGA', 'Ondo & Ekiti', 183500, 156),(2775, 'Ikirun', 'NGA', 'Oyo & Osun', 181400, 156),(2776, 'Shaki', 'NGA', 'Oyo & Osun', 174500, 156),(2777, 'Calabar', 'NGA', 'Cross River', 174400, 156),(2778, 'Ondo', 'NGA', 'Ondo & Ekiti', 173600, 156),(2779, 'Akure', 'NGA', 'Ondo & Ekiti', 162300, 156),(
    2780,
    'Gusau',
    'NGA',
    'Sokoto & Kebbi & Zam',
    158000,
    156
  ),(2781, 'Ijebu-Ode', 'NGA', 'Ogun', 156400, 156),(
    2782,
    'Effon-Alaiye',
    'NGA',
    'Oyo & Osun',
    153100,
    156
  ),(2783, 'Kumo', 'NGA', 'Bauchi & Gombe', 148000, 156),(2784, 'Shomolu', 'NGA', 'Lagos', 147700, 156),(2785, 'Oka-Akoko', 'NGA', 'Ondo & Ekiti', 142900, 156),(2786, 'Ikare', 'NGA', 'Ondo & Ekiti', 140800, 156),(2787, 'Sapele', 'NGA', 'Edo & Delta', 139200, 156),(
    2788,
    'Deba Habe',
    'NGA',
    'Bauchi & Gombe',
    138600,
    156
  ),(2789, 'Minna', 'NGA', 'Niger', 136900, 156),(2790, 'Warri', 'NGA', 'Edo & Delta', 126100, 156),(2791, 'Bida', 'NGA', 'Niger', 125500, 156),(2792, 'Ikire', 'NGA', 'Oyo & Osun', 123300, 156),(2793, 'Makurdi', 'NGA', 'Benue', 123100, 156),(
    2794,
    'Lafia',
    'NGA',
    'Plateau & Nassarawa',
    122500,
    156
  ),(2795, 'Inisa', 'NGA', 'Oyo & Osun', 119800, 156),(2796, 'Shagamu', 'NGA', 'Ogun', 117200, 156),(
    2797,
    'Awka',
    'NGA',
    'Anambra & Enugu & Eb',
    111200,
    156
  ),(2798, 'Gombe', 'NGA', 'Bauchi & Gombe', 107800, 156),(2799, 'Igboho', 'NGA', 'Oyo & Osun', 106800, 156),(2800, 'Ejigbo', 'NGA', 'Oyo & Osun', 105900, 156),(2801, 'Agege', 'NGA', 'Lagos', 105000, 156),(2802, 'Ise-Ekiti', 'NGA', 'Ondo & Ekiti', 103400, 156),(2803, 'Ugep', 'NGA', 'Cross River', 102600, 156),(2804, 'Epe', 'NGA', 'Lagos', 101000, 156),(2805, 'Alofi', 'NIU', 'Â–', 682, 158),(2806, 'Kingston', 'NFK', 'Â–', 800, 155),(2807, 'Oslo', 'NOR', 'Oslo', 508726, 160),(2808, 'Bergen', 'NOR', 'Hordaland', 230948, 160),(
    2809,
    'Trondheim',
    'NOR',
    'SÃ¸r-TrÃ¸ndelag',
    150166,
    160
  ),(2810, 'Stavanger', 'NOR', 'Rogaland', 108848, 160),(2811, 'BÃ¦rum', 'NOR', 'Akershus', 101340, 160),(2812, 'Abidjan', 'CIV', 'Abidjan', 2500000, 43),(2813, 'BouakÃ©', 'CIV', 'BouakÃ©', 329850, 43),(
    2814,
    'Yamoussoukro',
    'CIV',
    'Yamoussoukro',
    130000,
    43
  ),(2815, 'Daloa', 'CIV', 'Daloa', 121842, 43),(2816, 'Korhogo', 'CIV', 'Korhogo', 109445, 43),(2817, 'al-Sib', 'OMN', 'Masqat', 155000, 164),(2818, 'Salala', 'OMN', 'Zufar', 131813, 164),(2819, 'Bawshar', 'OMN', 'Masqat', 107500, 164),(2820, 'Suhar', 'OMN', 'al-Batina', 90814, 164),(2821, 'Masqat', 'OMN', 'Masqat', 51969, 164),(2822, 'Karachi', 'PAK', 'Sindh', 9269265, 165),(2823, 'Lahore', 'PAK', 'Punjab', 5063499, 165),(2824, 'Faisalabad', 'PAK', 'Punjab', 1977246, 165),(2825, 'Rawalpindi', 'PAK', 'Punjab', 1406214, 165),(2826, 'Multan', 'PAK', 'Punjab', 1182441, 165),(2827, 'Hyderabad', 'PAK', 'Sindh', 1151274, 165),(2828, 'Gujranwala', 'PAK', 'Punjab', 1124749, 165),(
    2829,
    'Peshawar',
    'PAK',
    'Nothwest Border Prov',
    988005,
    165
  ),(2830, 'Quetta', 'PAK', 'Baluchistan', 560307, 165),(2831, 'Islamabad', 'PAK', 'Islamabad', 524500, 165),(2832, 'Sargodha', 'PAK', 'Punjab', 455360, 165),(2833, 'Sialkot', 'PAK', 'Punjab', 417597, 165),(2834, 'Bahawalpur', 'PAK', 'Punjab', 403408, 165),(2835, 'Sukkur', 'PAK', 'Sindh', 329176, 165),(2836, 'Jhang', 'PAK', 'Punjab', 292214, 165),(2837, 'Sheikhupura', 'PAK', 'Punjab', 271875, 165),(2838, 'Larkana', 'PAK', 'Sindh', 270366, 165),(2839, 'Gujrat', 'PAK', 'Punjab', 250121, 165),(
    2840,
    'Mardan',
    'PAK',
    'Nothwest Border Prov',
    244511,
    165
  ),(2841, 'Kasur', 'PAK', 'Punjab', 241649, 165),(2842, 'Rahim Yar Khan', 'PAK', 'Punjab', 228479, 165),(2843, 'Sahiwal', 'PAK', 'Punjab', 207388, 165),(2844, 'Okara', 'PAK', 'Punjab', 200901, 165),(2845, 'Wah', 'PAK', 'Punjab', 198400, 165),(2846, 'Dera Ghazi Khan', 'PAK', 'Punjab', 188100, 165),(2847, 'Mirpur Khas', 'PAK', 'Sind', 184500, 165),(2848, 'Nawabshah', 'PAK', 'Sind', 183100, 165),(
    2849,
    'Mingora',
    'PAK',
    'Nothwest Border Prov',
    174500,
    165
  ),(2850, 'Chiniot', 'PAK', 'Punjab', 169300, 165),(2851, 'Kamoke', 'PAK', 'Punjab', 151000, 165),(2852, 'Mandi Burewala', 'PAK', 'Punjab', 149900, 165),(2853, 'Jhelum', 'PAK', 'Punjab', 145800, 165),(2854, 'Sadiqabad', 'PAK', 'Punjab', 141500, 165),(2855, 'Jacobabad', 'PAK', 'Sind', 137700, 165),(2856, 'Shikarpur', 'PAK', 'Sind', 133300, 165),(2857, 'Khanewal', 'PAK', 'Punjab', 133000, 165),(2858, 'Hafizabad', 'PAK', 'Punjab', 130200, 165),(
    2859,
    'Kohat',
    'PAK',
    'Nothwest Border Prov',
    125300,
    165
  ),(2860, 'Muzaffargarh', 'PAK', 'Punjab', 121600, 165),(2861, 'Khanpur', 'PAK', 'Punjab', 117800, 165),(2862, 'Gojra', 'PAK', 'Punjab', 115000, 165),(2863, 'Bahawalnagar', 'PAK', 'Punjab', 109600, 165),(2864, 'Muridke', 'PAK', 'Punjab', 108600, 165),(2865, 'Pak Pattan', 'PAK', 'Punjab', 107800, 165),(
    2866,
    'Abottabad',
    'PAK',
    'Nothwest Border Prov',
    106000,
    165
  ),(2867, 'Tando Adam', 'PAK', 'Sind', 103400, 165),(2868, 'Jaranwala', 'PAK', 'Punjab', 103300, 165),(2869, 'Khairpur', 'PAK', 'Sind', 102200, 165),(2870, 'Chishtian Mandi', 'PAK', 'Punjab', 101700, 165),(2871, 'Daska', 'PAK', 'Punjab', 101500, 165),(2872, 'Dadu', 'PAK', 'Sind', 98600, 165),(2873, 'Mandi Bahauddin', 'PAK', 'Punjab', 97300, 165),(2874, 'Ahmadpur East', 'PAK', 'Punjab', 96000, 165),(2875, 'Kamalia', 'PAK', 'Punjab', 95300, 165),(2876, 'Khuzdar', 'PAK', 'Baluchistan', 93100, 165),(2877, 'Vihari', 'PAK', 'Punjab', 92300, 165),(
    2878,
    'Dera Ismail Khan',
    'PAK',
    'Nothwest Border Prov',
    90400,
    165
  ),(2879, 'Wazirabad', 'PAK', 'Punjab', 89700, 165),(
    2880,
    'Nowshera',
    'PAK',
    'Nothwest Border Prov',
    89400,
    165
  ),(2881, 'Koror', 'PLW', 'Koror', 12000, 170),(
    2882,
    'Ciudad de PanamÃ¡',
    'PAN',
    'PanamÃ¡',
    471373,
    166
  ),(
    2883,
    'San Miguelito',
    'PAN',
    'San Miguelito',
    315382,
    166
  ),(
    2884,
    'Port Moresby',
    'PNG',
    'National Capital Dis',
    247000,
    171
  ),(2885, 'AsunciÃ³n', 'PRY', 'AsunciÃ³n', 557776, 176),(
    2886,
    'Ciudad del Este',
    'PRY',
    'Alto ParanÃ¡',
    133881,
    176
  ),(2887, 'San Lorenzo', 'PRY', 'Central', 133395, 176),(2888, 'LambarÃ©', 'PRY', 'Central', 99681, 176),(
    2889,
    'Fernando de la Mora',
    'PRY',
    'Central',
    95287,
    176
  ),(2890, 'Lima', 'PER', 'Lima', 6464693, 168),(2891, 'Arequipa', 'PER', 'Arequipa', 762000, 168),(2892, 'Trujillo', 'PER', 'La Libertad', 652000, 168),(2893, 'Chiclayo', 'PER', 'Lambayeque', 517000, 168),(2894, 'Callao', 'PER', 'Callao', 424294, 168),(2895, 'Iquitos', 'PER', 'Loreto', 367000, 168),(2896, 'Chimbote', 'PER', 'Ancash', 336000, 168),(2897, 'Huancayo', 'PER', 'JunÃ­n', 327000, 168),(2898, 'Piura', 'PER', 'Piura', 325000, 168),(2899, 'Cusco', 'PER', 'Cusco', 291000, 168),(2900, 'Pucallpa', 'PER', 'Ucayali', 220866, 168),(2901, 'Tacna', 'PER', 'Tacna', 215683, 168),(2902, 'Ica', 'PER', 'Ica', 194820, 168),(2903, 'Sullana', 'PER', 'Piura', 147361, 168),(2904, 'Juliaca', 'PER', 'Puno', 142576, 168),(2905, 'HuÃ¡nuco', 'PER', 'Huanuco', 129688, 168),(2906, 'Ayacucho', 'PER', 'Ayacucho', 118960, 168),(2907, 'Chincha Alta', 'PER', 'Ica', 110016, 168),(2908, 'Cajamarca', 'PER', 'Cajamarca', 108009, 168),(2909, 'Puno', 'PER', 'Puno', 101578, 168),(2910, 'Ventanilla', 'PER', 'Callao', 101056, 168),(2911, 'Castilla', 'PER', 'Piura', 90642, 168),(2912, 'Adamstown', 'PCN', 'Â–', 42, 167),(2913, 'Garapan', 'MNP', 'Saipan', 9200, 143),(2914, 'Lisboa', 'PRT', 'Lisboa', 563210, 175),(2915, 'Porto', 'PRT', 'Porto', 273060, 175),(2916, 'Amadora', 'PRT', 'Lisboa', 122106, 175),(2917, 'CoÃ­mbra', 'PRT', 'CoÃ­mbra', 96100, 175),(2918, 'Braga', 'PRT', 'Braga', 90535, 175),(2919, 'San Juan', 'PRI', 'San Juan', 434374, 173),(2920, 'BayamÃ³n', 'PRI', 'BayamÃ³n', 224044, 173),(2921, 'Ponce', 'PRI', 'Ponce', 186475, 173),(2922, 'Carolina', 'PRI', 'Carolina', 186076, 173),(2923, 'Caguas', 'PRI', 'Caguas', 140502, 173),(2924, 'Arecibo', 'PRI', 'Arecibo', 100131, 173),(2925, 'Guaynabo', 'PRI', 'Guaynabo', 100053, 173),(2926, 'MayagÃ¼ez', 'PRI', 'MayagÃ¼ez', 98434, 173),(2927, 'Toa Baja', 'PRI', 'Toa Baja', 94085, 173),(2928, 'Warszawa', 'POL', 'Mazowieckie', 1615369, 172),(2929, 'LÃ³dz', 'POL', 'Lodzkie', 800110, 172),(2930, 'KrakÃ³w', 'POL', 'Malopolskie', 738150, 172),(2931, 'Wroclaw', 'POL', 'Dolnoslaskie', 636765, 172),(2932, 'Poznan', 'POL', 'Wielkopolskie', 576899, 172),(2933, 'Gdansk', 'POL', 'Pomorskie', 458988, 172),(
    2934,
    'Szczecin',
    'POL',
    'Zachodnio-Pomorskie',
    416988,
    172
  ),(
    2935,
    'Bydgoszcz',
    'POL',
    'Kujawsko-Pomorskie',
    386855,
    172
  ),(2936, 'Lublin', 'POL', 'Lubelskie', 356251, 172),(2937, 'Katowice', 'POL', 'Slaskie', 345934, 172),(2938, 'Bialystok', 'POL', 'Podlaskie', 283937, 172),(2939, 'Czestochowa', 'POL', 'Slaskie', 257812, 172),(2940, 'Gdynia', 'POL', 'Pomorskie', 253521, 172),(2941, 'Sosnowiec', 'POL', 'Slaskie', 244102, 172),(2942, 'Radom', 'POL', 'Mazowieckie', 232262, 172),(2943, 'Kielce', 'POL', 'Swietokrzyskie', 212383, 172),(2944, 'Gliwice', 'POL', 'Slaskie', 212164, 172),(
    2945,
    'Torun',
    'POL',
    'Kujawsko-Pomorskie',
    206158,
    172
  ),(2946, 'Bytom', 'POL', 'Slaskie', 205560, 172),(2947, 'Zabrze', 'POL', 'Slaskie', 200177, 172),(2948, 'Bielsko-Biala', 'POL', 'Slaskie', 180307, 172),(
    2949,
    'Olsztyn',
    'POL',
    'Warminsko-Mazurskie',
    170904,
    172
  ),(2950, 'RzeszÃ³w', 'POL', 'Podkarpackie', 162049, 172),(2951, 'Ruda Slaska', 'POL', 'Slaskie', 159665, 172),(2952, 'Rybnik', 'POL', 'Slaskie', 144582, 172),(2953, 'Walbrzych', 'POL', 'Dolnoslaskie', 136923, 172),(2954, 'Tychy', 'POL', 'Slaskie', 133178, 172),(
    2955,
    'Dabrowa GÃ³rnicza',
    'POL',
    'Slaskie',
    131037,
    172
  ),(2956, 'Plock', 'POL', 'Mazowieckie', 131011, 172),(
    2957,
    'Elblag',
    'POL',
    'Warminsko-Mazurskie',
    129782,
    172
  ),(2958, 'Opole', 'POL', 'Opolskie', 129553, 172),(
    2959,
    'GorzÃ³w Wielkopolski',
    'POL',
    'Lubuskie',
    126019,
    172
  ),(
    2960,
    'Wloclawek',
    'POL',
    'Kujawsko-Pomorskie',
    123373,
    172
  ),(2961, 'ChorzÃ³w', 'POL', 'Slaskie', 121708, 172),(2962, 'TarnÃ³w', 'POL', 'Malopolskie', 121494, 172),(2963, 'Zielona GÃ³ra', 'POL', 'Lubuskie', 118182, 172),(
    2964,
    'Koszalin',
    'POL',
    'Zachodnio-Pomorskie',
    112375,
    172
  ),(2965, 'Legnica', 'POL', 'Dolnoslaskie', 109335, 172),(2966, 'Kalisz', 'POL', 'Wielkopolskie', 106641, 172),(
    2967,
    'Grudziadz',
    'POL',
    'Kujawsko-Pomorskie',
    102434,
    172
  ),(2968, 'Slupsk', 'POL', 'Pomorskie', 102370, 172),(
    2969,
    'Jastrzebie-ZdrÃ³j',
    'POL',
    'Slaskie',
    102294,
    172
  ),(2970, 'Jaworzno', 'POL', 'Slaskie', 97929, 172),(
    2971,
    'Jelenia GÃ³ra',
    'POL',
    'Dolnoslaskie',
    93901,
    172
  ),(2972, 'Malabo', 'GNQ', 'Bioko', 40000, 85),(2973, 'Doha', 'QAT', 'Doha', 355000, 179),(2974, 'Paris', 'FRA', 'ÃŽle-de-France', 2125246, 73),(
    2975,
    'Marseille',
    'FRA',
    'Provence-Alpes-CÃ´te',
    798430,
    73
  ),(2976, 'Lyon', 'FRA', 'RhÃ´ne-Alpes', 445452, 73),(
    2977,
    'Toulouse',
    'FRA',
    'Midi-PyrÃ©nÃ©es',
    390350,
    73
  ),(
    2978,
    'Nice',
    'FRA',
    'Provence-Alpes-CÃ´te',
    342738,
    73
  ),(2979, 'Nantes', 'FRA', 'Pays de la Loire', 270251, 73),(2980, 'Strasbourg', 'FRA', 'Alsace', 264115, 73),(
    2981,
    'Montpellier',
    'FRA',
    'Languedoc-Roussillon',
    225392,
    73
  ),(2982, 'Bordeaux', 'FRA', 'Aquitaine', 215363, 73),(2983, 'Rennes', 'FRA', 'Haute-Normandie', 206229, 73),(
    2984,
    'Le Havre',
    'FRA',
    'Champagne-Ardenne',
    190905,
    73
  ),(
    2985,
    'Reims',
    'FRA',
    'Nord-Pas-de-Calais',
    187206,
    73
  ),(2986, 'Lille', 'FRA', 'RhÃ´ne-Alpes', 184657, 73),(2987, 'St-Ã‰tienne', 'FRA', 'Bretagne', 180210, 73),(
    2988,
    'Toulon',
    'FRA',
    'Provence-Alpes-CÃ´te',
    160639,
    73
  ),(2989, 'Grenoble', 'FRA', 'RhÃ´ne-Alpes', 153317, 73),(2990, 'Angers', 'FRA', 'Pays de la Loire', 151279, 73),(2991, 'Dijon', 'FRA', 'Bourgogne', 149867, 73),(2992, 'Brest', 'FRA', 'Bretagne', 149634, 73),(
    2993,
    'Le Mans',
    'FRA',
    'Pays de la Loire',
    146105,
    73
  ),(
    2994,
    'Clermont-Ferrand',
    'FRA',
    'Auvergne',
    137140,
    73
  ),(2995, 'Amiens', 'FRA', 'Picardie', 135501, 73),(
    2996,
    'Aix-en-Provence',
    'FRA',
    'Provence-Alpes-CÃ´te',
    134222,
    73
  ),(2997, 'Limoges', 'FRA', 'Limousin', 133968, 73),(
    2998,
    'NÃ®mes',
    'FRA',
    'Languedoc-Roussillon',
    133424,
    73
  ),(2999, 'Tours', 'FRA', 'Centre', 132820, 73),(
    3000,
    'Villeurbanne',
    'FRA',
    'RhÃ´ne-Alpes',
    124215,
    73
  ),(3001, 'Metz', 'FRA', 'Lorraine', 123776, 73),(
    3002,
    'BesanÃ§on',
    'FRA',
    'Franche-ComtÃ©',
    117733,
    73
  ),(3003, 'Caen', 'FRA', 'Basse-Normandie', 113987, 73),(3004, 'OrlÃ©ans', 'FRA', 'Centre', 113126, 73),(3005, 'Mulhouse', 'FRA', 'Alsace', 110359, 73),(3006, 'Rouen', 'FRA', 'Haute-Normandie', 106592, 73),(
    3007,
    'Boulogne-Billancourt',
    'FRA',
    'ÃŽle-de-France',
    106367,
    73
  ),(
    3008,
    'Perpignan',
    'FRA',
    'Languedoc-Roussillon',
    105115,
    73
  ),(3009, 'Nancy', 'FRA', 'Lorraine', 103605, 73),(
    3010,
    'Roubaix',
    'FRA',
    'Nord-Pas-de-Calais',
    96984,
    73
  ),(
    3011,
    'Argenteuil',
    'FRA',
    'ÃŽle-de-France',
    93961,
    73
  ),(
    3012,
    'Tourcoing',
    'FRA',
    'Nord-Pas-de-Calais',
    93540,
    73
  ),(3013, 'Montreuil', 'FRA', 'ÃŽle-de-France', 90674, 73),(3014, 'Cayenne', 'GUF', 'Cayenne', 50699, 90),(3015, 'Faaa', 'PYF', 'Tahiti', 25888, 178),(3016, 'Papeete', 'PYF', 'Tahiti', 25553, 178),(
    3017,
    'Saint-Denis',
    'REU',
    'Saint-Denis',
    131480,
    180
  ),(3018, 'Bucuresti', 'ROM', 'Bukarest', 2016131, 181),(3019, 'Iasi', 'ROM', 'Iasi', 348070, 181),(3020, 'Constanta', 'ROM', 'Constanta', 342264, 181),(3021, 'Cluj-Napoca', 'ROM', 'Cluj', 332498, 181),(3022, 'Galati', 'ROM', 'Galati', 330276, 181),(3023, 'Timisoara', 'ROM', 'Timis', 324304, 181),(3024, 'Brasov', 'ROM', 'Brasov', 314225, 181),(3025, 'Craiova', 'ROM', 'Dolj', 313530, 181),(3026, 'Ploiesti', 'ROM', 'Prahova', 251348, 181),(3027, 'Braila', 'ROM', 'Braila', 233756, 181),(3028, 'Oradea', 'ROM', 'Bihor', 222239, 181),(3029, 'Bacau', 'ROM', 'Bacau', 209235, 181),(3030, 'Pitesti', 'ROM', 'Arges', 187170, 181),(3031, 'Arad', 'ROM', 'Arad', 184408, 181),(3032, 'Sibiu', 'ROM', 'Sibiu', 169611, 181),(3033, 'TÃ¢rgu Mures', 'ROM', 'Mures', 165153, 181),(3034, 'Baia Mare', 'ROM', 'Maramures', 149665, 181),(3035, 'Buzau', 'ROM', 'Buzau', 148372, 181),(3036, 'Satu Mare', 'ROM', 'Satu Mare', 130059, 181),(3037, 'Botosani', 'ROM', 'Botosani', 128730, 181),(3038, 'Piatra Neamt', 'ROM', 'Neamt', 125070, 181),(
    3039,
    'RÃ¢mnicu VÃ¢lcea',
    'ROM',
    'VÃ¢lcea',
    119741,
    181
  ),(3040, 'Suceava', 'ROM', 'Suceava', 118549, 181),(
    3041,
    'Drobeta-Turnu Severin',
    'ROM',
    'Mehedinti',
    117865,
    181
  ),(3042, 'TÃ¢rgoviste', 'ROM', 'DÃ¢mbovita', 98980, 181),(3043, 'Focsani', 'ROM', 'Vrancea', 98979, 181),(3044, 'TÃ¢rgu Jiu', 'ROM', 'Gorj', 98524, 181),(3045, 'Tulcea', 'ROM', 'Tulcea', 96278, 181),(3046, 'Resita', 'ROM', 'Caras-Severin', 93976, 181),(3047, 'Kigali', 'RWA', 'Kigali', 286000, 183),(3048, 'Stockholm', 'SWE', 'Lisboa', 750348, 201),(
    3049,
    'Gothenburg [GÃ¶teborg]',
    'SWE',
    'West GÃ¶tanmaan lÃ¤n',
    466990,
    201
  ),(3050, 'MalmÃ¶', 'SWE', 'SkÃ¥ne lÃ¤n', 259579, 201),(3051, 'Uppsala', 'SWE', 'Uppsala lÃ¤n', 189569, 201),(
    3052,
    'LinkÃ¶ping',
    'SWE',
    'East GÃ¶tanmaan lÃ¤n',
    133168,
    201
  ),(
    3053,
    'VÃ¤sterÃ¥s',
    'SWE',
    'VÃ¤stmanlands lÃ¤n',
    126328,
    201
  ),(3054, 'Ã–rebro', 'SWE', 'Ã–rebros lÃ¤n', 124207, 201),(
    3055,
    'NorrkÃ¶ping',
    'SWE',
    'East GÃ¶tanmaan lÃ¤n',
    122199,
    201
  ),(
    3056,
    'Helsingborg',
    'SWE',
    'SkÃ¥ne lÃ¤n',
    117737,
    201
  ),(
    3057,
    'JÃ¶nkÃ¶ping',
    'SWE',
    'JÃ¶nkÃ¶pings lÃ¤n',
    117095,
    201
  ),(
    3058,
    'UmeÃ¥',
    'SWE',
    'VÃ¤sterbottens lÃ¤n',
    104512,
    201
  ),(3059, 'Lund', 'SWE', 'SkÃ¥ne lÃ¤n', 98948, 201),(
    3060,
    'BorÃ¥s',
    'SWE',
    'West GÃ¶tanmaan lÃ¤n',
    96883,
    201
  ),(
    3061,
    'Sundsvall',
    'SWE',
    'VÃ¤sternorrlands lÃ¤',
    93126,
    201
  ),(3062, 'GÃ¤vle', 'SWE', 'GÃ¤vleborgs lÃ¤n', 90742, 201),(3063, 'Jamestown', 'SHN', 'Saint Helena', 1500, 189),(
    3064,
    'Basseterre',
    'KNA',
    'St George Basseterre',
    11600,
    116
  ),(3065, 'Castries', 'LCA', 'Castries', 2301, 123),(3066, 'Kingstown', 'VCT', 'St George', 17100, 227),(
    3067,
    'Saint-Pierre',
    'SPM',
    'Saint-Pierre',
    5808,
    196
  ),(3068, 'Berlin', 'DEU', 'Berliini', 3386667, 57),(3069, 'Hamburg', 'DEU', 'Hamburg', 1704735, 57),(
    3070,
    'Munich [MÃ¼nchen]',
    'DEU',
    'Baijeri',
    1194560,
    57
  ),(
    3071,
    'KÃ¶ln',
    'DEU',
    'Nordrhein-Westfalen',
    962507,
    57
  ),(
    3072,
    'Frankfurt am Main',
    'DEU',
    'Hessen',
    643821,
    57
  ),(
    3073,
    'Essen',
    'DEU',
    'Nordrhein-Westfalen',
    599515,
    57
  ),(
    3074,
    'Dortmund',
    'DEU',
    'Nordrhein-Westfalen',
    590213,
    57
  ),(
    3075,
    'Stuttgart',
    'DEU',
    'Baden-WÃ¼rttemberg',
    582443,
    57
  ),(
    3076,
    'DÃ¼sseldorf',
    'DEU',
    'Nordrhein-Westfalen',
    568855,
    57
  ),(3077, 'Bremen', 'DEU', 'Bremen', 540330, 57),(
    3078,
    'Duisburg',
    'DEU',
    'Nordrhein-Westfalen',
    519793,
    57
  ),(3079, 'Hannover', 'DEU', 'Niedersachsen', 514718, 57),(3080, 'Leipzig', 'DEU', 'Saksi', 489532, 57),(3081, 'NÃ¼rnberg', 'DEU', 'Baijeri', 486628, 57),(3082, 'Dresden', 'DEU', 'Saksi', 476668, 57),(
    3083,
    'Bochum',
    'DEU',
    'Nordrhein-Westfalen',
    392830,
    57
  ),(
    3084,
    'Wuppertal',
    'DEU',
    'Nordrhein-Westfalen',
    368993,
    57
  ),(
    3085,
    'Bielefeld',
    'DEU',
    'Nordrhein-Westfalen',
    321125,
    57
  ),(
    3086,
    'Mannheim',
    'DEU',
    'Baden-WÃ¼rttemberg',
    307730,
    57
  ),(
    3087,
    'Bonn',
    'DEU',
    'Nordrhein-Westfalen',
    301048,
    57
  ),(
    3088,
    'Gelsenkirchen',
    'DEU',
    'Nordrhein-Westfalen',
    281979,
    57
  ),(
    3089,
    'Karlsruhe',
    'DEU',
    'Baden-WÃ¼rttemberg',
    277204,
    57
  ),(3090, 'Wiesbaden', 'DEU', 'Hessen', 268716, 57),(
    3091,
    'MÃ¼nster',
    'DEU',
    'Nordrhein-Westfalen',
    264670,
    57
  ),(
    3092,
    'MÃ¶nchengladbach',
    'DEU',
    'Nordrhein-Westfalen',
    263697,
    57
  ),(3093, 'Chemnitz', 'DEU', 'Saksi', 263222, 57),(3094, 'Augsburg', 'DEU', 'Baijeri', 254867, 57),(
    3095,
    'Halle/Saale',
    'DEU',
    'Anhalt Sachsen',
    254360,
    57
  ),(
    3096,
    'Braunschweig',
    'DEU',
    'Niedersachsen',
    246322,
    57
  ),(
    3097,
    'Aachen',
    'DEU',
    'Nordrhein-Westfalen',
    243825,
    57
  ),(
    3098,
    'Krefeld',
    'DEU',
    'Nordrhein-Westfalen',
    241769,
    57
  ),(
    3099,
    'Magdeburg',
    'DEU',
    'Anhalt Sachsen',
    235073,
    57
  ),(3100, 'Kiel', 'DEU', 'Schleswig-Holstein', 233795, 57),(
    3101,
    'Oberhausen',
    'DEU',
    'Nordrhein-Westfalen',
    222349,
    57
  ),(
    3102,
    'LÃ¼beck',
    'DEU',
    'Schleswig-Holstein',
    213326,
    57
  ),(
    3103,
    'Hagen',
    'DEU',
    'Nordrhein-Westfalen',
    205201,
    57
  ),(
    3104,
    'Rostock',
    'DEU',
    'Mecklenburg-Vorpomme',
    203279,
    57
  ),(
    3105,
    'Freiburg im Breisgau',
    'DEU',
    'Baden-WÃ¼rttemberg',
    202455,
    57
  ),(3106, 'Erfurt', 'DEU', 'ThÃ¼ringen', 201267, 57),(3107, 'Kassel', 'DEU', 'Hessen', 196211, 57),(3108, 'SaarbrÃ¼cken', 'DEU', 'Saarland', 183836, 57),(3109, 'Mainz', 'DEU', 'Rheinland-Pfalz', 183134, 57),(
    3110,
    'Hamm',
    'DEU',
    'Nordrhein-Westfalen',
    181804,
    57
  ),(
    3111,
    'Herne',
    'DEU',
    'Nordrhein-Westfalen',
    175661,
    57
  ),(
    3112,
    'MÃ¼lheim an der Ruhr',
    'DEU',
    'Nordrhein-Westfalen',
    173895,
    57
  ),(
    3113,
    'Solingen',
    'DEU',
    'Nordrhein-Westfalen',
    165583,
    57
  ),(
    3114,
    'OsnabrÃ¼ck',
    'DEU',
    'Niedersachsen',
    164539,
    57
  ),(
    3115,
    'Ludwigshafen am Rhein',
    'DEU',
    'Rheinland-Pfalz',
    163771,
    57
  ),(
    3116,
    'Leverkusen',
    'DEU',
    'Nordrhein-Westfalen',
    160841,
    57
  ),(3117, 'Oldenburg', 'DEU', 'Niedersachsen', 154125, 57),(
    3118,
    'Neuss',
    'DEU',
    'Nordrhein-Westfalen',
    149702,
    57
  ),(
    3119,
    'Heidelberg',
    'DEU',
    'Baden-WÃ¼rttemberg',
    139672,
    57
  ),(3120, 'Darmstadt', 'DEU', 'Hessen', 137776, 57),(
    3121,
    'Paderborn',
    'DEU',
    'Nordrhein-Westfalen',
    137647,
    57
  ),(3122, 'Potsdam', 'DEU', 'Brandenburg', 128983, 57),(3123, 'WÃ¼rzburg', 'DEU', 'Baijeri', 127350, 57),(3124, 'Regensburg', 'DEU', 'Baijeri', 125236, 57),(
    3125,
    'Recklinghausen',
    'DEU',
    'Nordrhein-Westfalen',
    125022,
    57
  ),(
    3126,
    'GÃ¶ttingen',
    'DEU',
    'Niedersachsen',
    124775,
    57
  ),(3127, 'Bremerhaven', 'DEU', 'Bremen', 122735, 57),(3128, 'Wolfsburg', 'DEU', 'Niedersachsen', 121954, 57),(
    3129,
    'Bottrop',
    'DEU',
    'Nordrhein-Westfalen',
    121097,
    57
  ),(
    3130,
    'Remscheid',
    'DEU',
    'Nordrhein-Westfalen',
    120125,
    57
  ),(
    3131,
    'Heilbronn',
    'DEU',
    'Baden-WÃ¼rttemberg',
    119526,
    57
  ),(
    3132,
    'Pforzheim',
    'DEU',
    'Baden-WÃ¼rttemberg',
    117227,
    57
  ),(
    3133,
    'Offenbach am Main',
    'DEU',
    'Hessen',
    116627,
    57
  ),(3134, 'Ulm', 'DEU', 'Baden-WÃ¼rttemberg', 116103, 57),(3135, 'Ingolstadt', 'DEU', 'Baijeri', 114826, 57),(3136, 'Gera', 'DEU', 'ThÃ¼ringen', 114718, 57),(
    3137,
    'Salzgitter',
    'DEU',
    'Niedersachsen',
    112934,
    57
  ),(3138, 'Cottbus', 'DEU', 'Brandenburg', 110894, 57),(
    3139,
    'Reutlingen',
    'DEU',
    'Baden-WÃ¼rttemberg',
    110343,
    57
  ),(3140, 'FÃ¼rth', 'DEU', 'Baijeri', 109771, 57),(
    3141,
    'Siegen',
    'DEU',
    'Nordrhein-Westfalen',
    109225,
    57
  ),(3142, 'Koblenz', 'DEU', 'Rheinland-Pfalz', 108003, 57),(
    3143,
    'Moers',
    'DEU',
    'Nordrhein-Westfalen',
    106837,
    57
  ),(
    3144,
    'Bergisch Gladbach',
    'DEU',
    'Nordrhein-Westfalen',
    106150,
    57
  ),(3145, 'Zwickau', 'DEU', 'Saksi', 104146, 57),(
    3146,
    'Hildesheim',
    'DEU',
    'Niedersachsen',
    104013,
    57
  ),(
    3147,
    'Witten',
    'DEU',
    'Nordrhein-Westfalen',
    103384,
    57
  ),(
    3148,
    'Schwerin',
    'DEU',
    'Mecklenburg-Vorpomme',
    102878,
    57
  ),(3149, 'Erlangen', 'DEU', 'Baijeri', 100750, 57),(
    3150,
    'Kaiserslautern',
    'DEU',
    'Rheinland-Pfalz',
    100025,
    57
  ),(3151, 'Trier', 'DEU', 'Rheinland-Pfalz', 99891, 57),(3152, 'Jena', 'DEU', 'ThÃ¼ringen', 99779, 57),(
    3153,
    'Iserlohn',
    'DEU',
    'Nordrhein-Westfalen',
    99474,
    57
  ),(
    3154,
    'GÃ¼tersloh',
    'DEU',
    'Nordrhein-Westfalen',
    95028,
    57
  ),(3155, 'Marl', 'DEU', 'Nordrhein-Westfalen', 93735, 57),(
    3156,
    'LÃ¼nen',
    'DEU',
    'Nordrhein-Westfalen',
    92044,
    57
  ),(
    3157,
    'DÃ¼ren',
    'DEU',
    'Nordrhein-Westfalen',
    91092,
    57
  ),(
    3158,
    'Ratingen',
    'DEU',
    'Nordrhein-Westfalen',
    90951,
    57
  ),(
    3159,
    'Velbert',
    'DEU',
    'Nordrhein-Westfalen',
    89881,
    57
  ),(
    3160,
    'Esslingen am Neckar',
    'DEU',
    'Baden-WÃ¼rttemberg',
    89667,
    57
  ),(3161, 'Honiara', 'SLB', 'Honiara', 50100, 191),(3162, 'Lusaka', 'ZMB', 'Lusaka', 1317000, 238),(3163, 'Ndola', 'ZMB', 'Copperbelt', 329200, 238),(3164, 'Kitwe', 'ZMB', 'Copperbelt', 288600, 238),(3165, 'Kabwe', 'ZMB', 'Central', 154300, 238),(3166, 'Chingola', 'ZMB', 'Copperbelt', 142400, 238),(3167, 'Mufulira', 'ZMB', 'Copperbelt', 123900, 238),(3168, 'Luanshya', 'ZMB', 'Copperbelt', 118100, 238),(3169, 'Apia', 'WSM', 'Upolu', 35900, 234),(
    3170,
    'Serravalle',
    'SMR',
    'Serravalle/Dogano',
    4802,
    194
  ),(3171, 'San Marino', 'SMR', 'San Marino', 2294, 194),(3172, 'SÃ£o TomÃ©', 'STP', 'Aqua Grande', 49541, 197),(3173, 'Riyadh', 'SAU', 'Riyadh', 3324000, 184),(3174, 'Jedda', 'SAU', 'Mekka', 2046300, 184),(3175, 'Mekka', 'SAU', 'Mekka', 965700, 184),(3176, 'Medina', 'SAU', 'Medina', 608300, 184),(3177, 'al-Dammam', 'SAU', 'al-Sharqiya', 482300, 184),(3178, 'al-Taif', 'SAU', 'Mekka', 416100, 184),(3179, 'Tabuk', 'SAU', 'Tabuk', 292600, 184),(3180, 'Burayda', 'SAU', 'al-Qasim', 248600, 184),(3181, 'al-Hufuf', 'SAU', 'al-Sharqiya', 225800, 184),(
    3182,
    'al-Mubarraz',
    'SAU',
    'al-Sharqiya',
    219100,
    184
  ),(3183, 'Khamis Mushayt', 'SAU', 'Asir', 217900, 184),(3184, 'Hail', 'SAU', 'Hail', 176800, 184),(3185, 'al-Kharj', 'SAU', 'Riad', 152100, 184),(3186, 'al-Khubar', 'SAU', 'al-Sharqiya', 141700, 184),(3187, 'Jubayl', 'SAU', 'al-Sharqiya', 140800, 184),(
    3188,
    'Hafar al-Batin',
    'SAU',
    'al-Sharqiya',
    137800,
    184
  ),(3189, 'al-Tuqba', 'SAU', 'al-Sharqiya', 125700, 184),(3190, 'Yanbu', 'SAU', 'Medina', 119800, 184),(3191, 'Abha', 'SAU', 'Asir', 112300, 184),(
    3192,
    'AraÂ´ar',
    'SAU',
    'al-Khudud al-Samaliy',
    108100,
    184
  ),(3193, 'al-Qatif', 'SAU', 'al-Sharqiya', 98900, 184),(3194, 'al-Hawiya', 'SAU', 'Mekka', 93900, 184),(3195, 'Unayza', 'SAU', 'Qasim', 91100, 184),(3196, 'Najran', 'SAU', 'Najran', 91000, 184),(3197, 'Pikine', 'SEN', 'Cap-Vert', 855287, 186),(3198, 'Dakar', 'SEN', 'Cap-Vert', 785071, 186),(3199, 'ThiÃ¨s', 'SEN', 'ThiÃ¨s', 248000, 186),(3200, 'Kaolack', 'SEN', 'Kaolack', 199000, 186),(3201, 'Ziguinchor', 'SEN', 'Ziguinchor', 192000, 186),(3202, 'Rufisque', 'SEN', 'Cap-Vert', 150000, 186),(
    3203,
    'Saint-Louis',
    'SEN',
    'Saint-Louis',
    132400,
    186
  ),(3204, 'Mbour', 'SEN', 'ThiÃ¨s', 109300, 186),(3205, 'Diourbel', 'SEN', 'Diourbel', 99400, 186),(3206, 'Victoria', 'SYC', 'MahÃ©', 41000, 203),(3207, 'Freetown', 'SLE', 'Western', 850000, 192),(3208, 'Singapore', 'SGP', 'Â–', 4017733, 187),(3209, 'Bratislava', 'SVK', 'Bratislava', 448292, 199),(
    3210,
    'KoÂšice',
    'SVK',
    'VÃ½chodnÃ© Slovensko',
    241874,
    199
  ),(
    3211,
    'PreÂšov',
    'SVK',
    'VÃ½chodnÃ© Slovensko',
    93977,
    199
  ),(
    3212,
    'Ljubljana',
    'SVN',
    'Osrednjeslovenska',
    270986,
    200
  ),(3213, 'Maribor', 'SVN', 'Podravska', 115532, 200),(3214, 'Mogadishu', 'SOM', 'Banaadir', 997000, 195),(
    3215,
    'Hargeysa',
    'SOM',
    'Woqooyi Galbeed',
    90000,
    195
  ),(3216, 'Kismaayo', 'SOM', 'Jubbada Hoose', 90000, 195),(3217, 'Colombo', 'LKA', 'Western', 645000, 125),(3218, 'Dehiwala', 'LKA', 'Western', 203000, 125),(3219, 'Moratuwa', 'LKA', 'Western', 190000, 125),(3220, 'Jaffna', 'LKA', 'Northern', 149000, 125),(3221, 'Kandy', 'LKA', 'Central', 140000, 125),(
    3222,
    'Sri Jayawardenepura Kotte',
    'LKA',
    'Western',
    118000,
    125
  ),(3223, 'Negombo', 'LKA', 'Western', 100000, 125),(3224, 'Omdurman', 'SDN', 'Khartum', 1271403, 185),(3225, 'Khartum', 'SDN', 'Khartum', 947483, 185),(3226, 'Sharq al-Nil', 'SDN', 'Khartum', 700887, 185),(
    3227,
    'Port Sudan',
    'SDN',
    'al-Bahr al-Ahmar',
    308195,
    185
  ),(3228, 'Kassala', 'SDN', 'Kassala', 234622, 185),(
    3229,
    'Obeid',
    'SDN',
    'Kurdufan al-Shamaliy',
    229425,
    185
  ),(
    3230,
    'Nyala',
    'SDN',
    'Darfur al-Janubiya',
    227183,
    185
  ),(3231, 'Wad Madani', 'SDN', 'al-Jazira', 211362, 185),(3232, 'al-Qadarif', 'SDN', 'al-Qadarif', 191164, 185),(3233, 'Kusti', 'SDN', 'al-Bahr al-Abyad', 173599, 185),(
    3234,
    'al-Fashir',
    'SDN',
    'Darfur al-Shamaliya',
    141884,
    185
  ),(3235, 'Juba', 'SDN', 'Bahr al-Jabal', 114980, 185),(
    3236,
    'Helsinki [Helsingfors]',
    'FIN',
    'Newmaa',
    555474,
    70
  ),(3237, 'Espoo', 'FIN', 'Newmaa', 213271, 70),(3238, 'Tampere', 'FIN', 'Pirkanmaa', 195468, 70),(3239, 'Vantaa', 'FIN', 'Newmaa', 178471, 70),(
    3240,
    'Turku [Ã…bo]',
    'FIN',
    'Varsinais-Suomi',
    172561,
    70
  ),(3241, 'Oulu', 'FIN', 'Pohjois-Pohjanmaa', 120753, 70),(3242, 'Lahti', 'FIN', 'PÃ¤ijÃ¤t-HÃ¤me', 96921, 70),(3243, 'Paramaribo', 'SUR', 'Paramaribo', 112000, 198),(3244, 'Mbabane', 'SWZ', 'Hhohho', 61000, 202),(3245, 'ZÃ¼rich', 'CHE', 'ZÃ¼rich', 336800, 40),(3246, 'Geneve', 'CHE', 'Geneve', 173500, 40),(3247, 'Basel', 'CHE', 'Basel-Stadt', 166700, 40),(3248, 'Bern', 'CHE', 'Bern', 122700, 40),(3249, 'Lausanne', 'CHE', 'Vaud', 114500, 40),(3250, 'Damascus', 'SYR', 'Damascus', 1347000, 204),(3251, 'Aleppo', 'SYR', 'Aleppo', 1261983, 204),(3252, 'Hims', 'SYR', 'Hims', 507404, 204),(3253, 'Hama', 'SYR', 'Hama', 343361, 204),(3254, 'Latakia', 'SYR', 'Latakia', 264563, 204),(
    3255,
    'al-Qamishliya',
    'SYR',
    'al-Hasaka',
    144286,
    204
  ),(
    3256,
    'Dayr al-Zawr',
    'SYR',
    'Dayr al-Zawr',
    140459,
    204
  ),(3257, 'Jaramana', 'SYR', 'Damaskos', 138469, 204),(3258, 'Duma', 'SYR', 'Damaskos', 131158, 204),(3259, 'al-Raqqa', 'SYR', 'al-Raqqa', 108020, 204),(3260, 'Idlib', 'SYR', 'Idlib', 91081, 204),(3261, 'Dushanbe', 'TJK', 'Karotegin', 524000, 209),(3262, 'Khujand', 'TJK', 'Khujand', 161500, 209),(3263, 'Taipei', 'TWN', 'Taipei', 2641312, 218),(3264, 'Kaohsiung', 'TWN', 'Kaohsiung', 1475505, 218),(3265, 'Taichung', 'TWN', 'Taichung', 940589, 218),(3266, 'Tainan', 'TWN', 'Tainan', 728060, 218),(3267, 'Panchiao', 'TWN', 'Taipei', 523850, 218),(3268, 'Chungho', 'TWN', 'Taipei', 392176, 218),(
    3269,
    'Keelung (Chilung)',
    'TWN',
    'Keelung',
    385201,
    218
  ),(3270, 'Sanchung', 'TWN', 'Taipei', 380084, 218),(3271, 'Hsinchuang', 'TWN', 'Taipei', 365048, 218),(3272, 'Hsinchu', 'TWN', 'Hsinchu', 361958, 218),(3273, 'Chungli', 'TWN', 'Taoyuan', 318649, 218),(3274, 'Fengshan', 'TWN', 'Kaohsiung', 318562, 218),(3275, 'Taoyuan', 'TWN', 'Taoyuan', 316438, 218),(3276, 'Chiayi', 'TWN', 'Chiayi', 265109, 218),(3277, 'Hsintien', 'TWN', 'Taipei', 263603, 218),(3278, 'Changhwa', 'TWN', 'Changhwa', 227715, 218),(3279, 'Yungho', 'TWN', 'Taipei', 227700, 218),(3280, 'Tucheng', 'TWN', 'Taipei', 224897, 218),(3281, 'Pingtung', 'TWN', 'Pingtung', 214727, 218),(3282, 'Yungkang', 'TWN', 'Tainan', 193005, 218),(3283, 'Pingchen', 'TWN', 'Taoyuan', 188344, 218),(3284, 'Tali', 'TWN', 'Taichung', 171940, 218),(3285, 'Taiping', 'TWN', '', 165524, 218),(3286, 'Pate', 'TWN', 'Taoyuan', 161700, 218),(3287, 'Fengyuan', 'TWN', 'Taichung', 161032, 218),(3288, 'Luchou', 'TWN', 'Taipei', 160516, 218),(3289, 'Hsichuh', 'TWN', 'Taipei', 154976, 218),(3290, 'Shulin', 'TWN', 'Taipei', 151260, 218),(3291, 'Yuanlin', 'TWN', 'Changhwa', 126402, 218),(3292, 'Yangmei', 'TWN', 'Taoyuan', 126323, 218),(3293, 'Taliao', 'TWN', '', 115897, 218),(3294, 'Kueishan', 'TWN', '', 112195, 218),(3295, 'Tanshui', 'TWN', 'Taipei', 111882, 218),(3296, 'Taitung', 'TWN', 'Taitung', 111039, 218),(3297, 'Hualien', 'TWN', 'Hualien', 108407, 218),(3298, 'Nantou', 'TWN', 'Nantou', 104723, 218),(3299, 'Lungtan', 'TWN', 'Taipei', 103088, 218),(3300, 'Touliu', 'TWN', 'YÃ¼nlin', 98900, 218),(3301, 'Tsaotun', 'TWN', 'Nantou', 96800, 218),(3302, 'Kangshan', 'TWN', 'Kaohsiung', 92200, 218),(3303, 'Ilan', 'TWN', 'Ilan', 92000, 218),(3304, 'Miaoli', 'TWN', 'Miaoli', 90000, 218),(
    3305,
    'Dar es Salaam',
    'TZA',
    'Dar es Salaam',
    1747000,
    219
  ),(3306, 'Dodoma', 'TZA', 'Dodoma', 189000, 219),(3307, 'Mwanza', 'TZA', 'Mwanza', 172300, 219),(3308, 'Zanzibar', 'TZA', 'Zanzibar West', 157634, 219),(3309, 'Tanga', 'TZA', 'Tanga', 137400, 219),(3310, 'Mbeya', 'TZA', 'Mbeya', 130800, 219),(3311, 'Morogoro', 'TZA', 'Morogoro', 117800, 219),(3312, 'Arusha', 'TZA', 'Arusha', 102500, 219),(3313, 'Moshi', 'TZA', 'Kilimanjaro', 96800, 219),(3314, 'Tabora', 'TZA', 'Tabora', 92800, 219),(3315, 'KÃ¸benhavn', 'DNK', 'KÃ¸benhavn', 495699, 60),(3316, 'Ã…rhus', 'DNK', 'Ã…rhus', 284846, 60),(3317, 'Odense', 'DNK', 'Fyn', 183912, 60),(3318, 'Aalborg', 'DNK', 'Nordjylland', 161161, 60),(
    3319,
    'Frederiksberg',
    'DNK',
    'Frederiksberg',
    90327,
    60
  ),(3320, 'Bangkok', 'THA', 'Bangkok', 6320174, 208),(3321, 'Nonthaburi', 'THA', 'Nonthaburi', 292100, 208),(
    3322,
    'Nakhon Ratchasima',
    'THA',
    'Nakhon Ratchasima',
    181400,
    208
  ),(3323, 'Chiang Mai', 'THA', 'Chiang Mai', 171100, 208),(3324, 'Udon Thani', 'THA', 'Udon Thani', 158100, 208),(3325, 'Hat Yai', 'THA', 'Songkhla', 148632, 208),(3326, 'Khon Kaen', 'THA', 'Khon Kaen', 126500, 208),(3327, 'Pak Kret', 'THA', 'Nonthaburi', 126055, 208),(
    3328,
    'Nakhon Sawan',
    'THA',
    'Nakhon Sawan',
    123800,
    208
  ),(
    3329,
    'Ubon Ratchathani',
    'THA',
    'Ubon Ratchathani',
    116300,
    208
  ),(3330, 'Songkhla', 'THA', 'Songkhla', 94900, 208),(
    3331,
    'Nakhon Pathom',
    'THA',
    'Nakhon Pathom',
    94100,
    208
  ),(3332, 'LomÃ©', 'TGO', 'Maritime', 375000, 207),(3333, 'Fakaofo', 'TKL', 'Fakaofo', 300, 210),(3334, 'NukuÂ´alofa', 'TON', 'Tongatapu', 22400, 213),(3335, 'Chaguanas', 'TTO', 'Caroni', 56601, 214),(
    3336,
    'Port-of-Spain',
    'TTO',
    'Port-of-Spain',
    43396,
    214
  ),(
    3337,
    'NÂ´DjamÃ©na',
    'TCD',
    'Chari-Baguirmi',
    530965,
    206
  ),(
    3338,
    'Moundou',
    'TCD',
    'Logone Occidental',
    99500,
    206
  ),(
    3339,
    'Praha',
    'CZE',
    'HlavnÃ­ mesto Praha',
    1181126,
    56
  ),(3340, 'Brno', 'CZE', 'JiznÃ­ Morava', 381862, 56),(3341, 'Ostrava', 'CZE', 'SevernÃ­ Morava', 320041, 56),(3342, 'Plzen', 'CZE', 'ZapadnÃ­ Cechy', 166759, 56),(3343, 'Olomouc', 'CZE', 'SevernÃ­ Morava', 102702, 56),(3344, 'Liberec', 'CZE', 'SevernÃ­ Cechy', 99155, 56),(
    3345,
    'CeskÃ© Budejovice',
    'CZE',
    'JiznÃ­ Cechy',
    98186,
    56
  ),(
    3346,
    'Hradec KrÃ¡lovÃ©',
    'CZE',
    'VÃ½chodnÃ­ Cechy',
    98080,
    56
  ),(
    3347,
    'ÃšstÃ­ nad Labem',
    'CZE',
    'SevernÃ­ Cechy',
    95491,
    56
  ),(
    3348,
    'Pardubice',
    'CZE',
    'VÃ½chodnÃ­ Cechy',
    91309,
    56
  ),(3349, 'Tunis', 'TUN', 'Tunis', 690600, 215),(3350, 'Sfax', 'TUN', 'Sfax', 257800, 215),(3351, 'Ariana', 'TUN', 'Ariana', 197000, 215),(3352, 'Ettadhamen', 'TUN', 'Ariana', 178600, 215),(3353, 'Sousse', 'TUN', 'Sousse', 145900, 215),(3354, 'Kairouan', 'TUN', 'Kairouan', 113100, 215),(3355, 'Biserta', 'TUN', 'Biserta', 108900, 215),(3356, 'GabÃ¨s', 'TUN', 'GabÃ¨s', 106600, 215),(3357, 'Istanbul', 'TUR', 'Istanbul', 8787958, 216),(3358, 'Ankara', 'TUR', 'Ankara', 3038159, 216),(3359, 'Izmir', 'TUR', 'Izmir', 2130359, 216),(3360, 'Adana', 'TUR', 'Adana', 1131198, 216),(3361, 'Bursa', 'TUR', 'Bursa', 1095842, 216),(3362, 'Gaziantep', 'TUR', 'Gaziantep', 789056, 216),(3363, 'Konya', 'TUR', 'Konya', 628364, 216),(3364, 'Mersin (IÃ§el)', 'TUR', 'IÃ§el', 587212, 216),(3365, 'Antalya', 'TUR', 'Antalya', 564914, 216),(3366, 'Diyarbakir', 'TUR', 'Diyarbakir', 479884, 216),(3367, 'Kayseri', 'TUR', 'Kayseri', 475657, 216),(3368, 'Eskisehir', 'TUR', 'Eskisehir', 470781, 216),(3369, 'Sanliurfa', 'TUR', 'Sanliurfa', 405905, 216),(3370, 'Samsun', 'TUR', 'Samsun', 339871, 216),(3371, 'Malatya', 'TUR', 'Malatya', 330312, 216),(3372, 'Gebze', 'TUR', 'Kocaeli', 264170, 216),(3373, 'Denizli', 'TUR', 'Denizli', 253848, 216),(3374, 'Sivas', 'TUR', 'Sivas', 246642, 216),(3375, 'Erzurum', 'TUR', 'Erzurum', 246535, 216),(3376, 'Tarsus', 'TUR', 'Adana', 246206, 216),(
    3377,
    'Kahramanmaras',
    'TUR',
    'Kahramanmaras',
    245772,
    216
  ),(3378, 'ElÃ¢zig', 'TUR', 'ElÃ¢zig', 228815, 216),(3379, 'Van', 'TUR', 'Van', 219319, 216),(3380, 'Sultanbeyli', 'TUR', 'Istanbul', 211068, 216),(
    3381,
    'Izmit (Kocaeli)',
    'TUR',
    'Kocaeli',
    210068,
    216
  ),(3382, 'Manisa', 'TUR', 'Manisa', 207148, 216),(3383, 'Batman', 'TUR', 'Batman', 203793, 216),(3384, 'Balikesir', 'TUR', 'Balikesir', 196382, 216),(
    3385,
    'Sakarya (Adapazari)',
    'TUR',
    'Sakarya',
    190641,
    216
  ),(3386, 'Iskenderun', 'TUR', 'Hatay', 153022, 216),(3387, 'Osmaniye', 'TUR', 'Osmaniye', 146003, 216),(3388, 'Ã‡orum', 'TUR', 'Ã‡orum', 145495, 216),(3389, 'KÃ¼tahya', 'TUR', 'KÃ¼tahya', 144761, 216),(3390, 'Hatay (Antakya)', 'TUR', 'Hatay', 143982, 216),(3391, 'Kirikkale', 'TUR', 'Kirikkale', 142044, 216),(3392, 'Adiyaman', 'TUR', 'Adiyaman', 141529, 216),(3393, 'Trabzon', 'TUR', 'Trabzon', 138234, 216),(3394, 'Ordu', 'TUR', 'Ordu', 133642, 216),(3395, 'Aydin', 'TUR', 'Aydin', 128651, 216),(3396, 'Usak', 'TUR', 'Usak', 128162, 216),(3397, 'Edirne', 'TUR', 'Edirne', 123383, 216),(3398, 'Ã‡orlu', 'TUR', 'Tekirdag', 123300, 216),(3399, 'Isparta', 'TUR', 'Isparta', 121911, 216),(3400, 'KarabÃ¼k', 'TUR', 'KarabÃ¼k', 118285, 216),(3401, 'Kilis', 'TUR', 'Kilis', 118245, 216),(3402, 'Alanya', 'TUR', 'Antalya', 117300, 216),(3403, 'Kiziltepe', 'TUR', 'Mardin', 112000, 216),(3404, 'Zonguldak', 'TUR', 'Zonguldak', 111542, 216),(3405, 'Siirt', 'TUR', 'Siirt', 107100, 216),(3406, 'Viransehir', 'TUR', 'Sanliurfa', 106400, 216),(3407, 'Tekirdag', 'TUR', 'Tekirdag', 106077, 216),(3408, 'Karaman', 'TUR', 'Karaman', 104200, 216),(3409, 'Afyon', 'TUR', 'Afyon', 103984, 216),(3410, 'Aksaray', 'TUR', 'Aksaray', 102681, 216),(3411, 'Ceyhan', 'TUR', 'Adana', 102412, 216),(3412, 'Erzincan', 'TUR', 'Erzincan', 102304, 216),(3413, 'Bismil', 'TUR', 'Diyarbakir', 101400, 216),(3414, 'Nazilli', 'TUR', 'Aydin', 99900, 216),(3415, 'Tokat', 'TUR', 'Tokat', 99500, 216),(3416, 'Kars', 'TUR', 'Kars', 93000, 216),(3417, 'InegÃ¶l', 'TUR', 'Bursa', 90500, 216),(3418, 'Bandirma', 'TUR', 'Balikesir', 90200, 216),(3419, 'Ashgabat', 'TKM', 'Ahal', 540600, 211),(3420, 'ChÃ¤rjew', 'TKM', 'Lebap', 189200, 211),(3421, 'Dashhowuz', 'TKM', 'Dashhowuz', 141800, 211),(3422, 'Mary', 'TKM', 'Mary', 101000, 211),(3423, 'Cockburn Town', 'TCA', 'Grand Turk', 4800, 205),(3424, 'Funafuti', 'TUV', 'Funafuti', 4600, 217),(3425, 'Kampala', 'UGA', 'Central', 890800, 220),(3426, 'Kyiv', 'UKR', 'Kiova', 2624000, 221),(
    3427,
    'Harkova [Harkiv]',
    'UKR',
    'Harkova',
    1500000,
    221
  ),(
    3428,
    'Dnipropetrovsk',
    'UKR',
    'Dnipropetrovsk',
    1103000,
    221
  ),(3429, 'Donetsk', 'UKR', 'Donetsk', 1050000, 221),(3430, 'Odesa', 'UKR', 'Odesa', 1011000, 221),(3431, 'Zaporizzja', 'UKR', 'Zaporizzja', 848000, 221),(3432, 'Lviv', 'UKR', 'Lviv', 788000, 221),(
    3433,
    'Kryvyi Rig',
    'UKR',
    'Dnipropetrovsk',
    703000,
    221
  ),(3434, 'Mykolajiv', 'UKR', 'Mykolajiv', 508000, 221),(3435, 'Mariupol', 'UKR', 'Donetsk', 490000, 221),(3436, 'Lugansk', 'UKR', 'Lugansk', 469000, 221),(3437, 'Vinnytsja', 'UKR', 'Vinnytsja', 391000, 221),(3438, 'Makijivka', 'UKR', 'Donetsk', 384000, 221),(3439, 'Herson', 'UKR', 'Herson', 353000, 221),(3440, 'Sevastopol', 'UKR', 'Krim', 348000, 221),(3441, 'Simferopol', 'UKR', 'Krim', 339000, 221),(
    3442,
    'Pultava [Poltava]',
    'UKR',
    'Pultava',
    313000,
    221
  ),(3443, 'TÂšernigiv', 'UKR', 'TÂšernigiv', 313000, 221),(3444, 'TÂšerkasy', 'UKR', 'TÂšerkasy', 309000, 221),(3445, 'Gorlivka', 'UKR', 'Donetsk', 299000, 221),(3446, 'Zytomyr', 'UKR', 'Zytomyr', 297000, 221),(3447, 'Sumy', 'UKR', 'Sumy', 294000, 221),(
    3448,
    'Dniprodzerzynsk',
    'UKR',
    'Dnipropetrovsk',
    270000,
    221
  ),(3449, 'Kirovograd', 'UKR', 'Kirovograd', 265000, 221),(
    3450,
    'Hmelnytskyi',
    'UKR',
    'Hmelnytskyi',
    262000,
    221
  ),(
    3451,
    'TÂšernivtsi',
    'UKR',
    'TÂšernivtsi',
    259000,
    221
  ),(3452, 'Rivne', 'UKR', 'Rivne', 245000, 221),(3453, 'KrementÂšuk', 'UKR', 'Pultava', 239000, 221),(
    3454,
    'Ivano-Frankivsk',
    'UKR',
    'Ivano-Frankivsk',
    237000,
    221
  ),(3455, 'Ternopil', 'UKR', 'Ternopil', 236000, 221),(3456, 'Lutsk', 'UKR', 'Volynia', 217000, 221),(3457, 'Bila Tserkva', 'UKR', 'Kiova', 215000, 221),(3458, 'Kramatorsk', 'UKR', 'Donetsk', 186000, 221),(3459, 'Melitopol', 'UKR', 'Zaporizzja', 169000, 221),(3460, 'KertÂš', 'UKR', 'Krim', 162000, 221),(3461, 'Nikopol', 'UKR', 'Dnipropetrovsk', 149000, 221),(3462, 'Berdjansk', 'UKR', 'Zaporizzja', 130000, 221),(
    3463,
    'Pavlograd',
    'UKR',
    'Dnipropetrovsk',
    127000,
    221
  ),(3464, 'Sjeverodonetsk', 'UKR', 'Lugansk', 127000, 221),(3465, 'Slovjansk', 'UKR', 'Donetsk', 127000, 221),(3466, 'Uzgorod', 'UKR', 'Taka-Karpatia', 127000, 221),(3467, 'AltÂševsk', 'UKR', 'Lugansk', 119000, 221),(3468, 'LysytÂšansk', 'UKR', 'Lugansk', 116000, 221),(3469, 'Jevpatorija', 'UKR', 'Krim', 112000, 221),(
    3470,
    'Kamjanets-Podilskyi',
    'UKR',
    'Hmelnytskyi',
    109000,
    221
  ),(3471, 'Jenakijeve', 'UKR', 'Donetsk', 105000, 221),(3472, 'Krasnyi LutÂš', 'UKR', 'Lugansk', 101000, 221),(3473, 'Stahanov', 'UKR', 'Lugansk', 101000, 221),(3474, 'Oleksandrija', 'UKR', 'Kirovograd', 99000, 221),(3475, 'Konotop', 'UKR', 'Sumy', 96000, 221),(3476, 'Kostjantynivka', 'UKR', 'Donetsk', 95000, 221),(3477, 'BerdytÂšiv', 'UKR', 'Zytomyr', 90000, 221),(3478, 'Izmajil', 'UKR', 'Odesa', 90000, 221),(3479, 'ÂŠostka', 'UKR', 'Sumy', 90000, 221),(3480, 'Uman', 'UKR', 'TÂšerkasy', 90000, 221),(3481, 'Brovary', 'UKR', 'Kiova', 89000, 221),(
    3482,
    'MukatÂševe',
    'UKR',
    'Taka-Karpatia',
    89000,
    221
  ),(3483, 'Budapest', 'HUN', 'Budapest', 1811552, 98),(3484, 'Debrecen', 'HUN', 'HajdÃº-Bihar', 203648, 98),(
    3485,
    'Miskolc',
    'HUN',
    'Borsod-AbaÃºj-ZemplÃ',
    172357,
    98
  ),(3486, 'Szeged', 'HUN', 'CsongrÃ¡d', 158158, 98),(3487, 'PÃ©cs', 'HUN', 'Baranya', 157332, 98),(
    3488,
    'GyÃ¶r',
    'HUN',
    'GyÃ¶r-Moson-Sopron',
    127119,
    98
  ),(
    3489,
    'NyiregyhÃ¡za',
    'HUN',
    'Szabolcs-SzatmÃ¡r-Be',
    112419,
    98
  ),(3490, 'KecskemÃ©t', 'HUN', 'BÃ¡cs-Kiskun', 105606, 98),(
    3491,
    'SzÃ©kesfehÃ©rvÃ¡r',
    'HUN',
    'FejÃ©r',
    105119,
    98
  ),(3492, 'Montevideo', 'URY', 'Montevideo', 1236000, 223),(3493, 'NoumÃ©a', 'NCL', 'Â–', 76293, 153),(3494, 'Auckland', 'NZL', 'Auckland', 381800, 163),(
    3495,
    'Christchurch',
    'NZL',
    'Canterbury',
    324200,
    163
  ),(3496, 'Manukau', 'NZL', 'Auckland', 281800, 163),(3497, 'North Shore', 'NZL', 'Auckland', 187700, 163),(3498, 'Waitakere', 'NZL', 'Auckland', 170600, 163),(3499, 'Wellington', 'NZL', 'Wellington', 166700, 163),(3500, 'Dunedin', 'NZL', 'Dunedin', 119600, 163),(3501, 'Hamilton', 'NZL', 'Hamilton', 117100, 163),(3502, 'Lower Hutt', 'NZL', 'Wellington', 98100, 163),(
    3503,
    'Toskent',
    'UZB',
    'Toskent Shahri',
    2117500,
    225
  ),(3504, 'Namangan', 'UZB', 'Namangan', 370500, 225),(3505, 'Samarkand', 'UZB', 'Samarkand', 361800, 225),(3506, 'Andijon', 'UZB', 'Andijon', 318600, 225),(3507, 'Buhoro', 'UZB', 'Buhoro', 237100, 225),(3508, 'Karsi', 'UZB', 'Qashqadaryo', 194100, 225),(3509, 'Nukus', 'UZB', 'Karakalpakistan', 194100, 225),(3510, 'KÃ¼kon', 'UZB', 'Fargona', 190100, 225),(3511, 'Fargona', 'UZB', 'Fargona', 180500, 225),(3512, 'Circik', 'UZB', 'Toskent', 146400, 225),(3513, 'Margilon', 'UZB', 'Fargona', 140800, 225),(3514, 'Ãœrgenc', 'UZB', 'Khorazm', 138900, 225),(3515, 'Angren', 'UZB', 'Toskent', 128000, 225),(3516, 'Cizah', 'UZB', 'Cizah', 124800, 225),(3517, 'Navoi', 'UZB', 'Navoi', 116300, 225),(3518, 'Olmalik', 'UZB', 'Toskent', 114900, 225),(3519, 'Termiz', 'UZB', 'Surkhondaryo', 109500, 225),(3520, 'Minsk', 'BLR', 'Horad Minsk', 1674000, 27),(3521, 'Gomel', 'BLR', 'Gomel', 475000, 27),(3522, 'Mogiljov', 'BLR', 'Mogiljov', 356000, 27),(3523, 'Vitebsk', 'BLR', 'Vitebsk', 340000, 27),(3524, 'Grodno', 'BLR', 'Grodno', 302000, 27),(3525, 'Brest', 'BLR', 'Brest', 286000, 27),(3526, 'Bobruisk', 'BLR', 'Mogiljov', 221000, 27),(3527, 'BaranovitÂši', 'BLR', 'Brest', 167000, 27),(3528, 'Borisov', 'BLR', 'Minsk', 151000, 27),(3529, 'Pinsk', 'BLR', 'Brest', 130000, 27),(3530, 'OrÂša', 'BLR', 'Vitebsk', 124000, 27),(3531, 'Mozyr', 'BLR', 'Gomel', 110000, 27),(3532, 'Novopolotsk', 'BLR', 'Vitebsk', 106000, 27),(3533, 'Lida', 'BLR', 'Grodno', 101000, 27),(3534, 'Soligorsk', 'BLR', 'Minsk', 101000, 27),(3535, 'MolodetÂšno', 'BLR', 'Minsk', 97000, 27),(3536, 'Mata-Utu', 'WLF', 'Wallis', 1137, 233),(3537, 'Port-Vila', 'VUT', 'Shefa', 33700, 232),(3538, 'CittÃ  del Vaticano', 'VAT', 'Â–', 455, 226),(
    3539,
    'Caracas',
    'VEN',
    'Distrito Federal',
    1975294,
    228
  ),(3540, 'MaracaÃ­bo', 'VEN', 'Zulia', 1304776, 228),(3541, 'Barquisimeto', 'VEN', 'Lara', 877239, 228),(3542, 'Valencia', 'VEN', 'Carabobo', 794246, 228),(
    3543,
    'Ciudad Guayana',
    'VEN',
    'BolÃ­var',
    663713,
    228
  ),(3544, 'Petare', 'VEN', 'Miranda', 488868, 228),(3545, 'Maracay', 'VEN', 'Aragua', 444443, 228),(3546, 'Barcelona', 'VEN', 'AnzoÃ¡tegui', 322267, 228),(3547, 'MaturÃ­n', 'VEN', 'Monagas', 319726, 228),(
    3548,
    'San CristÃ³bal',
    'VEN',
    'TÃ¡chira',
    319373,
    228
  ),(
    3549,
    'Ciudad BolÃ­var',
    'VEN',
    'BolÃ­var',
    301107,
    228
  ),(3550, 'CumanÃ¡', 'VEN', 'Sucre', 293105, 228),(3551, 'MÃ©rida', 'VEN', 'MÃ©rida', 224887, 228),(3552, 'Cabimas', 'VEN', 'Zulia', 221329, 228),(3553, 'Barinas', 'VEN', 'Barinas', 217831, 228),(3554, 'Turmero', 'VEN', 'Aragua', 217499, 228),(3555, 'Baruta', 'VEN', 'Miranda', 207290, 228),(
    3556,
    'Puerto Cabello',
    'VEN',
    'Carabobo',
    187722,
    228
  ),(
    3557,
    'Santa Ana de Coro',
    'VEN',
    'FalcÃ³n',
    185766,
    228
  ),(3558, 'Los Teques', 'VEN', 'Miranda', 178784, 228),(3559, 'Punto Fijo', 'VEN', 'FalcÃ³n', 167215, 228),(3560, 'Guarenas', 'VEN', 'Miranda', 165889, 228),(3561, 'Acarigua', 'VEN', 'Portuguesa', 158954, 228),(
    3562,
    'Puerto La Cruz',
    'VEN',
    'AnzoÃ¡tegui',
    155700,
    228
  ),(3563, 'Ciudad Losada', 'VEN', '', 134501, 228),(3564, 'Guacara', 'VEN', 'Carabobo', 131334, 228),(3565, 'Valera', 'VEN', 'Trujillo', 130281, 228),(3566, 'Guanare', 'VEN', 'Portuguesa', 125621, 228),(3567, 'CarÃºpano', 'VEN', 'Sucre', 119639, 228),(
    3568,
    'Catia La Mar',
    'VEN',
    'Distrito Federal',
    117012,
    228
  ),(3569, 'El Tigre', 'VEN', 'AnzoÃ¡tegui', 116256, 228),(3570, 'Guatire', 'VEN', 'Miranda', 109121, 228),(3571, 'Calabozo', 'VEN', 'GuÃ¡rico', 107146, 228),(3572, 'Pozuelos', 'VEN', 'AnzoÃ¡tegui', 105690, 228),(3573, 'Ciudad Ojeda', 'VEN', 'Zulia', 99354, 228),(3574, 'Ocumare del Tuy', 'VEN', 'Miranda', 97168, 228),(
    3575,
    'Valle de la Pascua',
    'VEN',
    'GuÃ¡rico',
    95927,
    228
  ),(3576, 'Araure', 'VEN', 'Portuguesa', 94269, 228),(
    3577,
    'San Fernando de Apure',
    'VEN',
    'Apure',
    93809,
    228
  ),(3578, 'San Felipe', 'VEN', 'Yaracuy', 90940, 228),(3579, 'El LimÃ³n', 'VEN', 'Aragua', 90000, 228),(3580, 'Moscow', 'RUS', 'Moscow (City)', 8389200, 182),(3581, 'St Petersburg', 'RUS', 'Pietari', 4694000, 182),(
    3582,
    'Novosibirsk',
    'RUS',
    'Novosibirsk',
    1398800,
    182
  ),(
    3583,
    'Nizni Novgorod',
    'RUS',
    'Nizni Novgorod',
    1357000,
    182
  ),(
    3584,
    'Jekaterinburg',
    'RUS',
    'Sverdlovsk',
    1266300,
    182
  ),(3585, 'Samara', 'RUS', 'Samara', 1156100, 182),(3586, 'Omsk', 'RUS', 'Omsk', 1148900, 182),(3587, 'Kazan', 'RUS', 'Tatarstan', 1101000, 182),(3588, 'Ufa', 'RUS', 'BaÂškortostan', 1091200, 182),(
    3589,
    'TÂšeljabinsk',
    'RUS',
    'TÂšeljabinsk',
    1083200,
    182
  ),(
    3590,
    'Rostov-na-Donu',
    'RUS',
    'Rostov-na-Donu',
    1012700,
    182
  ),(3591, 'Perm', 'RUS', 'Perm', 1009700, 182),(3592, 'Volgograd', 'RUS', 'Volgograd', 993400, 182),(3593, 'Voronez', 'RUS', 'Voronez', 907700, 182),(
    3594,
    'Krasnojarsk',
    'RUS',
    'Krasnojarsk',
    875500,
    182
  ),(3595, 'Saratov', 'RUS', 'Saratov', 874000, 182),(3596, 'Toljatti', 'RUS', 'Samara', 722900, 182),(3597, 'Uljanovsk', 'RUS', 'Uljanovsk', 667400, 182),(3598, 'Izevsk', 'RUS', 'Udmurtia', 652800, 182),(3599, 'Krasnodar', 'RUS', 'Krasnodar', 639000, 182),(3600, 'Jaroslavl', 'RUS', 'Jaroslavl', 616700, 182),(3601, 'Habarovsk', 'RUS', 'Habarovsk', 609400, 182),(3602, 'Vladivostok', 'RUS', 'Primorje', 606200, 182),(3603, 'Irkutsk', 'RUS', 'Irkutsk', 593700, 182),(3604, 'Barnaul', 'RUS', 'Altai', 580100, 182),(3605, 'Novokuznetsk', 'RUS', 'Kemerovo', 561600, 182),(3606, 'Penza', 'RUS', 'Penza', 532200, 182),(3607, 'Rjazan', 'RUS', 'Rjazan', 529900, 182),(3608, 'Orenburg', 'RUS', 'Orenburg', 523600, 182),(3609, 'Lipetsk', 'RUS', 'Lipetsk', 521000, 182),(
    3610,
    'Nabereznyje TÂšelny',
    'RUS',
    'Tatarstan',
    514700,
    182
  ),(3611, 'Tula', 'RUS', 'Tula', 506100, 182),(3612, 'Tjumen', 'RUS', 'Tjumen', 503400, 182),(3613, 'Kemerovo', 'RUS', 'Kemerovo', 492700, 182),(3614, 'Astrahan', 'RUS', 'Astrahan', 486100, 182),(3615, 'Tomsk', 'RUS', 'Tomsk', 482100, 182),(3616, 'Kirov', 'RUS', 'Kirov', 466200, 182),(3617, 'Ivanovo', 'RUS', 'Ivanovo', 459200, 182),(3618, 'TÂšeboksary', 'RUS', 'TÂšuvassia', 459200, 182),(3619, 'Brjansk', 'RUS', 'Brjansk', 457400, 182),(3620, 'Tver', 'RUS', 'Tver', 454900, 182),(3621, 'Kursk', 'RUS', 'Kursk', 443500, 182),(
    3622,
    'Magnitogorsk',
    'RUS',
    'TÂšeljabinsk',
    427900,
    182
  ),(
    3623,
    'Kaliningrad',
    'RUS',
    'Kaliningrad',
    424400,
    182
  ),(3624, 'Nizni Tagil', 'RUS', 'Sverdlovsk', 390900, 182),(3625, 'Murmansk', 'RUS', 'Murmansk', 376300, 182),(3626, 'Ulan-Ude', 'RUS', 'Burjatia', 370400, 182),(3627, 'Kurgan', 'RUS', 'Kurgan', 364700, 182),(3628, 'Arkangeli', 'RUS', 'Arkangeli', 361800, 182),(3629, 'SotÂši', 'RUS', 'Krasnodar', 358600, 182),(3630, 'Smolensk', 'RUS', 'Smolensk', 353400, 182),(3631, 'Orjol', 'RUS', 'Orjol', 344500, 182),(3632, 'Stavropol', 'RUS', 'Stavropol', 343300, 182),(3633, 'Belgorod', 'RUS', 'Belgorod', 342000, 182),(3634, 'Kaluga', 'RUS', 'Kaluga', 339300, 182),(3635, 'Vladimir', 'RUS', 'Vladimir', 337100, 182),(3636, 'MahatÂškala', 'RUS', 'Dagestan', 332800, 182),(3637, 'TÂšerepovets', 'RUS', 'Vologda', 324400, 182),(3638, 'Saransk', 'RUS', 'Mordva', 314800, 182),(3639, 'Tambov', 'RUS', 'Tambov', 312000, 182),(
    3640,
    'Vladikavkaz',
    'RUS',
    'North Ossetia-Alania',
    310100,
    182
  ),(3641, 'TÂšita', 'RUS', 'TÂšita', 309900, 182),(3642, 'Vologda', 'RUS', 'Vologda', 302500, 182),(
    3643,
    'Veliki Novgorod',
    'RUS',
    'Novgorod',
    299500,
    182
  ),(
    3644,
    'Komsomolsk-na-Amure',
    'RUS',
    'Habarovsk',
    291600,
    182
  ),(3645, 'Kostroma', 'RUS', 'Kostroma', 288100, 182),(3646, 'Volzski', 'RUS', 'Volgograd', 286900, 182),(
    3647,
    'Taganrog',
    'RUS',
    'Rostov-na-Donu',
    284400,
    182
  ),(3648, 'Petroskoi', 'RUS', 'Karjala', 282100, 182),(3649, 'Bratsk', 'RUS', 'Irkutsk', 277600, 182),(
    3650,
    'Dzerzinsk',
    'RUS',
    'Nizni Novgorod',
    277100,
    182
  ),(3651, 'Surgut', 'RUS', 'Hanti-Mansia', 274900, 182),(3652, 'Orsk', 'RUS', 'Orenburg', 273900, 182),(
    3653,
    'Sterlitamak',
    'RUS',
    'BaÂškortostan',
    265200,
    182
  ),(3654, 'Angarsk', 'RUS', 'Irkutsk', 264700, 182),(3655, 'JoÂškar-Ola', 'RUS', 'Marinmaa', 249200, 182),(3656, 'Rybinsk', 'RUS', 'Jaroslavl', 239600, 182),(3657, 'Prokopjevsk', 'RUS', 'Kemerovo', 237300, 182),(
    3658,
    'Niznevartovsk',
    'RUS',
    'Hanti-Mansia',
    233900,
    182
  ),(
    3659,
    'NaltÂšik',
    'RUS',
    'Kabardi-Balkaria',
    233400,
    182
  ),(3660, 'Syktyvkar', 'RUS', 'Komi', 229700, 182),(3661, 'Severodvinsk', 'RUS', 'Arkangeli', 229300, 182),(3662, 'Bijsk', 'RUS', 'Altai', 225000, 182),(3663, 'Niznekamsk', 'RUS', 'Tatarstan', 223400, 182),(3664, 'BlagoveÂštÂšensk', 'RUS', 'Amur', 222000, 182),(3665, 'ÂŠahty', 'RUS', 'Rostov-na-Donu', 221800, 182),(3666, 'Staryi Oskol', 'RUS', 'Belgorod', 213800, 182),(
    3667,
    'Zelenograd',
    'RUS',
    'Moscow (City)',
    207100,
    182
  ),(3668, 'Balakovo', 'RUS', 'Saratov', 206000, 182),(3669, 'Novorossijsk', 'RUS', 'Krasnodar', 203300, 182),(3670, 'Pihkova', 'RUS', 'Pihkova', 201500, 182),(3671, 'Zlatoust', 'RUS', 'TÂšeljabinsk', 196900, 182),(3672, 'Jakutsk', 'RUS', 'Saha (Jakutia)', 195400, 182),(3673, 'Podolsk', 'RUS', 'Moskova', 194300, 182),(
    3674,
    'Petropavlovsk-KamtÂšatski',
    'RUS',
    'KamtÂšatka',
    194100,
    182
  ),(
    3675,
    'Kamensk-Uralski',
    'RUS',
    'Sverdlovsk',
    190600,
    182
  ),(3676, 'Engels', 'RUS', 'Saratov', 189000, 182),(3677, 'Syzran', 'RUS', 'Samara', 186900, 182),(3678, 'Grozny', 'RUS', 'TÂšetÂšenia', 186000, 182),(
    3679,
    'NovotÂšerkassk',
    'RUS',
    'Rostov-na-Donu',
    184400,
    182
  ),(3680, 'Berezniki', 'RUS', 'Perm', 181900, 182),(
    3681,
    'Juzno-Sahalinsk',
    'RUS',
    'Sahalin',
    179200,
    182
  ),(
    3682,
    'Volgodonsk',
    'RUS',
    'Rostov-na-Donu',
    178200,
    182
  ),(3683, 'Abakan', 'RUS', 'Hakassia', 169200, 182),(3684, 'Maikop', 'RUS', 'Adygea', 167300, 182),(3685, 'Miass', 'RUS', 'TÂšeljabinsk', 166200, 182),(3686, 'Armavir', 'RUS', 'Krasnodar', 164900, 182),(3687, 'Ljubertsy', 'RUS', 'Moskova', 163900, 182),(3688, 'Rubtsovsk', 'RUS', 'Altai', 162600, 182),(3689, 'Kovrov', 'RUS', 'Vladimir', 159900, 182),(3690, 'Nahodka', 'RUS', 'Primorje', 157700, 182),(3691, 'Ussurijsk', 'RUS', 'Primorje', 157300, 182),(3692, 'Salavat', 'RUS', 'BaÂškortostan', 156800, 182),(3693, 'MytiÂštÂši', 'RUS', 'Moskova', 155700, 182),(3694, 'Kolomna', 'RUS', 'Moskova', 150700, 182),(3695, 'Elektrostal', 'RUS', 'Moskova', 147000, 182),(3696, 'Murom', 'RUS', 'Vladimir', 142400, 182),(3697, 'Kolpino', 'RUS', 'Pietari', 141200, 182),(3698, 'Norilsk', 'RUS', 'Krasnojarsk', 140800, 182),(3699, 'Almetjevsk', 'RUS', 'Tatarstan', 140700, 182),(3700, 'Novomoskovsk', 'RUS', 'Tula', 138100, 182),(3701, 'Dimitrovgrad', 'RUS', 'Uljanovsk', 137000, 182),(3702, 'Pervouralsk', 'RUS', 'Sverdlovsk', 136100, 182),(3703, 'Himki', 'RUS', 'Moskova', 133700, 182),(3704, 'BalaÂšiha', 'RUS', 'Moskova', 132900, 182),(3705, 'Nevinnomyssk', 'RUS', 'Stavropol', 132600, 182),(3706, 'Pjatigorsk', 'RUS', 'Stavropol', 132500, 182),(3707, 'Korolev', 'RUS', 'Moskova', 132400, 182),(3708, 'Serpuhov', 'RUS', 'Moskova', 132000, 182),(3709, 'Odintsovo', 'RUS', 'Moskova', 127400, 182),(3710, 'Orehovo-Zujevo', 'RUS', 'Moskova', 124900, 182),(3711, 'KamyÂšin', 'RUS', 'Volgograd', 124600, 182),(
    3712,
    'NovotÂšeboksarsk',
    'RUS',
    'TÂšuvassia',
    123400,
    182
  ),(
    3713,
    'TÂšerkessk',
    'RUS',
    'KaratÂšai-TÂšerkessi',
    121700,
    182
  ),(3714, 'AtÂšinsk', 'RUS', 'Krasnojarsk', 121600, 182),(3715, 'Magadan', 'RUS', 'Magadan', 121000, 182),(3716, 'MitÂšurinsk', 'RUS', 'Tambov', 120700, 182),(3717, 'Kislovodsk', 'RUS', 'Stavropol', 120400, 182),(3718, 'Jelets', 'RUS', 'Lipetsk', 119400, 182),(3719, 'Seversk', 'RUS', 'Tomsk', 118600, 182),(3720, 'Noginsk', 'RUS', 'Moskova', 117200, 182),(3721, 'Velikije Luki', 'RUS', 'Pihkova', 116300, 182),(3722, 'NovokuibyÂševsk', 'RUS', 'Samara', 116200, 182),(
    3723,
    'Neftekamsk',
    'RUS',
    'BaÂškortostan',
    115700,
    182
  ),(
    3724,
    'Leninsk-Kuznetski',
    'RUS',
    'Kemerovo',
    113800,
    182
  ),(
    3725,
    'Oktjabrski',
    'RUS',
    'BaÂškortostan',
    111500,
    182
  ),(3726, 'Sergijev Posad', 'RUS', 'Moskova', 111100, 182),(3727, 'Arzamas', 'RUS', 'Nizni Novgorod', 110700, 182),(3728, 'Kiseljovsk', 'RUS', 'Kemerovo', 110000, 182),(3729, 'Novotroitsk', 'RUS', 'Orenburg', 109600, 182),(3730, 'Obninsk', 'RUS', 'Kaluga', 108300, 182),(3731, 'Kansk', 'RUS', 'Krasnojarsk', 107400, 182),(3732, 'Glazov', 'RUS', 'Udmurtia', 106300, 182),(3733, 'Solikamsk', 'RUS', 'Perm', 106000, 182),(3734, 'Sarapul', 'RUS', 'Udmurtia', 105700, 182),(3735, 'Ust-Ilimsk', 'RUS', 'Irkutsk', 105200, 182),(3736, 'ÂŠtÂšolkovo', 'RUS', 'Moskova', 104900, 182),(
    3737,
    'MezduretÂšensk',
    'RUS',
    'Kemerovo',
    104400,
    182
  ),(
    3738,
    'Usolje-Sibirskoje',
    'RUS',
    'Irkutsk',
    103500,
    182
  ),(3739, 'Elista', 'RUS', 'Kalmykia', 103300, 182),(
    3740,
    'NovoÂšahtinsk',
    'RUS',
    'Rostov-na-Donu',
    101900,
    182
  ),(3741, 'Votkinsk', 'RUS', 'Udmurtia', 101700, 182),(3742, 'Kyzyl', 'RUS', 'Tyva', 101100, 182),(3743, 'Serov', 'RUS', 'Sverdlovsk', 100400, 182),(3744, 'Zelenodolsk', 'RUS', 'Tatarstan', 100200, 182),(
    3745,
    'Zeleznodoroznyi',
    'RUS',
    'Moskova',
    100100,
    182
  ),(3746, 'KineÂšma', 'RUS', 'Ivanovo', 100000, 182),(3747, 'Kuznetsk', 'RUS', 'Penza', 98200, 182),(3748, 'Uhta', 'RUS', 'Komi', 98000, 182),(3749, 'Jessentuki', 'RUS', 'Stavropol', 97900, 182),(3750, 'Tobolsk', 'RUS', 'Tjumen', 97600, 182),(
    3751,
    'Neftejugansk',
    'RUS',
    'Hanti-Mansia',
    97400,
    182
  ),(3752, 'Bataisk', 'RUS', 'Rostov-na-Donu', 97300, 182),(
    3753,
    'Nojabrsk',
    'RUS',
    'Yamalin Nenetsia',
    97300,
    182
  ),(3754, 'BalaÂšov', 'RUS', 'Saratov', 97100, 182),(3755, 'Zeleznogorsk', 'RUS', 'Kursk', 96900, 182),(3756, 'Zukovski', 'RUS', 'Moskova', 96500, 182),(
    3757,
    'Anzero-Sudzensk',
    'RUS',
    'Kemerovo',
    96100,
    182
  ),(3758, 'Bugulma', 'RUS', 'Tatarstan', 94100, 182),(
    3759,
    'Zeleznogorsk',
    'RUS',
    'Krasnojarsk',
    94000,
    182
  ),(3760, 'Novouralsk', 'RUS', 'Sverdlovsk', 93300, 182),(3761, 'PuÂškin', 'RUS', 'Pietari', 92900, 182),(3762, 'Vorkuta', 'RUS', 'Komi', 92600, 182),(3763, 'Derbent', 'RUS', 'Dagestan', 92300, 182),(3764, 'Kirovo-TÂšepetsk', 'RUS', 'Kirov', 91600, 182),(3765, 'Krasnogorsk', 'RUS', 'Moskova', 91000, 182),(3766, 'Klin', 'RUS', 'Moskova', 90000, 182),(3767, 'TÂšaikovski', 'RUS', 'Perm', 90000, 182),(
    3768,
    'Novyi Urengoi',
    'RUS',
    'Yamalin Nenetsia',
    89800,
    182
  ),(
    3769,
    'Ho Chi Minh City',
    'VNM',
    'Ho Chi Minh City',
    3980000,
    231
  ),(3770, 'Hanoi', 'VNM', 'Hanoi', 1410000, 231),(3771, 'Haiphong', 'VNM', 'Haiphong', 783133, 231),(
    3772,
    'Da Nang',
    'VNM',
    'Quang Nam-Da Nang',
    382674,
    231
  ),(3773, 'BiÃªn Hoa', 'VNM', 'Dong Nai', 282095, 231),(3774, 'Nha Trang', 'VNM', 'Khanh Hoa', 221331, 231),(3775, 'Hue', 'VNM', 'Thua Thien-Hue', 219149, 231),(3776, 'Can Tho', 'VNM', 'Can Tho', 215587, 231),(3777, 'Cam Pha', 'VNM', 'Quang Binh', 209086, 231),(3778, 'Nam Dinh', 'VNM', 'Nam Ha', 171699, 231),(3779, 'Quy Nhon', 'VNM', 'Binh Dinh', 163385, 231),(
    3780,
    'Vung Tau',
    'VNM',
    'Ba Ria-Vung Tau',
    145145,
    231
  ),(3781, 'Rach Gia', 'VNM', 'Kien Giang', 141132, 231),(3782, 'Long Xuyen', 'VNM', 'An Giang', 132681, 231),(3783, 'Thai Nguyen', 'VNM', 'Bac Thai', 127643, 231),(3784, 'Hong Gai', 'VNM', 'Quang Ninh', 127484, 231),(3785, 'Phan ThiÃªt', 'VNM', 'Binh Thuan', 114236, 231),(3786, 'Cam Ranh', 'VNM', 'Khanh Hoa', 114041, 231),(3787, 'Vinh', 'VNM', 'Nghe An', 112455, 231),(3788, 'My Tho', 'VNM', 'Tien Giang', 108404, 231),(3789, 'Da Lat', 'VNM', 'Lam Dong', 106409, 231),(3790, 'Buon Ma Thuot', 'VNM', 'Dac Lac', 97044, 231),(3791, 'Tallinn', 'EST', 'Harjumaa', 403981, 68),(3792, 'Tartu', 'EST', 'Tartumaa', 101246, 68),(3793, 'New York', 'USA', 'New York', 8008278, 224),(
    3794,
    'Los Angeles',
    'USA',
    'California',
    3694820,
    224
  ),(3795, 'Chicago', 'USA', 'Illinois', 2896016, 224),(3796, 'Houston', 'USA', 'Texas', 1953631, 224),(
    3797,
    'Philadelphia',
    'USA',
    'Pennsylvania',
    1517550,
    224
  ),(3798, 'Phoenix', 'USA', 'Arizona', 1321045, 224),(3799, 'San Diego', 'USA', 'California', 1223400, 224),(3800, 'Dallas', 'USA', 'Texas', 1188580, 224),(3801, 'San Antonio', 'USA', 'Texas', 1144646, 224),(3802, 'Detroit', 'USA', 'Michigan', 951270, 224),(3803, 'San Jose', 'USA', 'California', 894943, 224),(3804, 'Indianapolis', 'USA', 'Indiana', 791926, 224),(
    3805,
    'San Francisco',
    'USA',
    'California',
    776733,
    224
  ),(3806, 'Jacksonville', 'USA', 'Florida', 735167, 224),(3807, 'Columbus', 'USA', 'Ohio', 711470, 224),(3808, 'Austin', 'USA', 'Texas', 656562, 224),(3809, 'Baltimore', 'USA', 'Maryland', 651154, 224),(3810, 'Memphis', 'USA', 'Tennessee', 650100, 224),(3811, 'Milwaukee', 'USA', 'Wisconsin', 596974, 224),(3812, 'Boston', 'USA', 'Massachusetts', 589141, 224),(
    3813,
    'Washington',
    'USA',
    'District of Columbia',
    572059,
    224
  ),(
    3814,
    'Nashville-Davidson',
    'USA',
    'Tennessee',
    569891,
    224
  ),(3815, 'El Paso', 'USA', 'Texas', 563662, 224),(3816, 'Seattle', 'USA', 'Washington', 563374, 224),(3817, 'Denver', 'USA', 'Colorado', 554636, 224),(
    3818,
    'Charlotte',
    'USA',
    'North Carolina',
    540828,
    224
  ),(3819, 'Fort Worth', 'USA', 'Texas', 534694, 224),(3820, 'Portland', 'USA', 'Oregon', 529121, 224),(3821, 'Oklahoma City', 'USA', 'Oklahoma', 506132, 224),(3822, 'Tucson', 'USA', 'Arizona', 486699, 224),(3823, 'New Orleans', 'USA', 'Louisiana', 484674, 224),(3824, 'Las Vegas', 'USA', 'Nevada', 478434, 224),(3825, 'Cleveland', 'USA', 'Ohio', 478403, 224),(3826, 'Long Beach', 'USA', 'California', 461522, 224),(3827, 'Albuquerque', 'USA', 'New Mexico', 448607, 224),(3828, 'Kansas City', 'USA', 'Missouri', 441545, 224),(3829, 'Fresno', 'USA', 'California', 427652, 224),(
    3830,
    'Virginia Beach',
    'USA',
    'Virginia',
    425257,
    224
  ),(3831, 'Atlanta', 'USA', 'Georgia', 416474, 224),(3832, 'Sacramento', 'USA', 'California', 407018, 224),(3833, 'Oakland', 'USA', 'California', 399484, 224),(3834, 'Mesa', 'USA', 'Arizona', 396375, 224),(3835, 'Tulsa', 'USA', 'Oklahoma', 393049, 224),(3836, 'Omaha', 'USA', 'Nebraska', 390007, 224),(3837, 'Minneapolis', 'USA', 'Minnesota', 382618, 224),(3838, 'Honolulu', 'USA', 'Hawaii', 371657, 224),(3839, 'Miami', 'USA', 'Florida', 362470, 224),(
    3840,
    'Colorado Springs',
    'USA',
    'Colorado',
    360890,
    224
  ),(3841, 'Saint Louis', 'USA', 'Missouri', 348189, 224),(3842, 'Wichita', 'USA', 'Kansas', 344284, 224),(3843, 'Santa Ana', 'USA', 'California', 337977, 224),(
    3844,
    'Pittsburgh',
    'USA',
    'Pennsylvania',
    334563,
    224
  ),(3845, 'Arlington', 'USA', 'Texas', 332969, 224),(3846, 'Cincinnati', 'USA', 'Ohio', 331285, 224),(3847, 'Anaheim', 'USA', 'California', 328014, 224),(3848, 'Toledo', 'USA', 'Ohio', 313619, 224),(3849, 'Tampa', 'USA', 'Florida', 303447, 224),(3850, 'Buffalo', 'USA', 'New York', 292648, 224),(3851, 'Saint Paul', 'USA', 'Minnesota', 287151, 224),(3852, 'Corpus Christi', 'USA', 'Texas', 277454, 224),(3853, 'Aurora', 'USA', 'Colorado', 276393, 224),(3854, 'Raleigh', 'USA', 'North Carolina', 276093, 224),(3855, 'Newark', 'USA', 'New Jersey', 273546, 224),(
    3856,
    'Lexington-Fayette',
    'USA',
    'Kentucky',
    260512,
    224
  ),(3857, 'Anchorage', 'USA', 'Alaska', 260283, 224),(3858, 'Louisville', 'USA', 'Kentucky', 256231, 224),(3859, 'Riverside', 'USA', 'California', 255166, 224),(
    3860,
    'Saint Petersburg',
    'USA',
    'Florida',
    248232,
    224
  ),(3861, 'Bakersfield', 'USA', 'California', 247057, 224),(3862, 'Stockton', 'USA', 'California', 243771, 224),(3863, 'Birmingham', 'USA', 'Alabama', 242820, 224),(3864, 'Jersey City', 'USA', 'New Jersey', 240055, 224),(3865, 'Norfolk', 'USA', 'Virginia', 234403, 224),(3866, 'Baton Rouge', 'USA', 'Louisiana', 227818, 224),(3867, 'Hialeah', 'USA', 'Florida', 226419, 224),(3868, 'Lincoln', 'USA', 'Nebraska', 225581, 224),(
    3869,
    'Greensboro',
    'USA',
    'North Carolina',
    223891,
    224
  ),(3870, 'Plano', 'USA', 'Texas', 222030, 224),(3871, 'Rochester', 'USA', 'New York', 219773, 224),(3872, 'Glendale', 'USA', 'Arizona', 218812, 224),(3873, 'Akron', 'USA', 'Ohio', 217074, 224),(3874, 'Garland', 'USA', 'Texas', 215768, 224),(3875, 'Madison', 'USA', 'Wisconsin', 208054, 224),(3876, 'Fort Wayne', 'USA', 'Indiana', 205727, 224),(3877, 'Fremont', 'USA', 'California', 203413, 224),(3878, 'Scottsdale', 'USA', 'Arizona', 202705, 224),(3879, 'Montgomery', 'USA', 'Alabama', 201568, 224),(3880, 'Shreveport', 'USA', 'Louisiana', 200145, 224),(
    3881,
    'Augusta-Richmond County',
    'USA',
    'Georgia',
    199775,
    224
  ),(3882, 'Lubbock', 'USA', 'Texas', 199564, 224),(3883, 'Chesapeake', 'USA', 'Virginia', 199184, 224),(3884, 'Mobile', 'USA', 'Alabama', 198915, 224),(3885, 'Des Moines', 'USA', 'Iowa', 198682, 224),(3886, 'Grand Rapids', 'USA', 'Michigan', 197800, 224),(3887, 'Richmond', 'USA', 'Virginia', 197790, 224),(3888, 'Yonkers', 'USA', 'New York', 196086, 224),(3889, 'Spokane', 'USA', 'Washington', 195629, 224),(3890, 'Glendale', 'USA', 'California', 194973, 224),(3891, 'Tacoma', 'USA', 'Washington', 193556, 224),(3892, 'Irving', 'USA', 'Texas', 191615, 224),(
    3893,
    'Huntington Beach',
    'USA',
    'California',
    189594,
    224
  ),(3894, 'Modesto', 'USA', 'California', 188856, 224),(3895, 'Durham', 'USA', 'North Carolina', 187035, 224),(3896, 'Columbus', 'USA', 'Georgia', 186291, 224),(3897, 'Orlando', 'USA', 'Florida', 185951, 224),(3898, 'Boise City', 'USA', 'Idaho', 185787, 224),(
    3899,
    'Winston-Salem',
    'USA',
    'North Carolina',
    185776,
    224
  ),(
    3900,
    'San Bernardino',
    'USA',
    'California',
    185401,
    224
  ),(3901, 'Jackson', 'USA', 'Mississippi', 184256, 224),(3902, 'Little Rock', 'USA', 'Arkansas', 183133, 224),(3903, 'Salt Lake City', 'USA', 'Utah', 181743, 224),(3904, 'Reno', 'USA', 'Nevada', 180480, 224),(3905, 'Newport News', 'USA', 'Virginia', 180150, 224),(3906, 'Chandler', 'USA', 'Arizona', 176581, 224),(3907, 'Laredo', 'USA', 'Texas', 176576, 224),(3908, 'Henderson', 'USA', 'Nevada', 175381, 224),(3909, 'Arlington', 'USA', 'Virginia', 174838, 224),(3910, 'Knoxville', 'USA', 'Tennessee', 173890, 224),(3911, 'Amarillo', 'USA', 'Texas', 173627, 224),(
    3912,
    'Providence',
    'USA',
    'Rhode Island',
    173618,
    224
  ),(3913, 'Chula Vista', 'USA', 'California', 173556, 224),(
    3914,
    'Worcester',
    'USA',
    'Massachusetts',
    172648,
    224
  ),(3915, 'Oxnard', 'USA', 'California', 170358, 224),(3916, 'Dayton', 'USA', 'Ohio', 166179, 224),(
    3917,
    'Garden Grove',
    'USA',
    'California',
    165196,
    224
  ),(3918, 'Oceanside', 'USA', 'California', 161029, 224),(3919, 'Tempe', 'USA', 'Arizona', 158625, 224),(3920, 'Huntsville', 'USA', 'Alabama', 158216, 224),(3921, 'Ontario', 'USA', 'California', 158007, 224),(3922, 'Chattanooga', 'USA', 'Tennessee', 155554, 224),(
    3923,
    'Fort Lauderdale',
    'USA',
    'Florida',
    152397,
    224
  ),(
    3924,
    'Springfield',
    'USA',
    'Massachusetts',
    152082,
    224
  ),(3925, 'Springfield', 'USA', 'Missouri', 151580, 224),(
    3926,
    'Santa Clarita',
    'USA',
    'California',
    151088,
    224
  ),(3927, 'Salinas', 'USA', 'California', 151060, 224),(3928, 'Tallahassee', 'USA', 'Florida', 150624, 224),(3929, 'Rockford', 'USA', 'Illinois', 150115, 224),(3930, 'Pomona', 'USA', 'California', 149473, 224),(3931, 'Metairie', 'USA', 'Louisiana', 149428, 224),(3932, 'Paterson', 'USA', 'New Jersey', 149222, 224),(3933, 'Overland Park', 'USA', 'Kansas', 149080, 224),(3934, 'Santa Rosa', 'USA', 'California', 147595, 224),(3935, 'Syracuse', 'USA', 'New York', 147306, 224),(3936, 'Kansas City', 'USA', 'Kansas', 146866, 224),(3937, 'Hampton', 'USA', 'Virginia', 146437, 224),(3938, 'Lakewood', 'USA', 'Colorado', 144126, 224),(3939, 'Vancouver', 'USA', 'Washington', 143560, 224),(3940, 'Irvine', 'USA', 'California', 143072, 224),(3941, 'Aurora', 'USA', 'Illinois', 142990, 224),(
    3942,
    'Moreno Valley',
    'USA',
    'California',
    142381,
    224
  ),(3943, 'Pasadena', 'USA', 'California', 141674, 224),(3944, 'Hayward', 'USA', 'California', 140030, 224),(3945, 'Brownsville', 'USA', 'Texas', 139722, 224),(3946, 'Bridgeport', 'USA', 'Connecticut', 139529, 224),(3947, 'Hollywood', 'USA', 'Florida', 139357, 224),(3948, 'Warren', 'USA', 'Michigan', 138247, 224),(3949, 'Torrance', 'USA', 'California', 137946, 224),(3950, 'Eugene', 'USA', 'Oregon', 137893, 224),(3951, 'Pembroke Pines', 'USA', 'Florida', 137427, 224),(3952, 'Salem', 'USA', 'Oregon', 136924, 224),(3953, 'Pasadena', 'USA', 'Texas', 133936, 224),(3954, 'Escondido', 'USA', 'California', 133559, 224),(3955, 'Sunnyvale', 'USA', 'California', 131760, 224),(3956, 'Savannah', 'USA', 'Georgia', 131510, 224),(3957, 'Fontana', 'USA', 'California', 128929, 224),(3958, 'Orange', 'USA', 'California', 128821, 224),(3959, 'Naperville', 'USA', 'Illinois', 128358, 224),(3960, 'Alexandria', 'USA', 'Virginia', 128283, 224),(
    3961,
    'Rancho Cucamonga',
    'USA',
    'California',
    127743,
    224
  ),(3962, 'Grand Prairie', 'USA', 'Texas', 127427, 224),(
    3963,
    'East Los Angeles',
    'USA',
    'California',
    126379,
    224
  ),(3964, 'Fullerton', 'USA', 'California', 126003, 224),(3965, 'Corona', 'USA', 'California', 124966, 224),(3966, 'Flint', 'USA', 'Michigan', 124943, 224),(3967, 'Paradise', 'USA', 'Nevada', 124682, 224),(3968, 'Mesquite', 'USA', 'Texas', 124523, 224),(
    3969,
    'Sterling Heights',
    'USA',
    'Michigan',
    124471,
    224
  ),(
    3970,
    'Sioux Falls',
    'USA',
    'South Dakota',
    123975,
    224
  ),(3971, 'New Haven', 'USA', 'Connecticut', 123626, 224),(3972, 'Topeka', 'USA', 'Kansas', 122377, 224),(3973, 'Concord', 'USA', 'California', 121780, 224),(3974, 'Evansville', 'USA', 'Indiana', 121582, 224),(3975, 'Hartford', 'USA', 'Connecticut', 121578, 224),(
    3976,
    'Fayetteville',
    'USA',
    'North Carolina',
    121015,
    224
  ),(3977, 'Cedar Rapids', 'USA', 'Iowa', 120758, 224),(3978, 'Elizabeth', 'USA', 'New Jersey', 120568, 224),(3979, 'Lansing', 'USA', 'Michigan', 119128, 224),(3980, 'Lancaster', 'USA', 'California', 118718, 224),(3981, 'Fort Collins', 'USA', 'Colorado', 118652, 224),(3982, 'Coral Springs', 'USA', 'Florida', 117549, 224),(3983, 'Stamford', 'USA', 'Connecticut', 117083, 224),(
    3984,
    'Thousand Oaks',
    'USA',
    'California',
    117005,
    224
  ),(3985, 'Vallejo', 'USA', 'California', 116760, 224),(3986, 'Palmdale', 'USA', 'California', 116670, 224),(
    3987,
    'Columbia',
    'USA',
    'South Carolina',
    116278,
    224
  ),(3988, 'El Monte', 'USA', 'California', 115965, 224),(3989, 'Abilene', 'USA', 'Texas', 115930, 224),(3990, 'North Las Vegas', 'USA', 'Nevada', 115488, 224),(3991, 'Ann Arbor', 'USA', 'Michigan', 114024, 224),(3992, 'Beaumont', 'USA', 'Texas', 113866, 224),(3993, 'Waco', 'USA', 'Texas', 113726, 224),(3994, 'Macon', 'USA', 'Georgia', 113336, 224),(3995, 'Independence', 'USA', 'Missouri', 113288, 224),(3996, 'Peoria', 'USA', 'Illinois', 112936, 224),(3997, 'Inglewood', 'USA', 'California', 112580, 224),(3998, 'Springfield', 'USA', 'Illinois', 111454, 224),(3999, 'Simi Valley', 'USA', 'California', 111351, 224),(4000, 'Lafayette', 'USA', 'Louisiana', 110257, 224),(4001, 'Gilbert', 'USA', 'Arizona', 109697, 224),(4002, 'Carrollton', 'USA', 'Texas', 109576, 224),(4003, 'Bellevue', 'USA', 'Washington', 109569, 224),(4004, 'West Valley City', 'USA', 'Utah', 108896, 224),(4005, 'Clarksville', 'USA', 'Tennessee', 108787, 224),(4006, 'Costa Mesa', 'USA', 'California', 108724, 224),(4007, 'Peoria', 'USA', 'Arizona', 108364, 224),(4008, 'South Bend', 'USA', 'Indiana', 107789, 224),(4009, 'Downey', 'USA', 'California', 107323, 224),(4010, 'Waterbury', 'USA', 'Connecticut', 107271, 224),(
    4011,
    'Manchester',
    'USA',
    'New Hampshire',
    107006,
    224
  ),(4012, 'Allentown', 'USA', 'Pennsylvania', 106632, 224),(4013, 'McAllen', 'USA', 'Texas', 106414, 224),(4014, 'Joliet', 'USA', 'Illinois', 106221, 224),(4015, 'Lowell', 'USA', 'Massachusetts', 105167, 224),(4016, 'Provo', 'USA', 'Utah', 105166, 224),(4017, 'West Covina', 'USA', 'California', 105080, 224),(4018, 'Wichita Falls', 'USA', 'Texas', 104197, 224),(4019, 'Erie', 'USA', 'Pennsylvania', 103717, 224),(4020, 'Daly City', 'USA', 'California', 103621, 224),(
    4021,
    'Citrus Heights',
    'USA',
    'California',
    103455,
    224
  ),(4022, 'Norwalk', 'USA', 'California', 103298, 224),(4023, 'Gary', 'USA', 'Indiana', 102746, 224),(4024, 'Berkeley', 'USA', 'California', 102743, 224),(4025, 'Santa Clara', 'USA', 'California', 102361, 224),(4026, 'Green Bay', 'USA', 'Wisconsin', 102313, 224),(4027, 'Cape Coral', 'USA', 'Florida', 102286, 224),(4028, 'Arvada', 'USA', 'Colorado', 102153, 224),(4029, 'Pueblo', 'USA', 'Colorado', 102121, 224),(4030, 'Sandy', 'USA', 'Utah', 101853, 224),(
    4031,
    'Athens-Clarke County',
    'USA',
    'Georgia',
    101489,
    224
  ),(
    4032,
    'Cambridge',
    'USA',
    'Massachusetts',
    101355,
    224
  ),(4033, 'Westminster', 'USA', 'Colorado', 100940, 224),(
    4034,
    'San Buenaventura',
    'USA',
    'California',
    100916,
    224
  ),(4035, 'Portsmouth', 'USA', 'Virginia', 100565, 224),(4036, 'Livonia', 'USA', 'Michigan', 100545, 224),(4037, 'Burbank', 'USA', 'California', 100316, 224),(4038, 'Clearwater', 'USA', 'Florida', 99936, 224),(4039, 'Midland', 'USA', 'Texas', 98293, 224),(4040, 'Davenport', 'USA', 'Iowa', 98256, 224),(
    4041,
    'Mission Viejo',
    'USA',
    'California',
    98049,
    224
  ),(4042, 'Miami Beach', 'USA', 'Florida', 97855, 224),(4043, 'Sunrise Manor', 'USA', 'Nevada', 95362, 224),(
    4044,
    'New Bedford',
    'USA',
    'Massachusetts',
    94780,
    224
  ),(4045, 'El Cajon', 'USA', 'California', 94578, 224),(4046, 'Norman', 'USA', 'Oklahoma', 94193, 224),(4047, 'Richmond', 'USA', 'California', 94100, 224),(4048, 'Albany', 'USA', 'New York', 93994, 224),(4049, 'Brockton', 'USA', 'Massachusetts', 93653, 224),(4050, 'Roanoke', 'USA', 'Virginia', 93357, 224),(4051, 'Billings', 'USA', 'Montana', 92988, 224),(4052, 'Compton', 'USA', 'California', 92864, 224),(4053, 'Gainesville', 'USA', 'Florida', 92291, 224),(4054, 'Fairfield', 'USA', 'California', 92256, 224),(4055, 'Arden-Arcade', 'USA', 'California', 92040, 224),(4056, 'San Mateo', 'USA', 'California', 91799, 224),(4057, 'Visalia', 'USA', 'California', 91762, 224),(4058, 'Boulder', 'USA', 'Colorado', 91238, 224),(4059, 'Cary', 'USA', 'North Carolina', 91213, 224),(4060, 'Santa Monica', 'USA', 'California', 91084, 224),(
    4061,
    'Fall River',
    'USA',
    'Massachusetts',
    90555,
    224
  ),(4062, 'Kenosha', 'USA', 'Wisconsin', 89447, 224),(4063, 'Elgin', 'USA', 'Illinois', 89408, 224),(4064, 'Odessa', 'USA', 'Texas', 89293, 224),(4065, 'Carson', 'USA', 'California', 89089, 224),(
    4066,
    'Charleston',
    'USA',
    'South Carolina',
    89063,
    224
  ),(
    4067,
    'Charlotte Amalie',
    'VIR',
    'St Thomas',
    13000,
    230
  ),(4068, 'Harare', 'ZWE', 'Harare', 1410000, 239),(4069, 'Bulawayo', 'ZWE', 'Bulawayo', 621742, 239),(4070, 'Chitungwiza', 'ZWE', 'Harare', 274912, 239),(4071, 'Mount Darwin', 'ZWE', 'Harare', 164362, 239),(4072, 'Mutare', 'ZWE', 'Manicaland', 131367, 239),(4073, 'Gweru', 'ZWE', 'Midlands', 128037, 239),(4074, 'Gaza', 'PSE', 'Gaza', 353632, 177),(4075, 'Khan Yunis', 'PSE', 'Khan Yunis', 123175, 177),(4076, 'Hebron', 'PSE', 'Hebron', 119401, 177),(4077, 'Jabaliya', 'PSE', 'North Gaza', 113901, 177),(4078, 'Nablus', 'PSE', 'Nablus', 100231, 177),(4079, 'Rafah', 'PSE', 'Rafah', 92020, 177);
  /*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
- - - - Table structure for table `countries` - - DROP TABLE IF EXISTS `countries`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `code` char(3) NOT NULL DEFAULT '',
    `name` char(52) NOT NULL DEFAULT '',
    `continent` enum(
      'Asia',
      'Europe',
      'North America',
      'Africa',
      'Oceania',
      'Antarctica',
      'South America'
    ) NOT NULL DEFAULT 'Asia',
    `region` char(26) NOT NULL DEFAULT '',
    `surface_area` float(10, 2) NOT NULL DEFAULT '0.00',
    `indep_year` smallint(6) DEFAULT NULL,
    `population` int(11) NOT NULL DEFAULT '0',
    `life_expectancy` float(3, 1) DEFAULT NULL,
    `gnp` float(10, 2) DEFAULT NULL,
    `gnp_old` float(10, 2) DEFAULT NULL,
    `local_name` char(45) NOT NULL DEFAULT '',
    `government_form` char(45) NOT NULL DEFAULT '',
    `head_of_state` char(60) DEFAULT NULL,
    `capital` int(11) DEFAULT NULL,
    `code2` char(2) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 240 DEFAULT CHARSET = latin1;
  /*!40101 SET character_set_client = @saved_cs_client */;
- - - - Dumping data for table `countries` - - LOCK TABLES `countries` WRITE;
  /*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO
  `countries`
VALUES
  (
    1,
    'ABW',
    'Aruba',
    'North America',
    'Caribbean',
    193.00,
    NULL,
    103000,
    78.4,
    828.00,
    793.00,
    'Aruba',
    'Nonmetropolitan Territory of The Netherlands',
    'Beatrix',
    129,
    'AW'
  ),(
    2,
    'AFG',
    'Afghanistan',
    'Asia',
    'Southern and Central Asia',
    652090.00,
    1919,
    22720000,
    45.9,
    5976.00,
    NULL,
    'Afganistan/Afqanestan',
    'Islamic Emirate',
    'Mohammad Omar',
    1,
    'AF'
  ),(
    3,
    'AGO',
    'Angola',
    'Africa',
    'Central Africa',
    1246700.00,
    1975,
    12878000,
    38.3,
    6648.00,
    7984.00,
    'Angola',
    'Republic',
    'JosÃ© Eduardo dos Santos',
    56,
    'AO'
  ),(
    4,
    'AIA',
    'Anguilla',
    'North America',
    'Caribbean',
    96.00,
    NULL,
    8000,
    76.1,
    63.20,
    NULL,
    'Anguilla',
    'Dependent Territory of the UK',
    'Elisabeth II',
    62,
    'AI'
  ),(
    5,
    'ALB',
    'Albania',
    'Europe',
    'Southern Europe',
    28748.00,
    1912,
    3401200,
    71.6,
    3205.00,
    2500.00,
    'ShqipÃ«ria',
    'Republic',
    'Rexhep Mejdani',
    34,
    'AL'
  ),(
    6,
    'AND',
    'Andorra',
    'Europe',
    'Southern Europe',
    468.00,
    1278,
    78000,
    83.5,
    1630.00,
    NULL,
    'Andorra',
    'Parliamentary Coprincipality',
    '',
    55,
    'AD'
  ),(
    7,
    'ANT',
    'Netherlands Antilles',
    'North America',
    'Caribbean',
    800.00,
    NULL,
    217000,
    74.7,
    1941.00,
    NULL,
    'Nederlandse Antillen',
    'Nonmetropolitan Territory of The Netherlands',
    'Beatrix',
    33,
    'AN'
  ),(
    8,
    'ARE',
    'United Arab Emirates',
    'Asia',
    'Middle East',
    83600.00,
    1971,
    2441000,
    74.1,
    37966.00,
    36846.00,
    'Al-Imarat al-Â´Arabiya al-Muttahida',
    'Emirate Federation',
    'Zayid bin Sultan al-Nahayan',
    65,
    'AE'
  ),(
    9,
    'ARG',
    'Argentina',
    'South America',
    'South America',
    2780400.00,
    1816,
    37032000,
    75.1,
    340238.00,
    323310.00,
    'Argentina',
    'Federal Republic',
    'Fernando de la RÃºa',
    69,
    'AR'
  ),(
    10,
    'ARM',
    'Armenia',
    'Asia',
    'Middle East',
    29800.00,
    1991,
    3520000,
    66.4,
    1813.00,
    1627.00,
    'Hajastan',
    'Republic',
    'Robert KotÂšarjan',
    126,
    'AM'
  ),(
    11,
    'ASM',
    'American Samoa',
    'Oceania',
    'Polynesia',
    199.00,
    NULL,
    68000,
    75.1,
    334.00,
    NULL,
    'Amerika Samoa',
    'US Territory',
    'George W. Bush',
    54,
    'AS'
  ),(
    12,
    'ATA',
    'Antarctica',
    'Antarctica',
    'Antarctica',
    13120000.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Â–',
    'Co-administrated',
    '',
    NULL,
    'AQ'
  ),(
    13,
    'ATF',
    'French Southern territories',
    'Antarctica',
    'Antarctica',
    7780.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Terres australes franÃ§aises',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    NULL,
    'TF'
  ),(
    14,
    'ATG',
    'Antigua and Barbuda',
    'North America',
    'Caribbean',
    442.00,
    1981,
    68000,
    70.5,
    612.00,
    584.00,
    'Antigua and Barbuda',
    'Constitutional Monarchy',
    'Elisabeth II',
    63,
    'AG'
  ),(
    15,
    'AUS',
    'Australia',
    'Oceania',
    'Australia and New Zealand',
    7741220.00,
    1901,
    18886000,
    79.8,
    351182.00,
    392911.00,
    'Australia',
    'Constitutional Monarchy, Federation',
    'Elisabeth II',
    135,
    'AU'
  ),(
    16,
    'AUT',
    'Austria',
    'Europe',
    'Western Europe',
    83859.00,
    1918,
    8091800,
    77.7,
    211860.00,
    206025.00,
    'Ã–sterreich',
    'Federal Republic',
    'Thomas Klestil',
    1523,
    'AT'
  ),(
    17,
    'AZE',
    'Azerbaijan',
    'Asia',
    'Middle East',
    86600.00,
    1991,
    7734000,
    62.9,
    4127.00,
    4100.00,
    'AzÃ¤rbaycan',
    'Federal Republic',
    'HeydÃ¤r Ã„liyev',
    144,
    'AZ'
  ),(
    18,
    'BDI',
    'Burundi',
    'Africa',
    'Eastern Africa',
    27834.00,
    1962,
    6695000,
    46.2,
    903.00,
    982.00,
    'Burundi/Uburundi',
    'Republic',
    'Pierre Buyoya',
    552,
    'BI'
  ),(
    19,
    'BEL',
    'Belgium',
    'Europe',
    'Western Europe',
    30518.00,
    1830,
    10239000,
    77.8,
    249704.00,
    243948.00,
    'BelgiÃ«/Belgique',
    'Constitutional Monarchy, Federation',
    'Albert II',
    179,
    'BE'
  ),(
    20,
    'BEN',
    'Benin',
    'Africa',
    'Western Africa',
    112622.00,
    1960,
    6097000,
    50.2,
    2357.00,
    2141.00,
    'BÃ©nin',
    'Republic',
    'Mathieu KÃ©rÃ©kou',
    187,
    'BJ'
  ),(
    21,
    'BFA',
    'Burkina Faso',
    'Africa',
    'Western Africa',
    274000.00,
    1960,
    11937000,
    46.7,
    2425.00,
    2201.00,
    'Burkina Faso',
    'Republic',
    'Blaise CompaorÃ©',
    549,
    'BF'
  ),(
    22,
    'BGD',
    'Bangladesh',
    'Asia',
    'Southern and Central Asia',
    143998.00,
    1971,
    129155000,
    60.2,
    32852.00,
    31966.00,
    'Bangladesh',
    'Republic',
    'Shahabuddin Ahmad',
    150,
    'BD'
  ),(
    23,
    'BGR',
    'Bulgaria',
    'Europe',
    'Eastern Europe',
    110994.00,
    1908,
    8190900,
    70.9,
    12178.00,
    10169.00,
    'Balgarija',
    'Republic',
    'Petar Stojanov',
    539,
    'BG'
  ),(
    24,
    'BHR',
    'Bahrain',
    'Asia',
    'Middle East',
    694.00,
    1971,
    617000,
    73.0,
    6366.00,
    6097.00,
    'Al-Bahrayn',
    'Monarchy (Emirate)',
    'Hamad ibn Isa al-Khalifa',
    149,
    'BH'
  ),(
    25,
    'BHS',
    'Bahamas',
    'North America',
    'Caribbean',
    13878.00,
    1973,
    307000,
    71.1,
    3527.00,
    3347.00,
    'The Bahamas',
    'Constitutional Monarchy',
    'Elisabeth II',
    148,
    'BS'
  ),(
    26,
    'BIH',
    'Bosnia and Herzegovina',
    'Europe',
    'Southern Europe',
    51197.00,
    1992,
    3972000,
    71.5,
    2841.00,
    NULL,
    'Bosna i Hercegovina',
    'Federal Republic',
    'Ante Jelavic',
    201,
    'BA'
  ),(
    27,
    'BLR',
    'Belarus',
    'Europe',
    'Eastern Europe',
    207600.00,
    1991,
    10236000,
    68.0,
    13714.00,
    NULL,
    'Belarus',
    'Republic',
    'Aljaksandr LukaÂšenka',
    3520,
    'BY'
  ),(
    28,
    'BLZ',
    'Belize',
    'North America',
    'Central America',
    22696.00,
    1981,
    241000,
    70.9,
    630.00,
    616.00,
    'Belize',
    'Constitutional Monarchy',
    'Elisabeth II',
    185,
    'BZ'
  ),(
    29,
    'BMU',
    'Bermuda',
    'North America',
    'North America',
    53.00,
    NULL,
    65000,
    76.9,
    2328.00,
    2190.00,
    'Bermuda',
    'Dependent Territory of the UK',
    'Elisabeth II',
    191,
    'BM'
  ),(
    30,
    'BOL',
    'Bolivia',
    'South America',
    'South America',
    1098581.00,
    1825,
    8329000,
    63.7,
    8571.00,
    7967.00,
    'Bolivia',
    'Republic',
    'Hugo BÃ¡nzer SuÃ¡rez',
    194,
    'BO'
  ),(
    31,
    'BRA',
    'Brazil',
    'South America',
    'South America',
    8547403.00,
    1822,
    170115000,
    62.9,
    776739.00,
    804108.00,
    'Brasil',
    'Federal Republic',
    'Fernando Henrique Cardoso',
    211,
    'BR'
  ),(
    32,
    'BRB',
    'Barbados',
    'North America',
    'Caribbean',
    430.00,
    1966,
    270000,
    73.0,
    2223.00,
    2186.00,
    'Barbados',
    'Constitutional Monarchy',
    'Elisabeth II',
    174,
    'BB'
  ),(
    33,
    'BRN',
    'Brunei',
    'Asia',
    'Southeast Asia',
    5765.00,
    1984,
    328000,
    73.6,
    11705.00,
    12460.00,
    'Brunei Darussalam',
    'Monarchy (Sultanate)',
    'Haji Hassan al-Bolkiah',
    538,
    'BN'
  ),(
    34,
    'BTN',
    'Bhutan',
    'Asia',
    'Southern and Central Asia',
    47000.00,
    1910,
    2124000,
    52.4,
    372.00,
    383.00,
    'Druk-Yul',
    'Monarchy',
    'Jigme Singye Wangchuk',
    192,
    'BT'
  ),(
    35,
    'BVT',
    'Bouvet Island',
    'Antarctica',
    'Antarctica',
    59.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'BouvetÃ¸ya',
    'Dependent Territory of Norway',
    'Harald V',
    NULL,
    'BV'
  ),(
    36,
    'BWA',
    'Botswana',
    'Africa',
    'Southern Africa',
    581730.00,
    1966,
    1622000,
    39.3,
    4834.00,
    4935.00,
    'Botswana',
    'Republic',
    'Festus G. Mogae',
    204,
    'BW'
  ),(
    37,
    'CAF',
    'Central African Republic',
    'Africa',
    'Central Africa',
    622984.00,
    1960,
    3615000,
    44.0,
    1054.00,
    993.00,
    'Centrafrique/BÃª-AfrÃ®ka',
    'Republic',
    'Ange-FÃ©lix PatassÃ©',
    1889,
    'CF'
  ),(
    38,
    'CAN',
    'Canada',
    'North America',
    'North America',
    9970610.00,
    1867,
    31147000,
    79.4,
    598862.00,
    625626.00,
    'Canada',
    'Constitutional Monarchy, Federation',
    'Elisabeth II',
    1822,
    'CA'
  ),(
    39,
    'CCK',
    'Cocos (Keeling) Islands',
    'Oceania',
    'Australia and New Zealand',
    14.00,
    NULL,
    600,
    NULL,
    0.00,
    NULL,
    'Cocos (Keeling) Islands',
    'Territory of Australia',
    'Elisabeth II',
    2317,
    'CC'
  ),(
    40,
    'CHE',
    'Switzerland',
    'Europe',
    'Western Europe',
    41284.00,
    1499,
    7160400,
    79.6,
    264478.00,
    256092.00,
    'Schweiz/Suisse/Svizzera/Svizra',
    'Federation',
    'Adolf Ogi',
    3248,
    'CH'
  ),(
    41,
    'CHL',
    'Chile',
    'South America',
    'South America',
    756626.00,
    1810,
    15211000,
    75.7,
    72949.00,
    75780.00,
    'Chile',
    'Republic',
    'Ricardo Lagos Escobar',
    554,
    'CL'
  ),(
    42,
    'CHN',
    'China',
    'Asia',
    'Eastern Asia',
    9572900.00,
    -1523,
    1277558000,
    71.4,
    982268.00,
    917719.00,
    'Zhongquo',
    'People\'sRepublic',
    'Jiang Zemin',
    1891,
    'CN'
  ),(
    43,
    'CIV',
    'CÃ´te dÂ’Ivoire',
    'Africa',
    'Western Africa',
    322463.00,
    1960,
    14786000,
    45.2,
    11345.00,
    10285.00,
    'CÃ´te dÂ’Ivoire',
    'Republic',
    'Laurent Gbagbo',
    2814,
    'CI'
  ),(
    44,
    'CMR',
    'Cameroon',
    'Africa',
    'Central Africa',
    475442.00,
    1960,
    15085000,
    54.8,
    9174.00,
    8596.00,
    'Cameroun/Cameroon',
    'Republic',
    'Paul Biya',
    1804,
    'CM'
  ),(
    45,
    'COD',
    'Congo, The Democratic Republic of the',
    'Africa',
    'Central Africa',
    2344858.00,
    1960,
    51654000,
    48.8,
    6964.00,
    2474.00,
    'RÃ©publique DÃ©mocratique du Congo',
    'Republic',
    'Joseph Kabila',
    2298,
    'CD'
  ),(
    46,
    'COG',
    'Congo',
    'Africa',
    'Central Africa',
    342000.00,
    1960,
    2943000,
    47.4,
    2108.00,
    2287.00,
    'Congo',
    'Republic',
    'Denis Sassou-Nguesso',
    2296,
    'CG'
  ),(
    47,
    'COK',
    'Cook Islands',
    'Oceania',
    'Polynesia',
    236.00,
    NULL,
    20000,
    71.1,
    100.00,
    NULL,
    'The Cook Islands',
    'Nonmetropolitan Territory of New Zealand',
    'Elisabeth II',
    583,
    'CK'
  ),(
    48,
    'COL',
    'Colombia',
    'South America',
    'South America',
    1138914.00,
    1810,
    42321000,
    70.3,
    102896.00,
    105116.00,
    'Colombia',
    'Republic',
    'AndrÃ©s Pastrana Arango',
    2257,
    'CO'
  ),(
    49,
    'COM',
    'Comoros',
    'Africa',
    'Eastern Africa',
    1862.00,
    1975,
    578000,
    60.0,
    4401.00,
    4361.00,
    'Komori/Comores',
    'Republic',
    'Azali Assoumani',
    2295,
    'KM'
  ),(
    50,
    'CPV',
    'Cape Verde',
    'Africa',
    'Western Africa',
    4033.00,
    1975,
    428000,
    68.9,
    435.00,
    420.00,
    'Cabo Verde',
    'Republic',
    'AntÃ³nio Mascarenhas Monteiro',
    1859,
    'CV'
  ),(
    51,
    'CRI',
    'Costa Rica',
    'North America',
    'Central America',
    51100.00,
    1821,
    4023000,
    75.8,
    10226.00,
    9757.00,
    'Costa Rica',
    'Republic',
    'Miguel Ãngel RodrÃ­guez EcheverrÃ­a',
    584,
    'CR'
  ),(
    52,
    'CUB',
    'Cuba',
    'North America',
    'Caribbean',
    110861.00,
    1902,
    11201000,
    76.2,
    17843.00,
    18862.00,
    'Cuba',
    'Socialistic Republic',
    'Fidel Castro Ruz',
    2413,
    'CU'
  ),(
    53,
    'CXR',
    'Christmas Island',
    'Oceania',
    'Australia and New Zealand',
    135.00,
    NULL,
    2500,
    NULL,
    0.00,
    NULL,
    'Christmas Island',
    'Territory of Australia',
    'Elisabeth II',
    1791,
    'CX'
  ),(
    54,
    'CYM',
    'Cayman Islands',
    'North America',
    'Caribbean',
    264.00,
    NULL,
    38000,
    78.9,
    1263.00,
    1186.00,
    'Cayman Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    553,
    'KY'
  ),(
    55,
    'CYP',
    'Cyprus',
    'Asia',
    'Middle East',
    9251.00,
    1960,
    754700,
    76.7,
    9333.00,
    8246.00,
    'KÃ½pros/Kibris',
    'Republic',
    'Glafkos Klerides',
    2430,
    'CY'
  ),(
    56,
    'CZE',
    'Czech Republic',
    'Europe',
    'Eastern Europe',
    78866.00,
    1993,
    10278100,
    74.5,
    55017.00,
    52037.00,
    'Â¸esko',
    'Republic',
    'VÃ¡clav Havel',
    3339,
    'CZ'
  ),(
    57,
    'DEU',
    'Germany',
    'Europe',
    'Western Europe',
    357022.00,
    1955,
    82164700,
    77.4,
    2133367.00,
    2102826.00,
    'Deutschland',
    'Federal Republic',
    'Johannes Rau',
    3068,
    'DE'
  ),(
    58,
    'DJI',
    'Djibouti',
    'Africa',
    'Eastern Africa',
    23200.00,
    1977,
    638000,
    50.8,
    382.00,
    373.00,
    'Djibouti/Jibuti',
    'Republic',
    'Ismail Omar Guelleh',
    585,
    'DJ'
  ),(
    59,
    'DMA',
    'Dominica',
    'North America',
    'Caribbean',
    751.00,
    1978,
    71000,
    73.4,
    256.00,
    243.00,
    'Dominica',
    'Republic',
    'Vernon Shaw',
    586,
    'DM'
  ),(
    60,
    'DNK',
    'Denmark',
    'Europe',
    'Nordic Countries',
    43094.00,
    800,
    5330000,
    76.5,
    174099.00,
    169264.00,
    'Danmark',
    'Constitutional Monarchy',
    'Margrethe II',
    3315,
    'DK'
  ),(
    61,
    'DOM',
    'Dominican Republic',
    'North America',
    'Caribbean',
    48511.00,
    1844,
    8495000,
    73.2,
    15846.00,
    15076.00,
    'RepÃºblica Dominicana',
    'Republic',
    'HipÃ³lito MejÃ­a DomÃ­nguez',
    587,
    'DO'
  ),(
    62,
    'DZA',
    'Algeria',
    'Africa',
    'Northern Africa',
    2381741.00,
    1962,
    31471000,
    69.7,
    49982.00,
    46966.00,
    'Al-JazaÂ’ir/AlgÃ©rie',
    'Republic',
    'Abdelaziz Bouteflika',
    35,
    'DZ'
  ),(
    63,
    'ECU',
    'Ecuador',
    'South America',
    'South America',
    283561.00,
    1822,
    12646000,
    71.1,
    19770.00,
    19769.00,
    'Ecuador',
    'Republic',
    'Gustavo Noboa Bejarano',
    594,
    'EC'
  ),(
    64,
    'EGY',
    'Egypt',
    'Africa',
    'Northern Africa',
    1001449.00,
    1922,
    68470000,
    63.3,
    82710.00,
    75617.00,
    'Misr',
    'Republic',
    'Hosni Mubarak',
    608,
    'EG'
  ),(
    65,
    'ERI',
    'Eritrea',
    'Africa',
    'Eastern Africa',
    117600.00,
    1993,
    3850000,
    55.8,
    650.00,
    755.00,
    'Ertra',
    'Republic',
    'Isayas Afewerki [Isaias Afwerki]',
    652,
    'ER'
  ),(
    66,
    'ESH',
    'Western Sahara',
    'Africa',
    'Northern Africa',
    266000.00,
    NULL,
    293000,
    49.8,
    60.00,
    NULL,
    'As-Sahrawiya',
    'Occupied by Marocco',
    'Mohammed Abdel Aziz',
    2453,
    'EH'
  ),(
    67,
    'ESP',
    'Spain',
    'Europe',
    'Southern Europe',
    505992.00,
    1492,
    39441700,
    78.8,
    553233.00,
    532031.00,
    'EspaÃ±a',
    'Constitutional Monarchy',
    'Juan Carlos I',
    653,
    'ES'
  ),(
    68,
    'EST',
    'Estonia',
    'Europe',
    'Baltic Countries',
    45227.00,
    1991,
    1439200,
    69.5,
    5328.00,
    3371.00,
    'Eesti',
    'Republic',
    'Lennart Meri',
    3791,
    'EE'
  ),(
    69,
    'ETH',
    'Ethiopia',
    'Africa',
    'Eastern Africa',
    1104300.00,
    -1000,
    62565000,
    45.2,
    6353.00,
    6180.00,
    'YeItyopÂ´iya',
    'Republic',
    'Negasso Gidada',
    756,
    'ET'
  ),(
    70,
    'FIN',
    'Finland',
    'Europe',
    'Nordic Countries',
    338145.00,
    1917,
    5171300,
    77.4,
    121914.00,
    119833.00,
    'Suomi',
    'Republic',
    'Tarja Halonen',
    3236,
    'FI'
  ),(
    71,
    'FJI',
    'Fiji Islands',
    'Oceania',
    'Melanesia',
    18274.00,
    1970,
    817000,
    67.9,
    1536.00,
    2149.00,
    'Fiji Islands',
    'Republic',
    'Josefa Iloilo',
    764,
    'FJ'
  ),(
    72,
    'FLK',
    'Falkland Islands',
    'South America',
    'South America',
    12173.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Falkland Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    763,
    'FK'
  ),(
    73,
    'FRA',
    'France',
    'Europe',
    'Western Europe',
    551500.00,
    843,
    59225700,
    78.8,
    1424285.00,
    1392448.00,
    'France',
    'Republic',
    'Jacques Chirac',
    2974,
    'FR'
  ),(
    74,
    'FRO',
    'Faroe Islands',
    'Europe',
    'Nordic Countries',
    1399.00,
    NULL,
    43000,
    78.4,
    0.00,
    NULL,
    'FÃ¸royar',
    'Part of Denmark',
    'Margrethe II',
    901,
    'FO'
  ),(
    75,
    'FSM',
    'Micronesia, Federated States of',
    'Oceania',
    'Micronesia',
    702.00,
    1990,
    119000,
    68.6,
    212.00,
    NULL,
    'Micronesia',
    'Federal Republic',
    'Leo A. Falcam',
    2689,
    'FM'
  ),(
    76,
    'GAB',
    'Gabon',
    'Africa',
    'Central Africa',
    267668.00,
    1960,
    1226000,
    50.1,
    5493.00,
    5279.00,
    'Le Gabon',
    'Republic',
    'Omar Bongo',
    902,
    'GA'
  ),(
    77,
    'GBR',
    'United Kingdom',
    'Europe',
    'British Islands',
    242900.00,
    1066,
    59623400,
    77.7,
    1378330.00,
    1296830.00,
    'United Kingdom',
    'Constitutional Monarchy',
    'Elisabeth II',
    456,
    'GB'
  ),(
    78,
    'GEO',
    'Georgia',
    'Asia',
    'Middle East',
    69700.00,
    1991,
    4968000,
    64.5,
    6064.00,
    5924.00,
    'Sakartvelo',
    'Republic',
    'Eduard ÂŠevardnadze',
    905,
    'GE'
  ),(
    79,
    'GHA',
    'Ghana',
    'Africa',
    'Western Africa',
    238533.00,
    1957,
    20212000,
    57.4,
    7137.00,
    6884.00,
    'Ghana',
    'Republic',
    'John Kufuor',
    910,
    'GH'
  ),(
    80,
    'GIB',
    'Gibraltar',
    'Europe',
    'Southern Europe',
    6.00,
    NULL,
    25000,
    79.0,
    258.00,
    NULL,
    'Gibraltar',
    'Dependent Territory of the UK',
    'Elisabeth II',
    915,
    'GI'
  ),(
    81,
    'GIN',
    'Guinea',
    'Africa',
    'Western Africa',
    245857.00,
    1958,
    7430000,
    45.6,
    2352.00,
    2383.00,
    'GuinÃ©e',
    'Republic',
    'Lansana ContÃ©',
    926,
    'GN'
  ),(
    82,
    'GLP',
    'Guadeloupe',
    'North America',
    'Caribbean',
    1705.00,
    NULL,
    456000,
    77.0,
    3501.00,
    NULL,
    'Guadeloupe',
    'Overseas Department of France',
    'Jacques Chirac',
    919,
    'GP'
  ),(
    83,
    'GMB',
    'Gambia',
    'Africa',
    'Western Africa',
    11295.00,
    1965,
    1305000,
    53.2,
    320.00,
    325.00,
    'The Gambia',
    'Republic',
    'Yahya Jammeh',
    904,
    'GM'
  ),(
    84,
    'GNB',
    'Guinea-Bissau',
    'Africa',
    'Western Africa',
    36125.00,
    1974,
    1213000,
    49.0,
    293.00,
    272.00,
    'GuinÃ©-Bissau',
    'Republic',
    'Kumba IalÃ¡',
    927,
    'GW'
  ),(
    85,
    'GNQ',
    'Equatorial Guinea',
    'Africa',
    'Central Africa',
    28051.00,
    1968,
    453000,
    53.6,
    283.00,
    542.00,
    'Guinea Ecuatorial',
    'Republic',
    'Teodoro Obiang Nguema Mbasogo',
    2972,
    'GQ'
  ),(
    86,
    'GRC',
    'Greece',
    'Europe',
    'Southern Europe',
    131626.00,
    1830,
    10545700,
    78.4,
    120724.00,
    119946.00,
    'EllÃ¡da',
    'Republic',
    'Kostis Stefanopoulos',
    2401,
    'GR'
  ),(
    87,
    'GRD',
    'Grenada',
    'North America',
    'Caribbean',
    344.00,
    1974,
    94000,
    64.5,
    318.00,
    NULL,
    'Grenada',
    'Constitutional Monarchy',
    'Elisabeth II',
    916,
    'GD'
  ),(
    88,
    'GRL',
    'Greenland',
    'North America',
    'North America',
    2166090.00,
    NULL,
    56000,
    68.1,
    0.00,
    NULL,
    'Kalaallit Nunaat/GrÃ¸nland',
    'Part of Denmark',
    'Margrethe II',
    917,
    'GL'
  ),(
    89,
    'GTM',
    'Guatemala',
    'North America',
    'Central America',
    108889.00,
    1821,
    11385000,
    66.2,
    19008.00,
    17797.00,
    'Guatemala',
    'Republic',
    'Alfonso Portillo Cabrera',
    922,
    'GT'
  ),(
    90,
    'GUF',
    'French Guiana',
    'South America',
    'South America',
    90000.00,
    NULL,
    181000,
    76.1,
    681.00,
    NULL,
    'Guyane franÃ§aise',
    'Overseas Department of France',
    'Jacques Chirac',
    3014,
    'GF'
  ),(
    91,
    'GUM',
    'Guam',
    'Oceania',
    'Micronesia',
    549.00,
    NULL,
    168000,
    77.8,
    1197.00,
    1136.00,
    'Guam',
    'US Territory',
    'George W. Bush',
    921,
    'GU'
  ),(
    92,
    'GUY',
    'Guyana',
    'South America',
    'South America',
    214969.00,
    1966,
    861000,
    64.0,
    722.00,
    743.00,
    'Guyana',
    'Republic',
    'Bharrat Jagdeo',
    928,
    'GY'
  ),(
    93,
    'HKG',
    'Hong Kong',
    'Asia',
    'Eastern Asia',
    1075.00,
    NULL,
    6782000,
    79.5,
    166448.00,
    173610.00,
    'Xianggang/Hong Kong',
    'Special Administrative Region of China',
    'Jiang Zemin',
    937,
    'HK'
  ),(
    94,
    'HMD',
    'Heard Island and McDonald Islands',
    'Antarctica',
    'Antarctica',
    359.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Heard and McDonald Islands',
    'Territory of Australia',
    'Elisabeth II',
    NULL,
    'HM'
  ),(
    95,
    'HND',
    'Honduras',
    'North America',
    'Central America',
    112088.00,
    1838,
    6485000,
    69.9,
    5333.00,
    4697.00,
    'Honduras',
    'Republic',
    'Carlos Roberto Flores FacussÃ©',
    933,
    'HN'
  ),(
    96,
    'HRV',
    'Croatia',
    'Europe',
    'Southern Europe',
    56538.00,
    1991,
    4473000,
    73.7,
    20208.00,
    19300.00,
    'Hrvatska',
    'Republic',
    'ÂŠtipe Mesic',
    2409,
    'HR'
  ),(
    97,
    'HTI',
    'Haiti',
    'North America',
    'Caribbean',
    27750.00,
    1804,
    8222000,
    49.2,
    3459.00,
    3107.00,
    'HaÃ¯ti/Dayti',
    'Republic',
    'Jean-Bertrand Aristide',
    929,
    'HT'
  ),(
    98,
    'HUN',
    'Hungary',
    'Europe',
    'Eastern Europe',
    93030.00,
    1918,
    10043200,
    71.4,
    48267.00,
    45914.00,
    'MagyarorszÃ¡g',
    'Republic',
    'Ferenc MÃ¡dl',
    3483,
    'HU'
  ),(
    99,
    'IDN',
    'Indonesia',
    'Asia',
    'Southeast Asia',
    1904569.00,
    1945,
    212107000,
    68.0,
    84982.00,
    215002.00,
    'Indonesia',
    'Republic',
    'Abdurrahman Wahid',
    939,
    'ID'
  ),(
    100,
    'IND',
    'India',
    'Asia',
    'Southern and Central Asia',
    3287263.00,
    1947,
    1013662000,
    62.5,
    447114.00,
    430572.00,
    'Bharat/India',
    'Federal Republic',
    'Kocheril Raman Narayanan',
    1109,
    'IN'
  ),(
    101,
    'IOT',
    'British Indian Ocean Territory',
    'Africa',
    'Eastern Africa',
    78.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'British Indian Ocean Territory',
    'Dependent Territory of the UK',
    'Elisabeth II',
    NULL,
    'IO'
  ),(
    102,
    'IRL',
    'Ireland',
    'Europe',
    'British Islands',
    70273.00,
    1921,
    3775100,
    76.8,
    75921.00,
    73132.00,
    'Ireland/Ã‰ire',
    'Republic',
    'Mary McAleese',
    1447,
    'IE'
  ),(
    103,
    'IRN',
    'Iran',
    'Asia',
    'Southern and Central Asia',
    1648195.00,
    1906,
    67702000,
    69.7,
    195746.00,
    160151.00,
    'Iran',
    'Islamic Republic',
    'Ali Mohammad Khatami-Ardakani',
    1380,
    'IR'
  ),(
    104,
    'IRQ',
    'Iraq',
    'Asia',
    'Middle East',
    438317.00,
    1932,
    23115000,
    66.5,
    11500.00,
    NULL,
    'Al-Â´Iraq',
    'Republic',
    'Saddam Hussein al-Takriti',
    1365,
    'IQ'
  ),(
    105,
    'ISL',
    'Iceland',
    'Europe',
    'Nordic Countries',
    103000.00,
    1944,
    279000,
    79.4,
    8255.00,
    7474.00,
    'Ãsland',
    'Republic',
    'Ã“lafur Ragnar GrÃ­msson',
    1449,
    'IS'
  ),(
    106,
    'ISR',
    'Israel',
    'Asia',
    'Middle East',
    21056.00,
    1948,
    6217000,
    78.6,
    97477.00,
    98577.00,
    'YisraÂ’el/IsraÂ’il',
    'Republic',
    'Moshe Katzav',
    1450,
    'IL'
  ),(
    107,
    'ITA',
    'Italy',
    'Europe',
    'Southern Europe',
    301316.00,
    1861,
    57680000,
    79.0,
    1161755.00,
    1145372.00,
    'Italia',
    'Republic',
    'Carlo Azeglio Ciampi',
    1464,
    'IT'
  ),(
    108,
    'JAM',
    'Jamaica',
    'North America',
    'Caribbean',
    10990.00,
    1962,
    2583000,
    75.2,
    6871.00,
    6722.00,
    'Jamaica',
    'Constitutional Monarchy',
    'Elisabeth II',
    1530,
    'JM'
  ),(
    109,
    'JOR',
    'Jordan',
    'Asia',
    'Middle East',
    88946.00,
    1946,
    5083000,
    77.4,
    7526.00,
    7051.00,
    'Al-Urdunn',
    'Constitutional Monarchy',
    'Abdullah II',
    1786,
    'JO'
  ),(
    110,
    'JPN',
    'Japan',
    'Asia',
    'Eastern Asia',
    377829.00,
    -660,
    126714000,
    80.7,
    3787042.00,
    4192638.00,
    'Nihon/Nippon',
    'Constitutional Monarchy',
    'Akihito',
    1532,
    'JP'
  ),(
    111,
    'KAZ',
    'Kazakstan',
    'Asia',
    'Southern and Central Asia',
    2724900.00,
    1991,
    16223000,
    63.2,
    24375.00,
    23383.00,
    'Qazaqstan',
    'Republic',
    'Nursultan Nazarbajev',
    1864,
    'KZ'
  ),(
    112,
    'KEN',
    'Kenya',
    'Africa',
    'Eastern Africa',
    580367.00,
    1963,
    30080000,
    48.0,
    9217.00,
    10241.00,
    'Kenya',
    'Republic',
    'Daniel arap Moi',
    1881,
    'KE'
  ),(
    113,
    'KGZ',
    'Kyrgyzstan',
    'Asia',
    'Southern and Central Asia',
    199900.00,
    1991,
    4699000,
    63.4,
    1626.00,
    1767.00,
    'Kyrgyzstan',
    'Republic',
    'Askar Akajev',
    2253,
    'KG'
  ),(
    114,
    'KHM',
    'Cambodia',
    'Asia',
    'Southeast Asia',
    181035.00,
    1953,
    11168000,
    56.5,
    5121.00,
    5670.00,
    'KÃ¢mpuchÃ©a',
    'Constitutional Monarchy',
    'Norodom Sihanouk',
    1800,
    'KH'
  ),(
    115,
    'KIR',
    'Kiribati',
    'Oceania',
    'Micronesia',
    726.00,
    1979,
    83000,
    59.8,
    40.70,
    NULL,
    'Kiribati',
    'Republic',
    'Teburoro Tito',
    2256,
    'KI'
  ),(
    116,
    'KNA',
    'Saint Kitts and Nevis',
    'North America',
    'Caribbean',
    261.00,
    1983,
    38000,
    70.7,
    299.00,
    NULL,
    'Saint Kitts and Nevis',
    'Constitutional Monarchy',
    'Elisabeth II',
    3064,
    'KN'
  ),(
    117,
    'KOR',
    'South Korea',
    'Asia',
    'Eastern Asia',
    99434.00,
    1948,
    46844000,
    74.4,
    320749.00,
    442544.00,
    'Taehan MinÂ’guk (Namhan)',
    'Republic',
    'Kim Dae-jung',
    2331,
    'KR'
  ),(
    118,
    'KWT',
    'Kuwait',
    'Asia',
    'Middle East',
    17818.00,
    1961,
    1972000,
    76.1,
    27037.00,
    30373.00,
    'Al-Kuwayt',
    'Constitutional Monarchy (Emirate)',
    'Jabir al-Ahmad al-Jabir al-Sabah',
    2429,
    'KW'
  ),(
    119,
    'LAO',
    'Laos',
    'Asia',
    'Southeast Asia',
    236800.00,
    1953,
    5433000,
    53.1,
    1292.00,
    1746.00,
    'Lao',
    'Republic',
    'Khamtay Siphandone',
    2432,
    'LA'
  ),(
    120,
    'LBN',
    'Lebanon',
    'Asia',
    'Middle East',
    10400.00,
    1941,
    3282000,
    71.3,
    17121.00,
    15129.00,
    'Lubnan',
    'Republic',
    'Ã‰mile Lahoud',
    2438,
    'LB'
  ),(
    121,
    'LBR',
    'Liberia',
    'Africa',
    'Western Africa',
    111369.00,
    1847,
    3154000,
    51.0,
    2012.00,
    NULL,
    'Liberia',
    'Republic',
    'Charles Taylor',
    2440,
    'LR'
  ),(
    122,
    'LBY',
    'Libyan Arab Jamahiriya',
    'Africa',
    'Northern Africa',
    1759540.00,
    1951,
    5605000,
    75.5,
    44806.00,
    40562.00,
    'Libiya',
    'Socialistic State',
    'Muammar al-Qadhafi',
    2441,
    'LY'
  ),(
    123,
    'LCA',
    'Saint Lucia',
    'North America',
    'Caribbean',
    622.00,
    1979,
    154000,
    72.3,
    571.00,
    NULL,
    'Saint Lucia',
    'Constitutional Monarchy',
    'Elisabeth II',
    3065,
    'LC'
  ),(
    124,
    'LIE',
    'Liechtenstein',
    'Europe',
    'Western Europe',
    160.00,
    1806,
    32300,
    78.8,
    1119.00,
    1084.00,
    'Liechtenstein',
    'Constitutional Monarchy',
    'Hans-Adam II',
    2446,
    'LI'
  ),(
    125,
    'LKA',
    'Sri Lanka',
    'Asia',
    'Southern and Central Asia',
    65610.00,
    1948,
    18827000,
    71.8,
    15706.00,
    15091.00,
    'Sri Lanka/Ilankai',
    'Republic',
    'Chandrika Kumaratunga',
    3217,
    'LK'
  ),(
    126,
    'LSO',
    'Lesotho',
    'Africa',
    'Southern Africa',
    30355.00,
    1966,
    2153000,
    50.8,
    1061.00,
    1161.00,
    'Lesotho',
    'Constitutional Monarchy',
    'Letsie III',
    2437,
    'LS'
  ),(
    127,
    'LTU',
    'Lithuania',
    'Europe',
    'Baltic Countries',
    65301.00,
    1991,
    3698500,
    69.1,
    10692.00,
    9585.00,
    'Lietuva',
    'Republic',
    'Valdas Adamkus',
    2447,
    'LT'
  ),(
    128,
    'LUX',
    'Luxembourg',
    'Europe',
    'Western Europe',
    2586.00,
    1867,
    435700,
    77.1,
    16321.00,
    15519.00,
    'Luxembourg/LÃ«tzebuerg',
    'Constitutional Monarchy',
    'Henri',
    2452,
    'LU'
  ),(
    129,
    'LVA',
    'Latvia',
    'Europe',
    'Baltic Countries',
    64589.00,
    1991,
    2424200,
    68.4,
    6398.00,
    5639.00,
    'Latvija',
    'Republic',
    'Vaira Vike-Freiberga',
    2434,
    'LV'
  ),(
    130,
    'MAC',
    'Macao',
    'Asia',
    'Eastern Asia',
    18.00,
    NULL,
    473000,
    81.6,
    5749.00,
    5940.00,
    'Macau/Aomen',
    'Special Administrative Region of China',
    'Jiang Zemin',
    2454,
    'MO'
  ),(
    131,
    'MAR',
    'Morocco',
    'Africa',
    'Northern Africa',
    446550.00,
    1956,
    28351000,
    69.1,
    36124.00,
    33514.00,
    'Al-Maghrib',
    'Constitutional Monarchy',
    'Mohammed VI',
    2486,
    'MA'
  ),(
    132,
    'MCO',
    'Monaco',
    'Europe',
    'Western Europe',
    1.50,
    1861,
    34000,
    78.8,
    776.00,
    NULL,
    'Monaco',
    'Constitutional Monarchy',
    'Rainier III',
    2695,
    'MC'
  ),(
    133,
    'MDA',
    'Moldova',
    'Europe',
    'Eastern Europe',
    33851.00,
    1991,
    4380000,
    64.5,
    1579.00,
    1872.00,
    'Moldova',
    'Republic',
    'Vladimir Voronin',
    2690,
    'MD'
  ),(
    134,
    'MDG',
    'Madagascar',
    'Africa',
    'Eastern Africa',
    587041.00,
    1960,
    15942000,
    55.0,
    3750.00,
    3545.00,
    'Madagasikara/Madagascar',
    'Federal Republic',
    'Didier Ratsiraka',
    2455,
    'MG'
  ),(
    135,
    'MDV',
    'Maldives',
    'Asia',
    'Southern and Central Asia',
    298.00,
    1965,
    286000,
    62.2,
    199.00,
    NULL,
    'Dhivehi Raajje/Maldives',
    'Republic',
    'Maumoon Abdul Gayoom',
    2463,
    'MV'
  ),(
    136,
    'MEX',
    'Mexico',
    'North America',
    'Central America',
    1958201.00,
    1810,
    98881000,
    71.5,
    414972.00,
    401461.00,
    'MÃ©xico',
    'Federal Republic',
    'Vicente Fox Quesada',
    2515,
    'MX'
  ),(
    137,
    'MHL',
    'Marshall Islands',
    'Oceania',
    'Micronesia',
    181.00,
    1990,
    64000,
    65.5,
    97.00,
    NULL,
    'Marshall Islands/Majol',
    'Republic',
    'Kessai Note',
    2507,
    'MH'
  ),(
    138,
    'MKD',
    'Macedonia',
    'Europe',
    'Southern Europe',
    25713.00,
    1991,
    2024000,
    73.8,
    1694.00,
    1915.00,
    'Makedonija',
    'Republic',
    'Boris Trajkovski',
    2460,
    'MK'
  ),(
    139,
    'MLI',
    'Mali',
    'Africa',
    'Western Africa',
    1240192.00,
    1960,
    11234000,
    46.7,
    2642.00,
    2453.00,
    'Mali',
    'Republic',
    'Alpha Oumar KonarÃ©',
    2482,
    'ML'
  ),(
    140,
    'MLT',
    'Malta',
    'Europe',
    'Southern Europe',
    316.00,
    1964,
    380200,
    77.9,
    3512.00,
    3338.00,
    'Malta',
    'Republic',
    'Guido de Marco',
    2484,
    'MT'
  ),(
    141,
    'MMR',
    'Myanmar',
    'Asia',
    'Southeast Asia',
    676578.00,
    1948,
    45611000,
    54.9,
    180375.00,
    171028.00,
    'Myanma Pye',
    'Republic',
    'kenraali Than Shwe',
    2710,
    'MM'
  ),(
    142,
    'MNG',
    'Mongolia',
    'Asia',
    'Eastern Asia',
    1566500.00,
    1921,
    2662000,
    67.3,
    1043.00,
    933.00,
    'Mongol Uls',
    'Republic',
    'Natsagiin Bagabandi',
    2696,
    'MN'
  ),(
    143,
    'MNP',
    'Northern Mariana Islands',
    'Oceania',
    'Micronesia',
    464.00,
    NULL,
    78000,
    75.5,
    0.00,
    NULL,
    'Northern Mariana Islands',
    'Commonwealth of the US',
    'George W. Bush',
    2913,
    'MP'
  ),(
    144,
    'MOZ',
    'Mozambique',
    'Africa',
    'Eastern Africa',
    801590.00,
    1975,
    19680000,
    37.5,
    2891.00,
    2711.00,
    'MoÃ§ambique',
    'Republic',
    'JoaquÃ­m A. Chissano',
    2698,
    'MZ'
  ),(
    145,
    'MRT',
    'Mauritania',
    'Africa',
    'Western Africa',
    1025520.00,
    1960,
    2670000,
    50.8,
    998.00,
    1081.00,
    'Muritaniya/Mauritanie',
    'Republic',
    'Maaouiya Ould SidÂ´Ahmad Taya',
    2509,
    'MR'
  ),(
    146,
    'MSR',
    'Montserrat',
    'North America',
    'Caribbean',
    102.00,
    NULL,
    11000,
    78.0,
    109.00,
    NULL,
    'Montserrat',
    'Dependent Territory of the UK',
    'Elisabeth II',
    2697,
    'MS'
  ),(
    147,
    'MTQ',
    'Martinique',
    'North America',
    'Caribbean',
    1102.00,
    NULL,
    395000,
    78.3,
    2731.00,
    2559.00,
    'Martinique',
    'Overseas Department of France',
    'Jacques Chirac',
    2508,
    'MQ'
  ),(
    148,
    'MUS',
    'Mauritius',
    'Africa',
    'Eastern Africa',
    2040.00,
    1968,
    1158000,
    71.0,
    4251.00,
    4186.00,
    'Mauritius',
    'Republic',
    'Cassam Uteem',
    2511,
    'MU'
  ),(
    149,
    'MWI',
    'Malawi',
    'Africa',
    'Eastern Africa',
    118484.00,
    1964,
    10925000,
    37.6,
    1687.00,
    2527.00,
    'Malawi',
    'Republic',
    'Bakili Muluzi',
    2462,
    'MW'
  ),(
    150,
    'MYS',
    'Malaysia',
    'Asia',
    'Southeast Asia',
    329758.00,
    1957,
    22244000,
    70.8,
    69213.00,
    97884.00,
    'Malaysia',
    'Constitutional Monarchy, Federation',
    'Salahuddin Abdul Aziz Shah Alhaj',
    2464,
    'MY'
  ),(
    151,
    'MYT',
    'Mayotte',
    'Africa',
    'Eastern Africa',
    373.00,
    NULL,
    149000,
    59.5,
    0.00,
    NULL,
    'Mayotte',
    'Territorial Collectivity of France',
    'Jacques Chirac',
    2514,
    'YT'
  ),(
    152,
    'NAM',
    'Namibia',
    'Africa',
    'Southern Africa',
    824292.00,
    1990,
    1726000,
    42.5,
    3101.00,
    3384.00,
    'Namibia',
    'Republic',
    'Sam Nujoma',
    2726,
    'NA'
  ),(
    153,
    'NCL',
    'New Caledonia',
    'Oceania',
    'Melanesia',
    18575.00,
    NULL,
    214000,
    72.8,
    3563.00,
    NULL,
    'Nouvelle-CalÃ©donie',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    3493,
    'NC'
  ),(
    154,
    'NER',
    'Niger',
    'Africa',
    'Western Africa',
    1267000.00,
    1960,
    10730000,
    41.3,
    1706.00,
    1580.00,
    'Niger',
    'Republic',
    'Mamadou Tandja',
    2738,
    'NE'
  ),(
    155,
    'NFK',
    'Norfolk Island',
    'Oceania',
    'Australia and New Zealand',
    36.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Norfolk Island',
    'Territory of Australia',
    'Elisabeth II',
    2806,
    'NF'
  ),(
    156,
    'NGA',
    'Nigeria',
    'Africa',
    'Western Africa',
    923768.00,
    1960,
    111506000,
    51.6,
    65707.00,
    58623.00,
    'Nigeria',
    'Federal Republic',
    'Olusegun Obasanjo',
    2754,
    'NG'
  ),(
    157,
    'NIC',
    'Nicaragua',
    'North America',
    'Central America',
    130000.00,
    1838,
    5074000,
    68.7,
    1988.00,
    2023.00,
    'Nicaragua',
    'Republic',
    'Arnoldo AlemÃ¡n Lacayo',
    2734,
    'NI'
  ),(
    158,
    'NIU',
    'Niue',
    'Oceania',
    'Polynesia',
    260.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Niue',
    'Nonmetropolitan Territory of New Zealand',
    'Elisabeth II',
    2805,
    'NU'
  ),(
    159,
    'NLD',
    'Netherlands',
    'Europe',
    'Western Europe',
    41526.00,
    1581,
    15864000,
    78.3,
    371362.00,
    360478.00,
    'Nederland',
    'Constitutional Monarchy',
    'Beatrix',
    5,
    'NL'
  ),(
    160,
    'NOR',
    'Norway',
    'Europe',
    'Nordic Countries',
    323877.00,
    1905,
    4478500,
    78.7,
    145895.00,
    153370.00,
    'Norge',
    'Constitutional Monarchy',
    'Harald V',
    2807,
    'NO'
  ),(
    161,
    'NPL',
    'Nepal',
    'Asia',
    'Southern and Central Asia',
    147181.00,
    1769,
    23930000,
    57.8,
    4768.00,
    4837.00,
    'Nepal',
    'Constitutional Monarchy',
    'Gyanendra Bir Bikram',
    2729,
    'NP'
  ),(
    162,
    'NRU',
    'Nauru',
    'Oceania',
    'Micronesia',
    21.00,
    1968,
    12000,
    60.8,
    197.00,
    NULL,
    'Naoero/Nauru',
    'Republic',
    'Bernard Dowiyogo',
    2728,
    'NR'
  ),(
    163,
    'NZL',
    'New Zealand',
    'Oceania',
    'Australia and New Zealand',
    270534.00,
    1907,
    3862000,
    77.8,
    54669.00,
    64960.00,
    'New Zealand/Aotearoa',
    'Constitutional Monarchy',
    'Elisabeth II',
    3499,
    'NZ'
  ),(
    164,
    'OMN',
    'Oman',
    'Asia',
    'Middle East',
    309500.00,
    1951,
    2542000,
    71.8,
    16904.00,
    16153.00,
    'Â´Uman',
    'Monarchy (Sultanate)',
    'Qabus ibn SaÂ´id',
    2821,
    'OM'
  ),(
    165,
    'PAK',
    'Pakistan',
    'Asia',
    'Southern and Central Asia',
    796095.00,
    1947,
    156483000,
    61.1,
    61289.00,
    58549.00,
    'Pakistan',
    'Republic',
    'Mohammad Rafiq Tarar',
    2831,
    'PK'
  ),(
    166,
    'PAN',
    'Panama',
    'North America',
    'Central America',
    75517.00,
    1903,
    2856000,
    75.5,
    9131.00,
    8700.00,
    'PanamÃ¡',
    'Republic',
    'Mireya Elisa Moscoso RodrÃ­guez',
    2882,
    'PA'
  ),(
    167,
    'PCN',
    'Pitcairn',
    'Oceania',
    'Polynesia',
    49.00,
    NULL,
    50,
    NULL,
    0.00,
    NULL,
    'Pitcairn',
    'Dependent Territory of the UK',
    'Elisabeth II',
    2912,
    'PN'
  ),(
    168,
    'PER',
    'Peru',
    'South America',
    'South America',
    1285216.00,
    1821,
    25662000,
    70.0,
    64140.00,
    65186.00,
    'PerÃº/Piruw',
    'Republic',
    'Valentin Paniagua Corazao',
    2890,
    'PE'
  ),(
    169,
    'PHL',
    'Philippines',
    'Asia',
    'Southeast Asia',
    300000.00,
    1946,
    75967000,
    67.5,
    65107.00,
    82239.00,
    'Pilipinas',
    'Republic',
    'Gloria Macapagal-Arroyo',
    766,
    'PH'
  ),(
    170,
    'PLW',
    'Palau',
    'Oceania',
    'Micronesia',
    459.00,
    1994,
    19000,
    68.6,
    105.00,
    NULL,
    'Belau/Palau',
    'Republic',
    'Kuniwo Nakamura',
    2881,
    'PW'
  ),(
    171,
    'PNG',
    'Papua New Guinea',
    'Oceania',
    'Melanesia',
    462840.00,
    1975,
    4807000,
    63.1,
    4988.00,
    6328.00,
    'Papua New Guinea/Papua Niugini',
    'Constitutional Monarchy',
    'Elisabeth II',
    2884,
    'PG'
  ),(
    172,
    'POL',
    'Poland',
    'Europe',
    'Eastern Europe',
    323250.00,
    1918,
    38653600,
    73.2,
    151697.00,
    135636.00,
    'Polska',
    'Republic',
    'Aleksander Kwasniewski',
    2928,
    'PL'
  ),(
    173,
    'PRI',
    'Puerto Rico',
    'North America',
    'Caribbean',
    8875.00,
    NULL,
    3869000,
    75.6,
    34100.00,
    32100.00,
    'Puerto Rico',
    'Commonwealth of the US',
    'George W. Bush',
    2919,
    'PR'
  ),(
    174,
    'PRK',
    'North Korea',
    'Asia',
    'Eastern Asia',
    120538.00,
    1948,
    24039000,
    70.7,
    5332.00,
    NULL,
    'Choson Minjujuui InÂ´min Konghwaguk (Bukhan)',
    'Socialistic Republic',
    'Kim Jong-il',
    2318,
    'KP'
  ),(
    175,
    'PRT',
    'Portugal',
    'Europe',
    'Southern Europe',
    91982.00,
    1143,
    9997600,
    75.8,
    105954.00,
    102133.00,
    'Portugal',
    'Republic',
    'Jorge SampÃ£io',
    2914,
    'PT'
  ),(
    176,
    'PRY',
    'Paraguay',
    'South America',
    'South America',
    406752.00,
    1811,
    5496000,
    73.7,
    8444.00,
    9555.00,
    'Paraguay',
    'Republic',
    'Luis Ãngel GonzÃ¡lez Macchi',
    2885,
    'PY'
  ),(
    177,
    'PSE',
    'Palestine',
    'Asia',
    'Middle East',
    6257.00,
    NULL,
    3101000,
    71.4,
    4173.00,
    NULL,
    'Filastin',
    'Autonomous Area',
    'Yasser (Yasir) Arafat',
    4074,
    'PS'
  ),(
    178,
    'PYF',
    'French Polynesia',
    'Oceania',
    'Polynesia',
    4000.00,
    NULL,
    235000,
    74.8,
    818.00,
    781.00,
    'PolynÃ©sie franÃ§aise',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    3016,
    'PF'
  ),(
    179,
    'QAT',
    'Qatar',
    'Asia',
    'Middle East',
    11000.00,
    1971,
    599000,
    72.4,
    9472.00,
    8920.00,
    'Qatar',
    'Monarchy',
    'Hamad ibn Khalifa al-Thani',
    2973,
    'QA'
  ),(
    180,
    'REU',
    'RÃ©union',
    'Africa',
    'Eastern Africa',
    2510.00,
    NULL,
    699000,
    72.7,
    8287.00,
    7988.00,
    'RÃ©union',
    'Overseas Department of France',
    'Jacques Chirac',
    3017,
    'RE'
  ),(
    181,
    'ROM',
    'Romania',
    'Europe',
    'Eastern Europe',
    238391.00,
    1878,
    22455500,
    69.9,
    38158.00,
    34843.00,
    'RomÃ¢nia',
    'Republic',
    'Ion Iliescu',
    3018,
    'RO'
  ),(
    182,
    'RUS',
    'Russian Federation',
    'Europe',
    'Eastern Europe',
    17075400.00,
    1991,
    146934000,
    67.2,
    276608.00,
    442989.00,
    'Rossija',
    'Federal Republic',
    'Vladimir Putin',
    3580,
    'RU'
  ),(
    183,
    'RWA',
    'Rwanda',
    'Africa',
    'Eastern Africa',
    26338.00,
    1962,
    7733000,
    39.3,
    2036.00,
    1863.00,
    'Rwanda/Urwanda',
    'Republic',
    'Paul Kagame',
    3047,
    'RW'
  ),(
    184,
    'SAU',
    'Saudi Arabia',
    'Asia',
    'Middle East',
    2149690.00,
    1932,
    21607000,
    67.8,
    137635.00,
    146171.00,
    'Al-Â´Arabiya as-SaÂ´udiya',
    'Monarchy',
    'Fahd ibn Abdul-Aziz al-SaÂ´ud',
    3173,
    'SA'
  ),(
    185,
    'SDN',
    'Sudan',
    'Africa',
    'Northern Africa',
    2505813.00,
    1956,
    29490000,
    56.6,
    10162.00,
    NULL,
    'As-Sudan',
    'Islamic Republic',
    'Omar Hassan Ahmad al-Bashir',
    3225,
    'SD'
  ),(
    186,
    'SEN',
    'Senegal',
    'Africa',
    'Western Africa',
    196722.00,
    1960,
    9481000,
    62.2,
    4787.00,
    4542.00,
    'SÃ©nÃ©gal/Sounougal',
    'Republic',
    'Abdoulaye Wade',
    3198,
    'SN'
  ),(
    187,
    'SGP',
    'Singapore',
    'Asia',
    'Southeast Asia',
    618.00,
    1965,
    3567000,
    80.1,
    86503.00,
    96318.00,
    'Singapore/Singapura/Xinjiapo/Singapur',
    'Republic',
    'Sellapan Rama Nathan',
    3208,
    'SG'
  ),(
    188,
    'SGS',
    'South Georgia and the South Sandwich Islands',
    'Antarctica',
    'Antarctica',
    3903.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'South Georgia and the South Sandwich Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    NULL,
    'GS'
  ),(
    189,
    'SHN',
    'Saint Helena',
    'Africa',
    'Western Africa',
    314.00,
    NULL,
    6000,
    76.8,
    0.00,
    NULL,
    'Saint Helena',
    'Dependent Territory of the UK',
    'Elisabeth II',
    3063,
    'SH'
  ),(
    190,
    'SJM',
    'Svalbard and Jan Mayen',
    'Europe',
    'Nordic Countries',
    62422.00,
    NULL,
    3200,
    NULL,
    0.00,
    NULL,
    'Svalbard og Jan Mayen',
    'Dependent Territory of Norway',
    'Harald V',
    938,
    'SJ'
  ),(
    191,
    'SLB',
    'Solomon Islands',
    'Oceania',
    'Melanesia',
    28896.00,
    1978,
    444000,
    71.3,
    182.00,
    220.00,
    'Solomon Islands',
    'Constitutional Monarchy',
    'Elisabeth II',
    3161,
    'SB'
  ),(
    192,
    'SLE',
    'Sierra Leone',
    'Africa',
    'Western Africa',
    71740.00,
    1961,
    4854000,
    45.3,
    746.00,
    858.00,
    'Sierra Leone',
    'Republic',
    'Ahmed Tejan Kabbah',
    3207,
    'SL'
  ),(
    193,
    'SLV',
    'El Salvador',
    'North America',
    'Central America',
    21041.00,
    1841,
    6276000,
    69.7,
    11863.00,
    11203.00,
    'El Salvador',
    'Republic',
    'Francisco Guillermo Flores PÃ©rez',
    645,
    'SV'
  ),(
    194,
    'SMR',
    'San Marino',
    'Europe',
    'Southern Europe',
    61.00,
    885,
    27000,
    81.1,
    510.00,
    NULL,
    'San Marino',
    'Republic',
    NULL,
    3171,
    'SM'
  ),(
    195,
    'SOM',
    'Somalia',
    'Africa',
    'Eastern Africa',
    637657.00,
    1960,
    10097000,
    46.2,
    935.00,
    NULL,
    'Soomaaliya',
    'Republic',
    'Abdiqassim Salad Hassan',
    3214,
    'SO'
  ),(
    196,
    'SPM',
    'Saint Pierre and Miquelon',
    'North America',
    'North America',
    242.00,
    NULL,
    7000,
    77.6,
    0.00,
    NULL,
    'Saint-Pierre-et-Miquelon',
    'Territorial Collectivity of France',
    'Jacques Chirac',
    3067,
    'PM'
  ),(
    197,
    'STP',
    'Sao Tome and Principe',
    'Africa',
    'Central Africa',
    964.00,
    1975,
    147000,
    65.3,
    6.00,
    NULL,
    'SÃ£o TomÃ© e PrÃ­ncipe',
    'Republic',
    'Miguel Trovoada',
    3172,
    'ST'
  ),(
    198,
    'SUR',
    'Suriname',
    'South America',
    'South America',
    163265.00,
    1975,
    417000,
    71.4,
    870.00,
    706.00,
    'Suriname',
    'Republic',
    'Ronald Venetiaan',
    3243,
    'SR'
  ),(
    199,
    'SVK',
    'Slovakia',
    'Europe',
    'Eastern Europe',
    49012.00,
    1993,
    5398700,
    73.7,
    20594.00,
    19452.00,
    'Slovensko',
    'Republic',
    'Rudolf Schuster',
    3209,
    'SK'
  ),(
    200,
    'SVN',
    'Slovenia',
    'Europe',
    'Southern Europe',
    20256.00,
    1991,
    1987800,
    74.9,
    19756.00,
    18202.00,
    'Slovenija',
    'Republic',
    'Milan Kucan',
    3212,
    'SI'
  ),(
    201,
    'SWE',
    'Sweden',
    'Europe',
    'Nordic Countries',
    449964.00,
    836,
    8861400,
    79.6,
    226492.00,
    227757.00,
    'Sverige',
    'Constitutional Monarchy',
    'Carl XVI Gustaf',
    3048,
    'SE'
  ),(
    202,
    'SWZ',
    'Swaziland',
    'Africa',
    'Southern Africa',
    17364.00,
    1968,
    1008000,
    40.4,
    1206.00,
    1312.00,
    'kaNgwane',
    'Monarchy',
    'Mswati III',
    3244,
    'SZ'
  ),(
    203,
    'SYC',
    'Seychelles',
    'Africa',
    'Eastern Africa',
    455.00,
    1976,
    77000,
    70.4,
    536.00,
    539.00,
    'Sesel/Seychelles',
    'Republic',
    'France-Albert RenÃ©',
    3206,
    'SC'
  ),(
    204,
    'SYR',
    'Syria',
    'Asia',
    'Middle East',
    185180.00,
    1941,
    16125000,
    68.5,
    65984.00,
    64926.00,
    'Suriya',
    'Republic',
    'Bashar al-Assad',
    3250,
    'SY'
  ),(
    205,
    'TCA',
    'Turks and Caicos Islands',
    'North America',
    'Caribbean',
    430.00,
    NULL,
    17000,
    73.3,
    96.00,
    NULL,
    'The Turks and Caicos Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    3423,
    'TC'
  ),(
    206,
    'TCD',
    'Chad',
    'Africa',
    'Central Africa',
    1284000.00,
    1960,
    7651000,
    50.5,
    1208.00,
    1102.00,
    'Tchad/Tshad',
    'Republic',
    'Idriss DÃ©by',
    3337,
    'TD'
  ),(
    207,
    'TGO',
    'Togo',
    'Africa',
    'Western Africa',
    56785.00,
    1960,
    4629000,
    54.7,
    1449.00,
    1400.00,
    'Togo',
    'Republic',
    'GnassingbÃ© EyadÃ©ma',
    3332,
    'TG'
  ),(
    208,
    'THA',
    'Thailand',
    'Asia',
    'Southeast Asia',
    513115.00,
    1350,
    61399000,
    68.6,
    116416.00,
    153907.00,
    'Prathet Thai',
    'Constitutional Monarchy',
    'Bhumibol Adulyadej',
    3320,
    'TH'
  ),(
    209,
    'TJK',
    'Tajikistan',
    'Asia',
    'Southern and Central Asia',
    143100.00,
    1991,
    6188000,
    64.1,
    1990.00,
    1056.00,
    'ToÃ§ikiston',
    'Republic',
    'Emomali Rahmonov',
    3261,
    'TJ'
  ),(
    210,
    'TKL',
    'Tokelau',
    'Oceania',
    'Polynesia',
    12.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Tokelau',
    'Nonmetropolitan Territory of New Zealand',
    'Elisabeth II',
    3333,
    'TK'
  ),(
    211,
    'TKM',
    'Turkmenistan',
    'Asia',
    'Southern and Central Asia',
    488100.00,
    1991,
    4459000,
    60.9,
    4397.00,
    2000.00,
    'TÃ¼rkmenostan',
    'Republic',
    'Saparmurad Nijazov',
    3419,
    'TM'
  ),(
    212,
    'TMP',
    'East Timor',
    'Asia',
    'Southeast Asia',
    14874.00,
    NULL,
    885000,
    46.0,
    0.00,
    NULL,
    'Timor Timur',
    'Administrated by the UN',
    'JosÃ© Alexandre GusmÃ£o',
    1522,
    'TP'
  ),(
    213,
    'TON',
    'Tonga',
    'Oceania',
    'Polynesia',
    650.00,
    1970,
    99000,
    67.9,
    146.00,
    170.00,
    'Tonga',
    'Monarchy',
    'Taufa\'ahau Tupou IV',
    3334,
    'TO'
  ),(
    214,
    'TTO',
    'Trinidad and Tobago',
    'North America',
    'Caribbean',
    5130.00,
    1962,
    1295000,
    68.0,
    6232.00,
    5867.00,
    'Trinidad and Tobago',
    'Republic',
    'Arthur N. R. Robinson',
    3336,
    'TT'
  ),(
    215,
    'TUN',
    'Tunisia',
    'Africa',
    'Northern Africa',
    163610.00,
    1956,
    9586000,
    73.7,
    20026.00,
    18898.00,
    'Tunis/Tunisie',
    'Republic',
    'Zine al-Abidine Ben Ali',
    3349,
    'TN'
  ),(
    216,
    'TUR',
    'Turkey',
    'Asia',
    'Middle East',
    774815.00,
    1923,
    66591000,
    71.0,
    210721.00,
    189122.00,
    'TÃ¼rkiye',
    'Republic',
    'Ahmet Necdet Sezer',
    3358,
    'TR'
  ),(
    217,
    'TUV',
    'Tuvalu',
    'Oceania',
    'Polynesia',
    26.00,
    1978,
    12000,
    66.3,
    6.00,
    NULL,
    'Tuvalu',
    'Constitutional Monarchy',
    'Elisabeth II',
    3424,
    'TV'
  ),(
    218,
    'TWN',
    'Taiwan',
    'Asia',
    'Eastern Asia',
    36188.00,
    1945,
    22256000,
    76.4,
    256254.00,
    263451.00,
    'TÂ’ai-wan',
    'Republic',
    'Chen Shui-bian',
    3263,
    'TW'
  ),(
    219,
    'TZA',
    'Tanzania',
    'Africa',
    'Eastern Africa',
    883749.00,
    1961,
    33517000,
    52.3,
    8005.00,
    7388.00,
    'Tanzania',
    'Republic',
    'Benjamin William Mkapa',
    3306,
    'TZ'
  ),(
    220,
    'UGA',
    'Uganda',
    'Africa',
    'Eastern Africa',
    241038.00,
    1962,
    21778000,
    42.9,
    6313.00,
    6887.00,
    'Uganda',
    'Republic',
    'Yoweri Museveni',
    3425,
    'UG'
  ),(
    221,
    'UKR',
    'Ukraine',
    'Europe',
    'Eastern Europe',
    603700.00,
    1991,
    50456000,
    66.0,
    42168.00,
    49677.00,
    'Ukrajina',
    'Republic',
    'Leonid KutÂšma',
    3426,
    'UA'
  ),(
    222,
    'UMI',
    'United States Minor Outlying Islands',
    'Oceania',
    'Micronesia/Caribbean',
    16.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'United States Minor Outlying Islands',
    'Dependent Territory of the US',
    'George W. Bush',
    NULL,
    'UM'
  ),(
    223,
    'URY',
    'Uruguay',
    'South America',
    'South America',
    175016.00,
    1828,
    3337000,
    75.2,
    20831.00,
    19967.00,
    'Uruguay',
    'Republic',
    'Jorge Batlle IbÃ¡Ã±ez',
    3492,
    'UY'
  ),(
    224,
    'USA',
    'United States',
    'North America',
    'North America',
    9363520.00,
    1776,
    278357000,
    77.1,
    8510700.00,
    8110900.00,
    'United States',
    'Federal Republic',
    'George W. Bush',
    3813,
    'US'
  ),(
    225,
    'UZB',
    'Uzbekistan',
    'Asia',
    'Southern and Central Asia',
    447400.00,
    1991,
    24318000,
    63.7,
    14194.00,
    21300.00,
    'Uzbekiston',
    'Republic',
    'Islam Karimov',
    3503,
    'UZ'
  ),(
    226,
    'VAT',
    'Holy See (Vatican City State)',
    'Europe',
    'Southern Europe',
    0.40,
    1929,
    1000,
    NULL,
    9.00,
    NULL,
    'Santa Sede/CittÃ  del Vaticano',
    'Independent Church State',
    'Johannes Paavali II',
    3538,
    'VA'
  ),(
    227,
    'VCT',
    'Saint Vincent and the Grenadines',
    'North America',
    'Caribbean',
    388.00,
    1979,
    114000,
    72.3,
    285.00,
    NULL,
    'Saint Vincent and the Grenadines',
    'Constitutional Monarchy',
    'Elisabeth II',
    3066,
    'VC'
  ),(
    228,
    'VEN',
    'Venezuela',
    'South America',
    'South America',
    912050.00,
    1811,
    24170000,
    73.1,
    95023.00,
    88434.00,
    'Venezuela',
    'Federal Republic',
    'Hugo ChÃ¡vez FrÃ­as',
    3539,
    'VE'
  ),(
    229,
    'VGB',
    'Virgin Islands, British',
    'North America',
    'Caribbean',
    151.00,
    NULL,
    21000,
    75.4,
    612.00,
    573.00,
    'British Virgin Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    537,
    'VG'
  ),(
    230,
    'VIR',
    'Virgin Islands, U.S.',
    'North America',
    'Caribbean',
    347.00,
    NULL,
    93000,
    78.1,
    0.00,
    NULL,
    'Virgin Islands of the United States',
    'US Territory',
    'George W. Bush',
    4067,
    'VI'
  ),(
    231,
    'VNM',
    'Vietnam',
    'Asia',
    'Southeast Asia',
    331689.00,
    1945,
    79832000,
    69.3,
    21929.00,
    22834.00,
    'ViÃªt Nam',
    'Socialistic Republic',
    'TrÃ¢n Duc Luong',
    3770,
    'VN'
  ),(
    232,
    'VUT',
    'Vanuatu',
    'Oceania',
    'Melanesia',
    12189.00,
    1980,
    190000,
    60.6,
    261.00,
    246.00,
    'Vanuatu',
    'Republic',
    'John Bani',
    3537,
    'VU'
  ),(
    233,
    'WLF',
    'Wallis and Futuna',
    'Oceania',
    'Polynesia',
    200.00,
    NULL,
    15000,
    NULL,
    0.00,
    NULL,
    'Wallis-et-Futuna',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    3536,
    'WF'
  ),(
    234,
    'WSM',
    'Samoa',
    'Oceania',
    'Polynesia',
    2831.00,
    1962,
    180000,
    69.2,
    141.00,
    157.00,
    'Samoa',
    'Parlementary Monarchy',
    'Malietoa Tanumafili II',
    3169,
    'WS'
  ),(
    235,
    'YEM',
    'Yemen',
    'Asia',
    'Middle East',
    527968.00,
    1918,
    18112000,
    59.8,
    6041.00,
    5729.00,
    'Al-Yaman',
    'Republic',
    'Ali Abdallah Salih',
    1780,
    'YE'
  ),(
    236,
    'YUG',
    'Yugoslavia',
    'Europe',
    'Southern Europe',
    102173.00,
    1918,
    10640000,
    72.4,
    17000.00,
    NULL,
    'Jugoslavija',
    'Federal Republic',
    'Vojislav KoÂštunica',
    1792,
    'YU'
  ),(
    237,
    'ZAF',
    'South Africa',
    'Africa',
    'Southern Africa',
    1221037.00,
    1910,
    40377000,
    51.1,
    116729.00,
    129092.00,
    'South Africa',
    'Republic',
    'Thabo Mbeki',
    716,
    'ZA'
  ),(
    238,
    'ZMB',
    'Zambia',
    'Africa',
    'Eastern Africa',
    752618.00,
    1964,
    9169000,
    37.2,
    3377.00,
    3922.00,
    'Zambia',
    'Republic',
    'Frederick Chiluba',
    3162,
    'ZM'
  ),(
    239,
    'ZWE',
    'Zimbabwe',
    'Africa',
    'Eastern Africa',
    390757.00,
    1980,
    11669000,
    37.8,
    5951.00,
    8670.00,
    'Zimbabwe',
    'Republic',
    'Robert G. Mugabe',
    4068,
    'ZW'
  );
  /*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
- - - - Table structure for table `languages` - - DROP TABLE IF EXISTS `languages`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `country_code` char(3) NOT NULL DEFAULT '',
    `language` char(30) NOT NULL DEFAULT '',
    `is_official` enum('T', 'F') NOT NULL DEFAULT 'F',
    `percentage` float(4, 1) NOT NULL DEFAULT '0.0',
    `country_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_languages_countries_idx` (`country_id`),
    CONSTRAINT `fk_languages_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ENGINE = InnoDB AUTO_INCREMENT = 985 DEFAULT CHARSET = latin1;
  /*!40101 SET character_set_client = @saved_cs_client */;
- - - - Dumping data for table `languages` - - LOCK TABLES `languages` WRITE;
  /*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO
  `languages`
VALUES
  (1, 'ABW', 'Dutch', 'T', 5.3, 1),(2, 'ABW', 'English', 'F', 9.5, 1),(3, 'ABW', 'Papiamento', 'F', 76.7, 1),(4, 'ABW', 'Spanish', 'F', 7.4, 1),(5, 'AFG', 'Balochi', 'F', 0.9, 2),(6, 'AFG', 'Dari', 'T', 32.1, 2),(7, 'AFG', 'Pashto', 'T', 52.4, 2),(8, 'AFG', 'Turkmenian', 'F', 1.9, 2),(9, 'AFG', 'Uzbek', 'F', 8.8, 2),(10, 'AGO', 'Ambo', 'F', 2.4, 3),(11, 'AGO', 'Chokwe', 'F', 4.2, 3),(12, 'AGO', 'Kongo', 'F', 13.2, 3),(13, 'AGO', 'Luchazi', 'F', 2.4, 3),(14, 'AGO', 'Luimbe-nganguela', 'F', 5.4, 3),(15, 'AGO', 'Luvale', 'F', 3.6, 3),(16, 'AGO', 'Mbundu', 'F', 21.6, 3),(17, 'AGO', 'Nyaneka-nkhumbi', 'F', 5.4, 3),(18, 'AGO', 'Ovimbundu', 'F', 37.2, 3),(19, 'AIA', 'English', 'T', 0.0, 4),(20, 'ALB', 'Albaniana', 'T', 97.9, 5),(21, 'ALB', 'Greek', 'F', 1.8, 5),(22, 'ALB', 'Macedonian', 'F', 0.1, 5),(23, 'AND', 'Catalan', 'T', 32.3, 6),(24, 'AND', 'French', 'F', 6.2, 6),(25, 'AND', 'Portuguese', 'F', 10.8, 6),(26, 'AND', 'Spanish', 'F', 44.6, 6),(27, 'ANT', 'Dutch', 'T', 0.0, 7),(28, 'ANT', 'English', 'F', 7.8, 7),(29, 'ANT', 'Papiamento', 'T', 86.2, 7),(30, 'ARE', 'Arabic', 'T', 42.0, 8),(31, 'ARE', 'Hindi', 'F', 0.0, 8),(32, 'ARG', 'Indian Languages', 'F', 0.3, 9),(33, 'ARG', 'Italian', 'F', 1.7, 9),(34, 'ARG', 'Spanish', 'T', 96.8, 9),(35, 'ARM', 'Armenian', 'T', 93.4, 10),(36, 'ARM', 'Azerbaijani', 'F', 2.6, 10),(37, 'ASM', 'English', 'T', 3.1, 11),(38, 'ASM', 'Samoan', 'T', 90.6, 11),(39, 'ASM', 'Tongan', 'F', 3.1, 11),(40, 'ATG', 'Creole English', 'F', 95.7, 14),(41, 'ATG', 'English', 'T', 0.0, 14),(42, 'AUS', 'Arabic', 'F', 1.0, 15),(43, 'AUS', 'Canton Chinese', 'F', 1.1, 15),(44, 'AUS', 'English', 'T', 81.2, 15),(45, 'AUS', 'German', 'F', 0.6, 15),(46, 'AUS', 'Greek', 'F', 1.6, 15),(47, 'AUS', 'Italian', 'F', 2.2, 15),(48, 'AUS', 'Serbo-Croatian', 'F', 0.6, 15),(49, 'AUS', 'Vietnamese', 'F', 0.8, 15),(50, 'AUT', 'Czech', 'F', 0.2, 16),(51, 'AUT', 'German', 'T', 92.0, 16),(52, 'AUT', 'Hungarian', 'F', 0.4, 16),(53, 'AUT', 'Polish', 'F', 0.2, 16),(54, 'AUT', 'Romanian', 'F', 0.2, 16),(55, 'AUT', 'Serbo-Croatian', 'F', 2.2, 16),(56, 'AUT', 'Slovene', 'F', 0.4, 16),(57, 'AUT', 'Turkish', 'F', 1.5, 16),(58, 'AZE', 'Armenian', 'F', 2.0, 17),(59, 'AZE', 'Azerbaijani', 'T', 89.0, 17),(60, 'AZE', 'Lezgian', 'F', 2.3, 17),(61, 'AZE', 'Russian', 'F', 3.0, 17),(62, 'BDI', 'French', 'T', 0.0, 18),(63, 'BDI', 'Kirundi', 'T', 98.1, 18),(64, 'BDI', 'Swahili', 'F', 0.0, 18),(65, 'BEL', 'Arabic', 'F', 1.6, 19),(66, 'BEL', 'Dutch', 'T', 59.2, 19),(67, 'BEL', 'French', 'T', 32.6, 19),(68, 'BEL', 'German', 'T', 1.0, 19),(69, 'BEL', 'Italian', 'F', 2.4, 19),(70, 'BEL', 'Turkish', 'F', 0.9, 19),(71, 'BEN', 'Adja', 'F', 11.1, 20),(72, 'BEN', 'Aizo', 'F', 8.7, 20),(73, 'BEN', 'Bariba', 'F', 8.7, 20),(74, 'BEN', 'Fon', 'F', 39.8, 20),(75, 'BEN', 'Ful', 'F', 5.6, 20),(76, 'BEN', 'Joruba', 'F', 12.2, 20),(77, 'BEN', 'Somba', 'F', 6.7, 20),(78, 'BFA', 'Busansi', 'F', 3.5, 21),(79, 'BFA', 'Dagara', 'F', 3.1, 21),(80, 'BFA', 'Dyula', 'F', 2.6, 21),(81, 'BFA', 'Ful', 'F', 9.7, 21),(82, 'BFA', 'Gurma', 'F', 5.7, 21),(83, 'BFA', 'Mossi', 'F', 50.2, 21),(84, 'BGD', 'Bengali', 'T', 97.7, 22),(85, 'BGD', 'Chakma', 'F', 0.4, 22),(86, 'BGD', 'Garo', 'F', 0.1, 22),(87, 'BGD', 'Khasi', 'F', 0.1, 22),(88, 'BGD', 'Marma', 'F', 0.2, 22),(89, 'BGD', 'Santhali', 'F', 0.1, 22),(90, 'BGD', 'Tripuri', 'F', 0.1, 22),(91, 'BGR', 'Bulgariana', 'T', 83.2, 23),(92, 'BGR', 'Macedonian', 'F', 2.6, 23),(93, 'BGR', 'Romani', 'F', 3.7, 23),(94, 'BGR', 'Turkish', 'F', 9.4, 23),(95, 'BHR', 'Arabic', 'T', 67.7, 24),(96, 'BHR', 'English', 'F', 0.0, 24),(97, 'BHS', 'Creole English', 'F', 89.7, 25),(98, 'BHS', 'Creole French', 'F', 10.3, 25),(99, 'BIH', 'Serbo-Croatian', 'T', 99.2, 26),(100, 'BLR', 'Belorussian', 'T', 65.6, 27),(101, 'BLR', 'Polish', 'F', 0.6, 27),(102, 'BLR', 'Russian', 'T', 32.0, 27),(103, 'BLR', 'Ukrainian', 'F', 1.3, 27),(104, 'BLZ', 'English', 'T', 50.8, 28),(105, 'BLZ', 'Garifuna', 'F', 6.8, 28),(106, 'BLZ', 'Maya Languages', 'F', 9.6, 28),(107, 'BLZ', 'Spanish', 'F', 31.6, 28),(108, 'BMU', 'English', 'T', 100.0, 29),(109, 'BOL', 'AimarÃ¡', 'T', 3.2, 30),(110, 'BOL', 'GuaranÃ­', 'F', 0.1, 30),(111, 'BOL', 'KetÂšua', 'T', 8.1, 30),(112, 'BOL', 'Spanish', 'T', 87.7, 30),(113, 'BRA', 'German', 'F', 0.5, 31),(114, 'BRA', 'Indian Languages', 'F', 0.2, 31),(115, 'BRA', 'Italian', 'F', 0.4, 31),(116, 'BRA', 'Japanese', 'F', 0.4, 31),(117, 'BRA', 'Portuguese', 'T', 97.5, 31),(118, 'BRB', 'Bajan', 'F', 95.1, 32),(119, 'BRB', 'English', 'T', 0.0, 32),(120, 'BRN', 'Chinese', 'F', 9.3, 33),(121, 'BRN', 'English', 'F', 3.1, 33),(122, 'BRN', 'Malay', 'T', 45.5, 33),(123, 'BRN', 'Malay-English', 'F', 28.8, 33),(124, 'BTN', 'Asami', 'F', 15.2, 34),(125, 'BTN', 'Dzongkha', 'T', 50.0, 34),(126, 'BTN', 'Nepali', 'F', 34.8, 34),(127, 'BWA', 'Khoekhoe', 'F', 2.5, 36),(128, 'BWA', 'Ndebele', 'F', 1.3, 36),(129, 'BWA', 'San', 'F', 3.5, 36),(130, 'BWA', 'Shona', 'F', 12.3, 36),(131, 'BWA', 'Tswana', 'F', 75.5, 36),(132, 'CAF', 'Banda', 'F', 23.5, 37),(133, 'CAF', 'Gbaya', 'F', 23.8, 37),(134, 'CAF', 'Mandjia', 'F', 14.8, 37),(135, 'CAF', 'Mbum', 'F', 6.4, 37),(136, 'CAF', 'Ngbaka', 'F', 7.5, 37),(137, 'CAF', 'Sara', 'F', 6.4, 37),(138, 'CAN', 'Chinese', 'F', 2.5, 38),(139, 'CAN', 'Dutch', 'F', 0.5, 38),(140, 'CAN', 'English', 'T', 60.4, 38),(141, 'CAN', 'Eskimo Languages', 'F', 0.1, 38),(142, 'CAN', 'French', 'T', 23.4, 38),(143, 'CAN', 'German', 'F', 1.6, 38),(144, 'CAN', 'Italian', 'F', 1.7, 38),(145, 'CAN', 'Polish', 'F', 0.7, 38),(146, 'CAN', 'Portuguese', 'F', 0.7, 38),(147, 'CAN', 'Punjabi', 'F', 0.7, 38),(148, 'CAN', 'Spanish', 'F', 0.7, 38),(149, 'CAN', 'Ukrainian', 'F', 0.6, 38),(150, 'CCK', 'English', 'T', 0.0, 39),(151, 'CCK', 'Malay', 'F', 0.0, 39),(152, 'CHE', 'French', 'T', 19.2, 40),(153, 'CHE', 'German', 'T', 63.6, 40),(154, 'CHE', 'Italian', 'T', 7.7, 40),(155, 'CHE', 'Romansh', 'T', 0.6, 40),(156, 'CHL', 'AimarÃ¡', 'F', 0.5, 41),(157, 'CHL', 'Araucan', 'F', 9.6, 41),(158, 'CHL', 'Rapa nui', 'F', 0.2, 41),(159, 'CHL', 'Spanish', 'T', 89.7, 41),(160, 'CHN', 'Chinese', 'T', 92.0, 42),(161, 'CHN', 'Dong', 'F', 0.2, 42),(162, 'CHN', 'Hui', 'F', 0.8, 42),(163, 'CHN', 'MantÂšu', 'F', 0.9, 42),(164, 'CHN', 'Miao', 'F', 0.7, 42),(165, 'CHN', 'Mongolian', 'F', 0.4, 42),(166, 'CHN', 'Puyi', 'F', 0.2, 42),(167, 'CHN', 'Tibetan', 'F', 0.4, 42),(168, 'CHN', 'Tujia', 'F', 0.5, 42),(169, 'CHN', 'Uighur', 'F', 0.6, 42),(170, 'CHN', 'Yi', 'F', 0.6, 42),(171, 'CHN', 'Zhuang', 'F', 1.4, 42),(172, 'CIV', 'Akan', 'F', 30.0, 43),(173, 'CIV', 'Gur', 'F', 11.7, 43),(174, 'CIV', 'Kru', 'F', 10.5, 43),(175, 'CIV', 'Malinke', 'F', 11.4, 43),(176, 'CIV', '[South]Mande', 'F', 7.7, 43),(177, 'CMR', 'Bamileke-bamum', 'F', 18.6, 44),(178, 'CMR', 'Duala', 'F', 10.9, 44),(179, 'CMR', 'Fang', 'F', 19.7, 44),(180, 'CMR', 'Ful', 'F', 9.6, 44),(181, 'CMR', 'Maka', 'F', 4.9, 44),(182, 'CMR', 'Mandara', 'F', 5.7, 44),(183, 'CMR', 'Masana', 'F', 3.9, 44),(184, 'CMR', 'Tikar', 'F', 7.4, 44),(185, 'COD', 'Boa', 'F', 2.3, 45),(186, 'COD', 'Chokwe', 'F', 1.8, 45),(187, 'COD', 'Kongo', 'F', 16.0, 45),(188, 'COD', 'Luba', 'F', 18.0, 45),(189, 'COD', 'Mongo', 'F', 13.5, 45),(190, 'COD', 'Ngala and Bangi', 'F', 5.8, 45),(191, 'COD', 'Rundi', 'F', 3.8, 45),(192, 'COD', 'Rwanda', 'F', 10.3, 45),(193, 'COD', 'Teke', 'F', 2.7, 45),(194, 'COD', 'Zande', 'F', 6.1, 45),(195, 'COG', 'Kongo', 'F', 51.5, 46),(196, 'COG', 'Mbete', 'F', 4.8, 46),(197, 'COG', 'Mboshi', 'F', 11.4, 46),(198, 'COG', 'Punu', 'F', 2.9, 46),(199, 'COG', 'Sango', 'F', 2.6, 46),(200, 'COG', 'Teke', 'F', 17.3, 46),(201, 'COK', 'English', 'F', 0.0, 47),(202, 'COK', 'Maori', 'T', 0.0, 47),(203, 'COL', 'Arawakan', 'F', 0.1, 48),(204, 'COL', 'Caribbean', 'F', 0.1, 48),(205, 'COL', 'Chibcha', 'F', 0.4, 48),(206, 'COL', 'Creole English', 'F', 0.1, 48),(207, 'COL', 'Spanish', 'T', 99.0, 48),(208, 'COM', 'Comorian', 'T', 75.0, 49),(209, 'COM', 'Comorian-Arabic', 'F', 1.6, 49),(210, 'COM', 'Comorian-French', 'F', 12.9, 49),(211, 'COM', 'Comorian-madagassi', 'F', 5.5, 49),(212, 'COM', 'Comorian-Swahili', 'F', 0.5, 49),(213, 'CPV', 'Crioulo', 'F', 100.0, 50),(214, 'CPV', 'Portuguese', 'T', 0.0, 50),(215, 'CRI', 'Chibcha', 'F', 0.3, 51),(216, 'CRI', 'Chinese', 'F', 0.2, 51),(217, 'CRI', 'Creole English', 'F', 2.0, 51),(218, 'CRI', 'Spanish', 'T', 97.5, 51),(219, 'CUB', 'Spanish', 'T', 100.0, 52),(220, 'CXR', 'Chinese', 'F', 0.0, 53),(221, 'CXR', 'English', 'T', 0.0, 53),(222, 'CYM', 'English', 'T', 0.0, 54),(223, 'CYP', 'Greek', 'T', 74.1, 55),(224, 'CYP', 'Turkish', 'T', 22.4, 55),(225, 'CZE', 'Czech', 'T', 81.2, 56),(226, 'CZE', 'German', 'F', 0.5, 56),(227, 'CZE', 'Hungarian', 'F', 0.2, 56),(228, 'CZE', 'Moravian', 'F', 12.9, 56),(229, 'CZE', 'Polish', 'F', 0.6, 56),(230, 'CZE', 'Romani', 'F', 0.3, 56),(231, 'CZE', 'Silesiana', 'F', 0.4, 56),(232, 'CZE', 'Slovak', 'F', 3.1, 56),(233, 'DEU', 'German', 'T', 91.3, 57),(234, 'DEU', 'Greek', 'F', 0.4, 57),(235, 'DEU', 'Italian', 'F', 0.7, 57),(236, 'DEU', 'Polish', 'F', 0.3, 57),(237, 'DEU', 'Southern Slavic Languages', 'F', 1.4, 57),(238, 'DEU', 'Turkish', 'F', 2.6, 57),(239, 'DJI', 'Afar', 'F', 34.8, 58),(240, 'DJI', 'Arabic', 'T', 10.6, 58),(241, 'DJI', 'Somali', 'F', 43.9, 58),(242, 'DMA', 'Creole English', 'F', 100.0, 59),(243, 'DMA', 'Creole French', 'F', 0.0, 59),(244, 'DNK', 'Arabic', 'F', 0.7, 60),(245, 'DNK', 'Danish', 'T', 93.5, 60),(246, 'DNK', 'English', 'F', 0.3, 60),(247, 'DNK', 'German', 'F', 0.5, 60),(248, 'DNK', 'Norwegian', 'F', 0.3, 60),(249, 'DNK', 'Swedish', 'F', 0.3, 60),(250, 'DNK', 'Turkish', 'F', 0.8, 60),(251, 'DOM', 'Creole French', 'F', 2.0, 61),(252, 'DOM', 'Spanish', 'T', 98.0, 61),(253, 'DZA', 'Arabic', 'T', 86.0, 62),(254, 'DZA', 'Berberi', 'F', 14.0, 62),(255, 'ECU', 'KetÂšua', 'F', 7.0, 63),(256, 'ECU', 'Spanish', 'T', 93.0, 63),(257, 'EGY', 'Arabic', 'T', 98.8, 64),(258, 'EGY', 'Sinaberberi', 'F', 0.0, 64),(259, 'ERI', 'Afar', 'F', 4.3, 65),(260, 'ERI', 'Bilin', 'F', 3.0, 65),(261, 'ERI', 'Hadareb', 'F', 3.8, 65),(262, 'ERI', 'Saho', 'F', 3.0, 65),(263, 'ERI', 'Tigre', 'F', 31.7, 65),(264, 'ERI', 'Tigrinja', 'T', 49.1, 65),(265, 'ESH', 'Arabic', 'T', 100.0, 66),(266, 'ESP', 'Basque', 'F', 1.6, 67),(267, 'ESP', 'Catalan', 'F', 16.9, 67),(268, 'ESP', 'Galecian', 'F', 6.4, 67),(269, 'ESP', 'Spanish', 'T', 74.4, 67),(270, 'EST', 'Belorussian', 'F', 1.4, 68),(271, 'EST', 'Estonian', 'T', 65.3, 68),(272, 'EST', 'Finnish', 'F', 0.7, 68),(273, 'EST', 'Russian', 'F', 27.8, 68),(274, 'EST', 'Ukrainian', 'F', 2.8, 68),(275, 'ETH', 'Amhara', 'F', 30.0, 69),(276, 'ETH', 'Gurage', 'F', 4.7, 69),(277, 'ETH', 'Oromo', 'F', 31.0, 69),(278, 'ETH', 'Sidamo', 'F', 3.2, 69),(279, 'ETH', 'Somali', 'F', 4.1, 69),(280, 'ETH', 'Tigrinja', 'F', 7.2, 69),(281, 'ETH', 'Walaita', 'F', 2.8, 69),(282, 'FIN', 'Estonian', 'F', 0.2, 70),(283, 'FIN', 'Finnish', 'T', 92.7, 70),(284, 'FIN', 'Russian', 'F', 0.4, 70),(285, 'FIN', 'Saame', 'F', 0.0, 70),(286, 'FIN', 'Swedish', 'T', 5.7, 70),(287, 'FJI', 'Fijian', 'T', 50.8, 71),(288, 'FJI', 'Hindi', 'F', 43.7, 71),(289, 'FLK', 'English', 'T', 0.0, 72),(290, 'FRA', 'Arabic', 'F', 2.5, 73),(291, 'FRA', 'French', 'T', 93.6, 73),(292, 'FRA', 'Italian', 'F', 0.4, 73),(293, 'FRA', 'Portuguese', 'F', 1.2, 73),(294, 'FRA', 'Spanish', 'F', 0.4, 73),(295, 'FRA', 'Turkish', 'F', 0.4, 73),(296, 'FRO', 'Danish', 'T', 0.0, 74),(297, 'FRO', 'Faroese', 'T', 100.0, 74),(298, 'FSM', 'Kosrean', 'F', 7.3, 75),(299, 'FSM', 'Mortlock', 'F', 7.6, 75),(300, 'FSM', 'Pohnpei', 'F', 23.8, 75),(301, 'FSM', 'Trukese', 'F', 41.6, 75),(302, 'FSM', 'Wolea', 'F', 3.7, 75),(303, 'FSM', 'Yap', 'F', 5.8, 75),(304, 'GAB', 'Fang', 'F', 35.8, 76),(305, 'GAB', 'Mbete', 'F', 13.8, 76),(306, 'GAB', 'Mpongwe', 'F', 14.6, 76),(307, 'GAB', 'Punu-sira-nzebi', 'F', 17.1, 76),(308, 'GBR', 'English', 'T', 97.3, 77),(309, 'GBR', 'Gaeli', 'F', 0.1, 77),(310, 'GBR', 'Kymri', 'F', 0.9, 77),(311, 'GEO', 'Abhyasi', 'F', 1.7, 78),(312, 'GEO', 'Armenian', 'F', 6.8, 78),(313, 'GEO', 'Azerbaijani', 'F', 5.5, 78),(314, 'GEO', 'Georgiana', 'T', 71.7, 78),(315, 'GEO', 'Osseetti', 'F', 2.4, 78),(316, 'GEO', 'Russian', 'F', 8.8, 78),(317, 'GHA', 'Akan', 'F', 52.4, 79),(318, 'GHA', 'Ewe', 'F', 11.9, 79),(319, 'GHA', 'Ga-adangme', 'F', 7.8, 79),(320, 'GHA', 'Gurma', 'F', 3.3, 79),(321, 'GHA', 'Joruba', 'F', 1.3, 79),(322, 'GHA', 'Mossi', 'F', 15.8, 79),(323, 'GIB', 'Arabic', 'F', 7.4, 80),(324, 'GIB', 'English', 'T', 88.9, 80),(325, 'GIN', 'Ful', 'F', 38.6, 81),(326, 'GIN', 'Kissi', 'F', 6.0, 81),(327, 'GIN', 'Kpelle', 'F', 4.6, 81),(328, 'GIN', 'Loma', 'F', 2.3, 81),(329, 'GIN', 'Malinke', 'F', 23.2, 81),(330, 'GIN', 'Susu', 'F', 11.0, 81),(331, 'GIN', 'Yalunka', 'F', 2.9, 81),(332, 'GLP', 'Creole French', 'F', 95.0, 82),(333, 'GLP', 'French', 'T', 0.0, 82),(334, 'GMB', 'Diola', 'F', 9.2, 83),(335, 'GMB', 'Ful', 'F', 16.2, 83),(336, 'GMB', 'Malinke', 'F', 34.1, 83),(337, 'GMB', 'Soninke', 'F', 7.6, 83),(338, 'GMB', 'Wolof', 'F', 12.6, 83),(339, 'GNB', 'Balante', 'F', 14.6, 84),(340, 'GNB', 'Crioulo', 'F', 36.4, 84),(341, 'GNB', 'Ful', 'F', 16.6, 84),(342, 'GNB', 'Malinke', 'F', 6.9, 84),(343, 'GNB', 'Mandyako', 'F', 4.9, 84),(344, 'GNB', 'Portuguese', 'T', 8.1, 84),(345, 'GNQ', 'Bubi', 'F', 8.7, 85),(346, 'GNQ', 'Fang', 'F', 84.8, 85),(347, 'GRC', 'Greek', 'T', 98.5, 86),(348, 'GRC', 'Turkish', 'F', 0.9, 86),(349, 'GRD', 'Creole English', 'F', 100.0, 87),(350, 'GRL', 'Danish', 'T', 12.5, 88),(351, 'GRL', 'Greenlandic', 'T', 87.5, 88),(352, 'GTM', 'Cakchiquel', 'F', 8.9, 89),(353, 'GTM', 'KekchÃ­', 'F', 4.9, 89),(354, 'GTM', 'Mam', 'F', 2.7, 89),(355, 'GTM', 'QuichÃ©', 'F', 10.1, 89),(356, 'GTM', 'Spanish', 'T', 64.7, 89),(357, 'GUF', 'Creole French', 'F', 94.3, 90),(358, 'GUF', 'Indian Languages', 'F', 1.9, 90),(359, 'GUM', 'Chamorro', 'T', 29.6, 91),(360, 'GUM', 'English', 'T', 37.5, 91),(361, 'GUM', 'Japanese', 'F', 2.0, 91),(362, 'GUM', 'Korean', 'F', 3.3, 91),(363, 'GUM', 'Philippene Languages', 'F', 19.7, 91),(364, 'GUY', 'Arawakan', 'F', 1.4, 92),(365, 'GUY', 'Caribbean', 'F', 2.2, 92),(366, 'GUY', 'Creole English', 'F', 96.4, 92),(367, 'HKG', 'Canton Chinese', 'F', 88.7, 93),(368, 'HKG', 'Chiu chau', 'F', 1.4, 93),(369, 'HKG', 'English', 'T', 2.2, 93),(370, 'HKG', 'Fukien', 'F', 1.9, 93),(371, 'HKG', 'Hakka', 'F', 1.6, 93),(372, 'HND', 'Creole English', 'F', 0.2, 95),(373, 'HND', 'Garifuna', 'F', 1.3, 95),(374, 'HND', 'Miskito', 'F', 0.2, 95),(375, 'HND', 'Spanish', 'T', 97.2, 95),(376, 'HRV', 'Serbo-Croatian', 'T', 95.9, 96),(377, 'HRV', 'Slovene', 'F', 0.0, 96),(378, 'HTI', 'French', 'T', 0.0, 97),(379, 'HTI', 'Haiti Creole', 'F', 100.0, 97),(380, 'HUN', 'German', 'F', 0.4, 98),(381, 'HUN', 'Hungarian', 'T', 98.5, 98),(382, 'HUN', 'Romani', 'F', 0.5, 98),(383, 'HUN', 'Romanian', 'F', 0.1, 98),(384, 'HUN', 'Serbo-Croatian', 'F', 0.2, 98),(385, 'HUN', 'Slovak', 'F', 0.1, 98),(386, 'IDN', 'Bali', 'F', 1.7, 99),(387, 'IDN', 'Banja', 'F', 1.8, 99),(388, 'IDN', 'Batakki', 'F', 2.2, 99),(389, 'IDN', 'Bugi', 'F', 2.2, 99),(390, 'IDN', 'Javanese', 'F', 39.4, 99),(391, 'IDN', 'Madura', 'F', 4.3, 99),(392, 'IDN', 'Malay', 'T', 12.1, 99),(393, 'IDN', 'Minangkabau', 'F', 2.4, 99),(394, 'IDN', 'Sunda', 'F', 15.8, 99),(395, 'IND', 'Asami', 'F', 1.5, 100),(396, 'IND', 'Bengali', 'F', 8.2, 100),(397, 'IND', 'Gujarati', 'F', 4.8, 100),(398, 'IND', 'Hindi', 'T', 39.9, 100),(399, 'IND', 'Kannada', 'F', 3.9, 100),(400, 'IND', 'Malajalam', 'F', 3.6, 100),(401, 'IND', 'Marathi', 'F', 7.4, 100),(402, 'IND', 'Orija', 'F', 3.3, 100),(403, 'IND', 'Punjabi', 'F', 2.8, 100),(404, 'IND', 'Tamil', 'F', 6.3, 100),(405, 'IND', 'Telugu', 'F', 7.8, 100),(406, 'IND', 'Urdu', 'F', 5.1, 100),(407, 'IRL', 'English', 'T', 98.4, 102),(408, 'IRL', 'Irish', 'T', 1.6, 102),(409, 'IRN', 'Arabic', 'F', 2.2, 103),(410, 'IRN', 'Azerbaijani', 'F', 16.8, 103),(411, 'IRN', 'Bakhtyari', 'F', 1.7, 103),(412, 'IRN', 'Balochi', 'F', 2.3, 103),(413, 'IRN', 'Gilaki', 'F', 5.3, 103),(414, 'IRN', 'Kurdish', 'F', 9.1, 103),(415, 'IRN', 'Luri', 'F', 4.3, 103),(416, 'IRN', 'Mazandarani', 'F', 3.6, 103),(417, 'IRN', 'Persian', 'T', 45.7, 103),(418, 'IRN', 'Turkmenian', 'F', 1.6, 103),(419, 'IRQ', 'Arabic', 'T', 77.2, 104),(420, 'IRQ', 'Assyrian', 'F', 0.8, 104),(421, 'IRQ', 'Azerbaijani', 'F', 1.7, 104),(422, 'IRQ', 'Kurdish', 'F', 19.0, 104),(423, 'IRQ', 'Persian', 'F', 0.8, 104),(424, 'ISL', 'English', 'F', 0.0, 105),(425, 'ISL', 'Icelandic', 'T', 95.7, 105),(426, 'ISR', 'Arabic', 'T', 18.0, 106),(427, 'ISR', 'Hebrew', 'T', 63.1, 106),(428, 'ISR', 'Russian', 'F', 8.9, 106),(429, 'ITA', 'Albaniana', 'F', 0.2, 107),(430, 'ITA', 'French', 'F', 0.5, 107),(431, 'ITA', 'Friuli', 'F', 1.2, 107),(432, 'ITA', 'German', 'F', 0.5, 107),(433, 'ITA', 'Italian', 'T', 94.1, 107),(434, 'ITA', 'Romani', 'F', 0.2, 107),(435, 'ITA', 'Sardinian', 'F', 2.7, 107),(436, 'ITA', 'Slovene', 'F', 0.2, 107),(437, 'JAM', 'Creole English', 'F', 94.2, 108),(438, 'JAM', 'Hindi', 'F', 1.9, 108),(439, 'JOR', 'Arabic', 'T', 97.9, 109),(440, 'JOR', 'Armenian', 'F', 1.0, 109),(441, 'JOR', 'Circassian', 'F', 1.0, 109),(442, 'JPN', 'Ainu', 'F', 0.0, 110),(443, 'JPN', 'Chinese', 'F', 0.2, 110),(444, 'JPN', 'English', 'F', 0.1, 110),(445, 'JPN', 'Japanese', 'T', 99.1, 110),(446, 'JPN', 'Korean', 'F', 0.5, 110),(447, 'JPN', 'Philippene Languages', 'F', 0.1, 110),(448, 'KAZ', 'German', 'F', 3.1, 111),(449, 'KAZ', 'Kazakh', 'T', 46.0, 111),(450, 'KAZ', 'Russian', 'F', 34.7, 111),(451, 'KAZ', 'Tatar', 'F', 2.0, 111),(452, 'KAZ', 'Ukrainian', 'F', 5.0, 111),(453, 'KAZ', 'Uzbek', 'F', 2.3, 111),(454, 'KEN', 'Gusii', 'F', 6.1, 112),(455, 'KEN', 'Kalenjin', 'F', 10.8, 112),(456, 'KEN', 'Kamba', 'F', 11.2, 112),(457, 'KEN', 'Kikuyu', 'F', 20.9, 112),(458, 'KEN', 'Luhya', 'F', 13.8, 112),(459, 'KEN', 'Luo', 'F', 12.8, 112),(460, 'KEN', 'Masai', 'F', 1.6, 112),(461, 'KEN', 'Meru', 'F', 5.5, 112),(462, 'KEN', 'Nyika', 'F', 4.8, 112),(463, 'KEN', 'Turkana', 'F', 1.4, 112),(464, 'KGZ', 'Kazakh', 'F', 0.8, 113),(465, 'KGZ', 'Kirgiz', 'T', 59.7, 113),(466, 'KGZ', 'Russian', 'T', 16.2, 113),(467, 'KGZ', 'Tadzhik', 'F', 0.8, 113),(468, 'KGZ', 'Tatar', 'F', 1.3, 113),(469, 'KGZ', 'Ukrainian', 'F', 1.7, 113),(470, 'KGZ', 'Uzbek', 'F', 14.1, 113),(471, 'KHM', 'Chinese', 'F', 3.1, 114),(472, 'KHM', 'Khmer', 'T', 88.6, 114),(473, 'KHM', 'TÂšam', 'F', 2.4, 114),(474, 'KHM', 'Vietnamese', 'F', 5.5, 114),(475, 'KIR', 'Kiribati', 'T', 98.9, 115),(476, 'KIR', 'Tuvalu', 'F', 0.5, 115),(477, 'KNA', 'Creole English', 'F', 100.0, 116),(478, 'KNA', 'English', 'T', 0.0, 116),(479, 'KOR', 'Chinese', 'F', 0.1, 117),(480, 'KOR', 'Korean', 'T', 99.9, 117),(481, 'KWT', 'Arabic', 'T', 78.1, 118),(482, 'KWT', 'English', 'F', 0.0, 118),(483, 'LAO', 'Lao', 'T', 67.2, 119),(484, 'LAO', 'Lao-Soung', 'F', 5.2, 119),(485, 'LAO', 'Mon-khmer', 'F', 16.5, 119),(486, 'LAO', 'Thai', 'F', 7.8, 119),(487, 'LBN', 'Arabic', 'T', 93.0, 120),(488, 'LBN', 'Armenian', 'F', 5.9, 120),(489, 'LBN', 'French', 'F', 0.0, 120),(490, 'LBR', 'Bassa', 'F', 13.7, 121),(491, 'LBR', 'Gio', 'F', 7.9, 121),(492, 'LBR', 'Grebo', 'F', 8.9, 121),(493, 'LBR', 'Kpelle', 'F', 19.5, 121),(494, 'LBR', 'Kru', 'F', 7.2, 121),(495, 'LBR', 'Loma', 'F', 5.8, 121),(496, 'LBR', 'Malinke', 'F', 5.1, 121),(497, 'LBR', 'Mano', 'F', 7.2, 121),(498, 'LBY', 'Arabic', 'T', 96.0, 122),(499, 'LBY', 'Berberi', 'F', 1.0, 122),(500, 'LCA', 'Creole French', 'F', 80.0, 123),(501, 'LCA', 'English', 'T', 20.0, 123),(502, 'LIE', 'German', 'T', 89.0, 124),(503, 'LIE', 'Italian', 'F', 2.5, 124),(504, 'LIE', 'Turkish', 'F', 2.5, 124),(505, 'LKA', 'Mixed Languages', 'F', 19.6, 125),(506, 'LKA', 'Singali', 'T', 60.3, 125),(507, 'LKA', 'Tamil', 'T', 19.6, 125),(508, 'LSO', 'English', 'T', 0.0, 126),(509, 'LSO', 'Sotho', 'T', 85.0, 126),(510, 'LSO', 'Zulu', 'F', 15.0, 126),(511, 'LTU', 'Belorussian', 'F', 1.4, 127),(512, 'LTU', 'Lithuanian', 'T', 81.6, 127),(513, 'LTU', 'Polish', 'F', 7.0, 127),(514, 'LTU', 'Russian', 'F', 8.1, 127),(515, 'LTU', 'Ukrainian', 'F', 1.1, 127),(516, 'LUX', 'French', 'T', 4.2, 128),(517, 'LUX', 'German', 'T', 2.3, 128),(518, 'LUX', 'Italian', 'F', 4.6, 128),(519, 'LUX', 'Luxembourgish', 'T', 64.4, 128),(520, 'LUX', 'Portuguese', 'F', 13.0, 128),(521, 'LVA', 'Belorussian', 'F', 4.1, 129),(522, 'LVA', 'Latvian', 'T', 55.1, 129),(523, 'LVA', 'Lithuanian', 'F', 1.2, 129),(524, 'LVA', 'Polish', 'F', 2.1, 129),(525, 'LVA', 'Russian', 'F', 32.5, 129),(526, 'LVA', 'Ukrainian', 'F', 2.9, 129),(527, 'MAC', 'Canton Chinese', 'F', 85.6, 130),(528, 'MAC', 'English', 'F', 0.5, 130),(529, 'MAC', 'Mandarin Chinese', 'F', 1.2, 130),(530, 'MAC', 'Portuguese', 'T', 2.3, 130),(531, 'MAR', 'Arabic', 'T', 65.0, 131),(532, 'MAR', 'Berberi', 'F', 33.0, 131),(533, 'MCO', 'English', 'F', 6.5, 132),(534, 'MCO', 'French', 'T', 41.9, 132),(535, 'MCO', 'Italian', 'F', 16.1, 132),(536, 'MCO', 'Monegasque', 'F', 16.1, 132),(537, 'MDA', 'Bulgariana', 'F', 1.6, 133),(538, 'MDA', 'Gagauzi', 'F', 3.2, 133),(539, 'MDA', 'Romanian', 'T', 61.9, 133),(540, 'MDA', 'Russian', 'F', 23.2, 133),(541, 'MDA', 'Ukrainian', 'F', 8.6, 133),(542, 'MDG', 'French', 'T', 0.0, 134),(543, 'MDG', 'Malagasy', 'T', 98.9, 134),(544, 'MDV', 'Dhivehi', 'T', 100.0, 135),(545, 'MDV', 'English', 'F', 0.0, 135),(546, 'MEX', 'Mixtec', 'F', 0.6, 136),(547, 'MEX', 'NÃ¡huatl', 'F', 1.8, 136),(548, 'MEX', 'OtomÃ­', 'F', 0.4, 136),(549, 'MEX', 'Spanish', 'T', 92.1, 136),(550, 'MEX', 'Yucatec', 'F', 1.1, 136),(551, 'MEX', 'Zapotec', 'F', 0.6, 136),(552, 'MHL', 'English', 'T', 0.0, 137),(553, 'MHL', 'Marshallese', 'T', 96.8, 137),(554, 'MKD', 'Albaniana', 'F', 22.9, 138),(555, 'MKD', 'Macedonian', 'T', 66.5, 138),(556, 'MKD', 'Romani', 'F', 2.3, 138),(557, 'MKD', 'Serbo-Croatian', 'F', 2.0, 138),(558, 'MKD', 'Turkish', 'F', 4.0, 138),(559, 'MLI', 'Bambara', 'F', 31.8, 139),(560, 'MLI', 'Ful', 'F', 13.9, 139),(561, 'MLI', 'Senufo and Minianka', 'F', 12.0, 139),(562, 'MLI', 'Songhai', 'F', 6.9, 139),(563, 'MLI', 'Soninke', 'F', 8.7, 139),(564, 'MLI', 'Tamashek', 'F', 7.3, 139),(565, 'MLT', 'English', 'T', 2.1, 140),(566, 'MLT', 'Maltese', 'T', 95.8, 140),(567, 'MMR', 'Burmese', 'T', 69.0, 141),(568, 'MMR', 'Chin', 'F', 2.2, 141),(569, 'MMR', 'Kachin', 'F', 1.4, 141),(570, 'MMR', 'Karen', 'F', 6.2, 141),(571, 'MMR', 'Kayah', 'F', 0.4, 141),(572, 'MMR', 'Mon', 'F', 2.4, 141),(573, 'MMR', 'Rakhine', 'F', 4.5, 141),(574, 'MMR', 'Shan', 'F', 8.5, 141),(575, 'MNG', 'Bajad', 'F', 1.9, 142),(576, 'MNG', 'Buryat', 'F', 1.7, 142),(577, 'MNG', 'Dariganga', 'F', 1.4, 142),(578, 'MNG', 'Dorbet', 'F', 2.7, 142),(579, 'MNG', 'Kazakh', 'F', 5.9, 142),(580, 'MNG', 'Mongolian', 'T', 78.8, 142),(581, 'MNP', 'Carolinian', 'F', 4.8, 143),(582, 'MNP', 'Chamorro', 'F', 30.0, 143),(583, 'MNP', 'Chinese', 'F', 7.1, 143),(584, 'MNP', 'English', 'T', 4.8, 143),(585, 'MNP', 'Korean', 'F', 6.5, 143),(586, 'MNP', 'Philippene Languages', 'F', 34.1, 143),(587, 'MOZ', 'Chuabo', 'F', 5.7, 144),(588, 'MOZ', 'Lomwe', 'F', 7.8, 144),(589, 'MOZ', 'Makua', 'F', 27.8, 144),(590, 'MOZ', 'Marendje', 'F', 3.5, 144),(591, 'MOZ', 'Nyanja', 'F', 3.3, 144),(592, 'MOZ', 'Ronga', 'F', 3.7, 144),(593, 'MOZ', 'Sena', 'F', 9.4, 144),(594, 'MOZ', 'Shona', 'F', 6.5, 144),(595, 'MOZ', 'Tsonga', 'F', 12.4, 144),(596, 'MOZ', 'Tswa', 'F', 6.0, 144),(597, 'MRT', 'Ful', 'F', 1.2, 145),(598, 'MRT', 'Hassaniya', 'F', 81.7, 145),(599, 'MRT', 'Soninke', 'F', 2.7, 145),(600, 'MRT', 'Tukulor', 'F', 5.4, 145),(601, 'MRT', 'Wolof', 'F', 6.6, 145),(602, 'MRT', 'Zenaga', 'F', 1.2, 145),(603, 'MSR', 'English', 'T', 0.0, 146),(604, 'MTQ', 'Creole French', 'F', 96.6, 147),(605, 'MTQ', 'French', 'T', 0.0, 147),(606, 'MUS', 'Bhojpuri', 'F', 21.1, 148),(607, 'MUS', 'Creole French', 'F', 70.6, 148),(608, 'MUS', 'French', 'F', 3.4, 148),(609, 'MUS', 'Hindi', 'F', 1.2, 148),(610, 'MUS', 'Marathi', 'F', 0.7, 148),(611, 'MUS', 'Tamil', 'F', 0.8, 148),(612, 'MWI', 'Chichewa', 'T', 58.3, 149),(613, 'MWI', 'Lomwe', 'F', 18.4, 149),(614, 'MWI', 'Ngoni', 'F', 6.7, 149),(615, 'MWI', 'Yao', 'F', 13.2, 149),(616, 'MYS', 'Chinese', 'F', 9.0, 150),(617, 'MYS', 'Dusun', 'F', 1.1, 150),(618, 'MYS', 'English', 'F', 1.6, 150),(619, 'MYS', 'Iban', 'F', 2.8, 150),(620, 'MYS', 'Malay', 'T', 58.4, 150),(621, 'MYS', 'Tamil', 'F', 3.9, 150),(622, 'MYT', 'French', 'T', 20.3, 151),(623, 'MYT', 'MahorÃ©', 'F', 41.9, 151),(624, 'MYT', 'Malagasy', 'F', 16.1, 151),(625, 'NAM', 'Afrikaans', 'F', 9.5, 152),(626, 'NAM', 'Caprivi', 'F', 4.7, 152),(627, 'NAM', 'German', 'F', 0.9, 152),(628, 'NAM', 'Herero', 'F', 8.0, 152),(629, 'NAM', 'Kavango', 'F', 9.7, 152),(630, 'NAM', 'Nama', 'F', 12.4, 152),(631, 'NAM', 'Ovambo', 'F', 50.7, 152),(632, 'NAM', 'San', 'F', 1.9, 152),(633, 'NCL', 'French', 'T', 34.3, 153),(634, 'NCL', 'Malenasian Languages', 'F', 45.4, 153),(635, 'NCL', 'Polynesian Languages', 'F', 11.6, 153),(636, 'NER', 'Ful', 'F', 9.7, 154),(637, 'NER', 'Hausa', 'F', 53.1, 154),(638, 'NER', 'Kanuri', 'F', 4.4, 154),(639, 'NER', 'Songhai-zerma', 'F', 21.2, 154),(640, 'NER', 'Tamashek', 'F', 10.4, 154),(641, 'NFK', 'English', 'T', 0.0, 155),(642, 'NGA', 'Bura', 'F', 1.6, 156),(643, 'NGA', 'Edo', 'F', 3.3, 156),(644, 'NGA', 'Ful', 'F', 11.3, 156),(645, 'NGA', 'Hausa', 'F', 21.1, 156),(646, 'NGA', 'Ibibio', 'F', 5.6, 156),(647, 'NGA', 'Ibo', 'F', 18.1, 156),(648, 'NGA', 'Ijo', 'F', 1.8, 156),(649, 'NGA', 'Joruba', 'F', 21.4, 156),(650, 'NGA', 'Kanuri', 'F', 4.1, 156),(651, 'NGA', 'Tiv', 'F', 2.3, 156),(652, 'NIC', 'Creole English', 'F', 0.5, 157),(653, 'NIC', 'Miskito', 'F', 1.6, 157),(654, 'NIC', 'Spanish', 'T', 97.6, 157),(655, 'NIC', 'Sumo', 'F', 0.2, 157),(656, 'NIU', 'English', 'T', 0.0, 158),(657, 'NIU', 'Niue', 'F', 0.0, 158),(658, 'NLD', 'Arabic', 'F', 0.9, 159),(659, 'NLD', 'Dutch', 'T', 95.6, 159),(660, 'NLD', 'Fries', 'F', 3.7, 159),(661, 'NLD', 'Turkish', 'F', 0.8, 159),(662, 'NOR', 'Danish', 'F', 0.4, 160),(663, 'NOR', 'English', 'F', 0.5, 160),(664, 'NOR', 'Norwegian', 'T', 96.6, 160),(665, 'NOR', 'Saame', 'F', 0.0, 160),(666, 'NOR', 'Swedish', 'F', 0.3, 160),(667, 'NPL', 'Bhojpuri', 'F', 7.5, 161),(668, 'NPL', 'Hindi', 'F', 3.0, 161),(669, 'NPL', 'Maithili', 'F', 11.9, 161),(670, 'NPL', 'Nepali', 'T', 50.4, 161),(671, 'NPL', 'Newari', 'F', 3.7, 161),(672, 'NPL', 'Tamang', 'F', 4.9, 161),(673, 'NPL', 'Tharu', 'F', 5.4, 161),(674, 'NRU', 'Chinese', 'F', 8.5, 162),(675, 'NRU', 'English', 'T', 7.5, 162),(676, 'NRU', 'Kiribati', 'F', 17.9, 162),(677, 'NRU', 'Nauru', 'T', 57.5, 162),(678, 'NRU', 'Tuvalu', 'F', 8.5, 162),(679, 'NZL', 'English', 'T', 87.0, 163),(680, 'NZL', 'Maori', 'F', 4.3, 163),(681, 'OMN', 'Arabic', 'T', 76.7, 164),(682, 'OMN', 'Balochi', 'F', 0.0, 164),(683, 'PAK', 'Balochi', 'F', 3.0, 165),(684, 'PAK', 'Brahui', 'F', 1.2, 165),(685, 'PAK', 'Hindko', 'F', 2.4, 165),(686, 'PAK', 'Pashto', 'F', 13.1, 165),(687, 'PAK', 'Punjabi', 'F', 48.2, 165),(688, 'PAK', 'Saraiki', 'F', 9.8, 165),(689, 'PAK', 'Sindhi', 'F', 11.8, 165),(690, 'PAK', 'Urdu', 'T', 7.6, 165),(691, 'PAN', 'Arabic', 'F', 0.6, 166),(692, 'PAN', 'Creole English', 'F', 14.0, 166),(693, 'PAN', 'Cuna', 'F', 2.0, 166),(694, 'PAN', 'Embera', 'F', 0.6, 166),(695, 'PAN', 'GuaymÃ­', 'F', 5.3, 166),(696, 'PAN', 'Spanish', 'T', 76.8, 166),(697, 'PCN', 'Pitcairnese', 'F', 0.0, 167),(698, 'PER', 'AimarÃ¡', 'T', 2.3, 168),(699, 'PER', 'KetÂšua', 'T', 16.4, 168),(700, 'PER', 'Spanish', 'T', 79.8, 168),(701, 'PHL', 'Bicol', 'F', 5.7, 169),(702, 'PHL', 'Cebuano', 'F', 23.3, 169),(703, 'PHL', 'Hiligaynon', 'F', 9.1, 169),(704, 'PHL', 'Ilocano', 'F', 9.3, 169),(705, 'PHL', 'Maguindanao', 'F', 1.4, 169),(706, 'PHL', 'Maranao', 'F', 1.3, 169),(707, 'PHL', 'Pampango', 'F', 3.0, 169),(708, 'PHL', 'Pangasinan', 'F', 1.8, 169),(709, 'PHL', 'Pilipino', 'T', 29.3, 169),(710, 'PHL', 'Waray-waray', 'F', 3.8, 169),(711, 'PLW', 'Chinese', 'F', 1.6, 170),(712, 'PLW', 'English', 'T', 3.2, 170),(713, 'PLW', 'Palau', 'T', 82.2, 170),(714, 'PLW', 'Philippene Languages', 'F', 9.2, 170),(715, 'PNG', 'Malenasian Languages', 'F', 20.0, 171),(716, 'PNG', 'Papuan Languages', 'F', 78.1, 171),(717, 'POL', 'Belorussian', 'F', 0.5, 172),(718, 'POL', 'German', 'F', 1.3, 172),(719, 'POL', 'Polish', 'T', 97.6, 172),(720, 'POL', 'Ukrainian', 'F', 0.6, 172),(721, 'PRI', 'English', 'F', 47.4, 173),(722, 'PRI', 'Spanish', 'T', 51.3, 173),(723, 'PRK', 'Chinese', 'F', 0.1, 174),(724, 'PRK', 'Korean', 'T', 99.9, 174),(725, 'PRT', 'Portuguese', 'T', 99.0, 175),(726, 'PRY', 'German', 'F', 0.9, 176),(727, 'PRY', 'GuaranÃ­', 'T', 40.1, 176),(728, 'PRY', 'Portuguese', 'F', 3.2, 176),(729, 'PRY', 'Spanish', 'T', 55.1, 176),(730, 'PSE', 'Arabic', 'F', 95.9, 177),(731, 'PSE', 'Hebrew', 'F', 4.1, 177),(732, 'PYF', 'Chinese', 'F', 2.9, 178),(733, 'PYF', 'French', 'T', 40.8, 178),(734, 'PYF', 'Tahitian', 'F', 46.4, 178),(735, 'QAT', 'Arabic', 'T', 40.7, 179),(736, 'QAT', 'Urdu', 'F', 0.0, 179),(737, 'REU', 'Chinese', 'F', 2.8, 180),(738, 'REU', 'Comorian', 'F', 2.8, 180),(739, 'REU', 'Creole French', 'F', 91.5, 180),(740, 'REU', 'Malagasy', 'F', 1.4, 180),(741, 'REU', 'Tamil', 'F', 0.0, 180),(742, 'ROM', 'German', 'F', 0.4, 181),(743, 'ROM', 'Hungarian', 'F', 7.2, 181),(744, 'ROM', 'Romani', 'T', 0.7, 181),(745, 'ROM', 'Romanian', 'T', 90.7, 181),(746, 'ROM', 'Serbo-Croatian', 'F', 0.1, 181),(747, 'ROM', 'Ukrainian', 'F', 0.3, 181),(748, 'RUS', 'Avarian', 'F', 0.4, 182),(749, 'RUS', 'Bashkir', 'F', 0.7, 182),(750, 'RUS', 'Belorussian', 'F', 0.3, 182),(751, 'RUS', 'Chechen', 'F', 0.6, 182),(752, 'RUS', 'Chuvash', 'F', 0.9, 182),(753, 'RUS', 'Kazakh', 'F', 0.4, 182),(754, 'RUS', 'Mari', 'F', 0.4, 182),(755, 'RUS', 'Mordva', 'F', 0.5, 182),(756, 'RUS', 'Russian', 'T', 86.6, 182),(757, 'RUS', 'Tatar', 'F', 3.2, 182),(758, 'RUS', 'Udmur', 'F', 0.3, 182),(759, 'RUS', 'Ukrainian', 'F', 1.3, 182),(760, 'RWA', 'French', 'T', 0.0, 183),(761, 'RWA', 'Rwanda', 'T', 100.0, 183),(762, 'SAU', 'Arabic', 'T', 95.0, 184),(763, 'SDN', 'Arabic', 'T', 49.4, 185),(764, 'SDN', 'Bari', 'F', 2.5, 185),(765, 'SDN', 'Beja', 'F', 6.4, 185),(766, 'SDN', 'Chilluk', 'F', 1.7, 185),(767, 'SDN', 'Dinka', 'F', 11.5, 185),(768, 'SDN', 'Fur', 'F', 2.1, 185),(769, 'SDN', 'Lotuko', 'F', 1.5, 185),(770, 'SDN', 'Nubian Languages', 'F', 8.1, 185),(771, 'SDN', 'Nuer', 'F', 4.9, 185),(772, 'SDN', 'Zande', 'F', 2.7, 185),(773, 'SEN', 'Diola', 'F', 5.0, 186),(774, 'SEN', 'Ful', 'F', 21.7, 186),(775, 'SEN', 'Malinke', 'F', 3.8, 186),(776, 'SEN', 'Serer', 'F', 12.5, 186),(777, 'SEN', 'Soninke', 'F', 1.3, 186),(778, 'SEN', 'Wolof', 'T', 48.1, 186),(779, 'SGP', 'Chinese', 'T', 77.1, 187),(780, 'SGP', 'Malay', 'T', 14.1, 187),(781, 'SGP', 'Tamil', 'T', 7.4, 187),(782, 'SHN', 'English', 'T', 0.0, 189),(783, 'SJM', 'Norwegian', 'T', 0.0, 190),(784, 'SJM', 'Russian', 'F', 0.0, 190),(785, 'SLB', 'Malenasian Languages', 'F', 85.6, 191),(786, 'SLB', 'Papuan Languages', 'F', 8.6, 191),(787, 'SLB', 'Polynesian Languages', 'F', 3.8, 191),(788, 'SLE', 'Bullom-sherbro', 'F', 3.8, 192),(789, 'SLE', 'Ful', 'F', 3.8, 192),(790, 'SLE', 'Kono-vai', 'F', 5.1, 192),(791, 'SLE', 'Kuranko', 'F', 3.4, 192),(792, 'SLE', 'Limba', 'F', 8.3, 192),(793, 'SLE', 'Mende', 'F', 34.8, 192),(794, 'SLE', 'Temne', 'F', 31.8, 192),(795, 'SLE', 'Yalunka', 'F', 3.4, 192),(796, 'SLV', 'Nahua', 'F', 0.0, 193),(797, 'SLV', 'Spanish', 'T', 100.0, 193),(798, 'SMR', 'Italian', 'T', 100.0, 194),(799, 'SOM', 'Arabic', 'T', 0.0, 195),(800, 'SOM', 'Somali', 'T', 98.3, 195),(801, 'SPM', 'French', 'T', 0.0, 196),(802, 'STP', 'Crioulo', 'F', 86.3, 197),(803, 'STP', 'French', 'F', 0.7, 197),(804, 'SUR', 'Hindi', 'F', 0.0, 198),(805, 'SUR', 'Sranantonga', 'F', 81.0, 198),(806, 'SVK', 'Czech and Moravian', 'F', 1.1, 199),(807, 'SVK', 'Hungarian', 'F', 10.5, 199),(808, 'SVK', 'Romani', 'F', 1.7, 199),(809, 'SVK', 'Slovak', 'T', 85.6, 199),(810, 'SVK', 'Ukrainian and Russian', 'F', 0.6, 199),(811, 'SVN', 'Hungarian', 'F', 0.5, 200),(812, 'SVN', 'Serbo-Croatian', 'F', 7.9, 200),(813, 'SVN', 'Slovene', 'T', 87.9, 200),(814, 'SWE', 'Arabic', 'F', 0.8, 201),(815, 'SWE', 'Finnish', 'F', 2.4, 201),(816, 'SWE', 'Norwegian', 'F', 0.5, 201),(
    817,
    'SWE',
    'Southern Slavic Languages',
    'F',
    1.3,
    201
  ),(818, 'SWE', 'Spanish', 'F', 0.6, 201),(819, 'SWE', 'Swedish', 'T', 89.5, 201),(820, 'SWZ', 'Swazi', 'T', 89.9, 202),(821, 'SWZ', 'Zulu', 'F', 2.0, 202),(822, 'SYC', 'English', 'T', 3.8, 203),(823, 'SYC', 'French', 'T', 1.3, 203),(824, 'SYC', 'Seselwa', 'F', 91.3, 203),(825, 'SYR', 'Arabic', 'T', 90.0, 204),(826, 'SYR', 'Kurdish', 'F', 9.0, 204),(827, 'TCA', 'English', 'T', 0.0, 205),(828, 'TCD', 'Arabic', 'T', 12.3, 206),(829, 'TCD', 'Gorane', 'F', 6.2, 206),(830, 'TCD', 'Hadjarai', 'F', 6.7, 206),(831, 'TCD', 'Kanem-bornu', 'F', 9.0, 206),(832, 'TCD', 'Mayo-kebbi', 'F', 11.5, 206),(833, 'TCD', 'Ouaddai', 'F', 8.7, 206),(834, 'TCD', 'Sara', 'F', 27.7, 206),(835, 'TCD', 'Tandjile', 'F', 6.5, 206),(836, 'TGO', 'Ane', 'F', 5.7, 207),(837, 'TGO', 'Ewe', 'T', 23.2, 207),(838, 'TGO', 'Gurma', 'F', 3.4, 207),(839, 'TGO', 'KabyÃ©', 'T', 13.8, 207),(840, 'TGO', 'Kotokoli', 'F', 5.7, 207),(841, 'TGO', 'Moba', 'F', 5.4, 207),(842, 'TGO', 'Naudemba', 'F', 4.1, 207),(843, 'TGO', 'Watyi', 'F', 10.3, 207),(844, 'THA', 'Chinese', 'F', 12.1, 208),(845, 'THA', 'Khmer', 'F', 1.3, 208),(846, 'THA', 'Kuy', 'F', 1.1, 208),(847, 'THA', 'Lao', 'F', 26.9, 208),(848, 'THA', 'Malay', 'F', 3.6, 208),(849, 'THA', 'Thai', 'T', 52.6, 208),(850, 'TJK', 'Russian', 'F', 9.7, 209),(851, 'TJK', 'Tadzhik', 'T', 62.2, 209),(852, 'TJK', 'Uzbek', 'F', 23.2, 209),(853, 'TKL', 'English', 'T', 0.0, 210),(854, 'TKL', 'Tokelau', 'F', 0.0, 210),(855, 'TKM', 'Kazakh', 'F', 2.0, 211),(856, 'TKM', 'Russian', 'F', 6.7, 211),(857, 'TKM', 'Turkmenian', 'T', 76.7, 211),(858, 'TKM', 'Uzbek', 'F', 9.2, 211),(859, 'TMP', 'Portuguese', 'T', 0.0, 212),(860, 'TMP', 'Sunda', 'F', 0.0, 212),(861, 'TON', 'English', 'T', 0.0, 213),(862, 'TON', 'Tongan', 'T', 98.3, 213),(863, 'TTO', 'Creole English', 'F', 2.9, 214),(864, 'TTO', 'English', 'F', 93.5, 214),(865, 'TTO', 'Hindi', 'F', 3.4, 214),(866, 'TUN', 'Arabic', 'T', 69.9, 215),(867, 'TUN', 'Arabic-French', 'F', 26.3, 215),(868, 'TUN', 'Arabic-French-English', 'F', 3.2, 215),(869, 'TUR', 'Arabic', 'F', 1.4, 216),(870, 'TUR', 'Kurdish', 'F', 10.6, 216),(871, 'TUR', 'Turkish', 'T', 87.6, 216),(872, 'TUV', 'English', 'T', 0.0, 217),(873, 'TUV', 'Kiribati', 'F', 7.5, 217),(874, 'TUV', 'Tuvalu', 'T', 92.5, 217),(875, 'TWN', 'Ami', 'F', 0.6, 218),(876, 'TWN', 'Atayal', 'F', 0.4, 218),(877, 'TWN', 'Hakka', 'F', 11.0, 218),(878, 'TWN', 'Mandarin Chinese', 'T', 20.1, 218),(879, 'TWN', 'Min', 'F', 66.7, 218),(880, 'TWN', 'Paiwan', 'F', 0.3, 218),(881, 'TZA', 'Chaga and Pare', 'F', 4.9, 219),(882, 'TZA', 'Gogo', 'F', 3.9, 219),(883, 'TZA', 'Ha', 'F', 3.5, 219),(884, 'TZA', 'Haya', 'F', 5.9, 219),(885, 'TZA', 'Hehet', 'F', 6.9, 219),(886, 'TZA', 'Luguru', 'F', 4.9, 219),(887, 'TZA', 'Makonde', 'F', 5.9, 219),(888, 'TZA', 'Nyakusa', 'F', 5.4, 219),(889, 'TZA', 'Nyamwesi', 'F', 21.1, 219),(890, 'TZA', 'Shambala', 'F', 4.3, 219),(891, 'TZA', 'Swahili', 'T', 8.8, 219),(892, 'UGA', 'Acholi', 'F', 4.4, 220),(893, 'UGA', 'Ganda', 'F', 18.1, 220),(894, 'UGA', 'Gisu', 'F', 4.5, 220),(895, 'UGA', 'Kiga', 'F', 8.3, 220),(896, 'UGA', 'Lango', 'F', 5.9, 220),(897, 'UGA', 'Lugbara', 'F', 4.7, 220),(898, 'UGA', 'Nkole', 'F', 10.7, 220),(899, 'UGA', 'Rwanda', 'F', 3.2, 220),(900, 'UGA', 'Soga', 'F', 8.2, 220),(901, 'UGA', 'Teso', 'F', 6.0, 220),(902, 'UKR', 'Belorussian', 'F', 0.3, 221),(903, 'UKR', 'Bulgariana', 'F', 0.3, 221),(904, 'UKR', 'Hungarian', 'F', 0.3, 221),(905, 'UKR', 'Polish', 'F', 0.1, 221),(906, 'UKR', 'Romanian', 'F', 0.7, 221),(907, 'UKR', 'Russian', 'F', 32.9, 221),(908, 'UKR', 'Ukrainian', 'T', 64.7, 221),(909, 'UMI', 'English', 'T', 0.0, 222),(910, 'URY', 'Spanish', 'T', 95.7, 223),(911, 'USA', 'Chinese', 'F', 0.6, 224),(912, 'USA', 'English', 'T', 86.2, 224),(913, 'USA', 'French', 'F', 0.7, 224),(914, 'USA', 'German', 'F', 0.7, 224),(915, 'USA', 'Italian', 'F', 0.6, 224),(916, 'USA', 'Japanese', 'F', 0.2, 224),(917, 'USA', 'Korean', 'F', 0.3, 224),(918, 'USA', 'Polish', 'F', 0.3, 224),(919, 'USA', 'Portuguese', 'F', 0.2, 224),(920, 'USA', 'Spanish', 'F', 7.5, 224),(921, 'USA', 'Tagalog', 'F', 0.4, 224),(922, 'USA', 'Vietnamese', 'F', 0.2, 224),(923, 'UZB', 'Karakalpak', 'F', 2.0, 225),(924, 'UZB', 'Kazakh', 'F', 3.8, 225),(925, 'UZB', 'Russian', 'F', 10.9, 225),(926, 'UZB', 'Tadzhik', 'F', 4.4, 225),(927, 'UZB', 'Tatar', 'F', 1.8, 225),(928, 'UZB', 'Uzbek', 'T', 72.6, 225),(929, 'VAT', 'Italian', 'T', 0.0, 226),(930, 'VCT', 'Creole English', 'F', 99.1, 227),(931, 'VCT', 'English', 'T', 0.0, 227),(932, 'VEN', 'Goajiro', 'F', 0.4, 228),(933, 'VEN', 'Spanish', 'T', 96.9, 228),(934, 'VEN', 'Warrau', 'F', 0.1, 228),(935, 'VGB', 'English', 'T', 0.0, 229),(936, 'VIR', 'English', 'T', 81.7, 230),(937, 'VIR', 'French', 'F', 2.5, 230),(938, 'VIR', 'Spanish', 'F', 13.3, 230),(939, 'VNM', 'Chinese', 'F', 1.4, 231),(940, 'VNM', 'Khmer', 'F', 1.4, 231),(941, 'VNM', 'Man', 'F', 0.7, 231),(942, 'VNM', 'Miao', 'F', 0.9, 231),(943, 'VNM', 'Muong', 'F', 1.5, 231),(944, 'VNM', 'Nung', 'F', 1.1, 231),(945, 'VNM', 'Thai', 'F', 1.6, 231),(946, 'VNM', 'Tho', 'F', 1.8, 231),(947, 'VNM', 'Vietnamese', 'T', 86.8, 231),(948, 'VUT', 'Bislama', 'T', 56.6, 232),(949, 'VUT', 'English', 'T', 28.3, 232),(950, 'VUT', 'French', 'T', 14.2, 232),(951, 'WLF', 'Futuna', 'F', 0.0, 233),(952, 'WLF', 'Wallis', 'F', 0.0, 233),(953, 'WSM', 'English', 'T', 0.6, 234),(954, 'WSM', 'Samoan', 'T', 47.5, 234),(955, 'WSM', 'Samoan-English', 'F', 52.0, 234),(956, 'YEM', 'Arabic', 'T', 99.6, 235),(957, 'YEM', 'Soqutri', 'F', 0.0, 235),(958, 'YUG', 'Albaniana', 'F', 16.5, 236),(959, 'YUG', 'Hungarian', 'F', 3.4, 236),(960, 'YUG', 'Macedonian', 'F', 0.5, 236),(961, 'YUG', 'Romani', 'F', 1.4, 236),(962, 'YUG', 'Serbo-Croatian', 'T', 75.2, 236),(963, 'YUG', 'Slovak', 'F', 0.7, 236),(964, 'ZAF', 'Afrikaans', 'T', 14.3, 237),(965, 'ZAF', 'English', 'T', 8.5, 237),(966, 'ZAF', 'Ndebele', 'F', 1.5, 237),(967, 'ZAF', 'Northsotho', 'F', 9.1, 237),(968, 'ZAF', 'Southsotho', 'F', 7.6, 237),(969, 'ZAF', 'Swazi', 'F', 2.5, 237),(970, 'ZAF', 'Tsonga', 'F', 4.3, 237),(971, 'ZAF', 'Tswana', 'F', 8.1, 237),(972, 'ZAF', 'Venda', 'F', 2.2, 237),(973, 'ZAF', 'Xhosa', 'T', 17.7, 237),(974, 'ZAF', 'Zulu', 'T', 22.7, 237),(975, 'ZMB', 'Bemba', 'F', 29.7, 238),(976, 'ZMB', 'Chewa', 'F', 5.7, 238),(977, 'ZMB', 'Lozi', 'F', 6.4, 238),(978, 'ZMB', 'Nsenga', 'F', 4.3, 238),(979, 'ZMB', 'Nyanja', 'F', 7.8, 238),(980, 'ZMB', 'Tongan', 'F', 11.0, 238),(981, 'ZWE', 'English', 'T', 2.2, 239),(982, 'ZWE', 'Ndebele', 'F', 16.2, 239),(983, 'ZWE', 'Nyanja', 'F', 2.2, 239),(984, 'ZWE', 'Shona', 'F', 72.1, 239);
  /*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
  /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
  /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
  /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
  /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
  /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
- - Dump completed on 2013 -10 -09 18 :03 :43