CREATE DATABASE  IF NOT EXISTS `tennisfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tennisfolio`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: tennisfolio
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `rating` DECIMAL(2, 1) NOT NULL,
  `percent` TINYINT UNSIGNED NOT NULL,
  `rtext` varchar(200) NOT NULL,
  `rdate` DATE NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` 
	VALUES (4, 80, "매일 같은 브랜드 것만 샀다가, 지겨워서 정도 좀 찾아보고 구매했는데 생각보단 괜찮아요~", "2023-11-03"),
			(5, 100, "테니스 레슨 받을때 편하게 쓰려고 샀는데 딱 좋네요! 사이즈도 딱 맞아요", "2023-10-29"),
			(4.5, 93, "색상도 사진 그대로라서 마음에 드네요. 감사합니다. 배송이 조금 늦는 게 아쉬웠어요.", "2023-10-26");
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_hot`
--

DROP TABLE IF EXISTS `products_hot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_hot` (
  `pid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `index` INT,
  `imgUrl` VARCHAR(255) NOT NULL,
  `shop` VARCHAR(50) NOT NULL,
  `product` VARCHAR(100) NOT NULL,
  `price` INT UNSIGNED,
  `dc` VARCHAR(10) DEFAULT NULL,
  `per` VARCHAR(10) DEFAULT NULL,
  `nodc` INT UNSIGNED DEFAULT NULL,
  `subImg` JSON DEFAULT NULL,
  `new` BOOLEAN NOT NULL DEFAULT TRUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_hot`
--

LOCK TABLES `products_hot` WRITE;
/*!40000 ALTER TABLE `products_hot` DISABLE KEYS */;
INSERT INTO `products_hot` 
	VALUES 
		(1, "img/hot/hot1.jpg", "컨셉트컬리지", "남여공용 테니스볼 애쉬그레이 맨투맨", 91000, '["img/detail/hot_detail2.jpg"]', FALSE),
        (2, "img/hot/hot2.jpg", "윌슨", "윌슨 핑크 테니스 볼", 18900, "6,100↓", null, 25000, '["img/detail/hot_detail2.jpg"]'),
        (3, "img/hot/hot3.jpg", "논포멀하우스", "Stretch cotton polo shirt (Pink)", 76000, '["img/detail/hot_detail3.jpg"]'),
        (4, "img/hot/hot4.jpg", "러브포티", "테니스 크루 캡 Skyblue", 39000, '["img/detail/hot_detail4.jpg"]'),
        (5, "img/hot/hot5.jpg", "르누쿠", "랩 반바지 Mustart", 239000, '["img/detail/hot_detail5.jpg"]'),
        (6, "img/hot/hot6.png", "데이브앤데이즈", "반짚업 맨투맨 Navy", 139000, '["img/detail/hot_detail6.jpg"]'),
        (7, "img/hot/hot7.jpg", "FCMM", "테니스 클럽 클래식 맨투맨 Melange gray", 41300, "17,700↓", null, 59000, '["img/detail/hot_detail7.jpg"]'),
        (8, "img/hot/hot8.jpg", "나이키", "손목밴드 스우시 2개입 Pink", 13300, null, "5%", 14000, '["img/detail/hot_detail8.jpg"]');
/*!40000 ALTER TABLE `products_hot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `best_women`
--

DROP TABLE IF EXISTS `best_women`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `best_women` (
  `pid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `imgUrl` VARCHAR(255) NOT NULL,
  `shop` VARCHAR(50) NOT NULL,
  `product` VARCHAR(100) NOT NULL,
  `price` INT UNSIGNED,
  `dc` VARCHAR(10) DEFAULT NULL,
  `per` VARCHAR(10) DEFAULT NULL,
  `nodc` INT UNSIGNED DEFAULT NULL,
  `subImg` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `best_women`
--

LOCK TABLES `best_women` WRITE;
/*!40000 ALTER TABLE `best_women` DISABLE KEYS */;
INSERT INTO `best_women` 
	VALUES 
		("img/best/woman1.jpg", "르노쿠", "직조 라벨 반레깅스 Green blue", 58000, '["img/detail/detail19.jpg"]'),
        ("img/best/woman2.jpg", "FCMM", "원포인트 아노락 Light green", 69300, "29,700↓", null, 99000, '["img/detail/detail20.jpg"]'),
        ("img/best/woman3.jpg", "FCMM", "원포인트 아노락 Light orange", 69300, "29,700↓", null, 99000, '["img/detail/detail21.jpg"]'),
        ("img/best/woman4.jpg", "르누쿠", "세라 단가라 집업 니트 Navy", 210000, "29,700↓", null, null, '["img/detail/detail22.jpg"]'),
        ("img/best/woman5.jpg", "컨셉트컬리지", "남여공용 올 블랙 풋볼 챔스 바시티 자켓", 319000, "29,700↓", null, null, '["img/detail/detail23.jpg"]'),
        ("img/best/woman6.jpg", "르누쿠", "아가일 니트 베스트 Burgundy", 189000, "29,700↓", null, null, '["img/detail/detail24.jpg"]'),
        ("img/best/woman7.jpg", "러브포티", "로고 티셔츠 Blue", 45000, "29,700↓", null, null, '["img/detail/detail25.jpg"]'),
        ("img/best/woman8.jpg", "논포멀하우스", "스너그 테니스 스커트 White", 128000, "29,700↓", null, null, '["img/detail/detail26.jpg"]'),
        ("img/best/woman9.jpg", "러브포티", "로고 스커트 Grey", 69000, "29,700↓", null, null, '["img/detail/detail27.jpg"]'),
        ("img/best/woman10.jpg", "러브포티", "스포티 원피스", 94000, "29,700↓", null, null, '["img/detail/detail28.jpg"]');
/*!40000 ALTER TABLE `best_women` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `best_tennis`
--

DROP TABLE IF EXISTS `best_tennis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `best_tennis` (
  `pid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `imgUrl` VARCHAR(255) NOT NULL,
  `shop` VARCHAR(50) NOT NULL,
  `product` VARCHAR(100) NOT NULL,
  `price` INT UNSIGNED,
  `dc` VARCHAR(10) DEFAULT NULL,
  `per` VARCHAR(10) DEFAULT NULL,
  `nodc` INT UNSIGNED DEFAULT NULL,
  `subImg` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `best_tennis`
--

LOCK TABLES `best_tennis` WRITE;
/*!40000 ALTER TABLE `best_tennis` DISABLE KEYS */;
INSERT INTO `best_tennis` 
	VALUES 
		("img/best/tennis1.jpg", "리치즈", "220g 초경량 장우산 Deep green", 75000, '["img/detail/detail12.jpg"]'),
		("img/best/tennis2.jpg", "리치즈", "220g 초경량 장우산 Deep green", 75000, '["img/detail/detail13.jpg"]'),
		("img/best/tennis3.jpg", "업스트림", "로고 댐프너", 20000, '["img/detail/detail15.jpg"]'),
		("img/best/tennis4.jpg", "윌슨", "윌슨 핑크 테니스볼", 18900, "6,100↓", null, 25000, '["img/detail/detail16.jpg"]'),
		("img/best/tennis5.jpg", "요넥스", "폴리투어 에어 200M PTA 1.25mm Sky blue", 112000, null, "20%", 140000, '["img/detail/detail16.jpg"]'),
		("img/best/tennis6.jpg", "리치즈", "220g 초경량 장우산 Navy", 75000, '["img/detail/detail14.jpg"]');
/*!40000 ALTER TABLE `best_tennis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `best_shoes`
--

DROP TABLE IF EXISTS `best_shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `best_shoes` (
  `pid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `imgUrl` VARCHAR(255) NOT NULL,
  `shop` VARCHAR(50) NOT NULL,
  `product` VARCHAR(100) NOT NULL,
  `price` INT UNSIGNED,
  `dc` VARCHAR(10) DEFAULT NULL,
  `per` VARCHAR(10) DEFAULT NULL,
  `nodc` INT UNSIGNED DEFAULT NULL,
  `subImg` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `best_shoes`
--

LOCK TABLES `best_shoes` WRITE;
/*!40000 ALTER TABLE `best_shoes` DISABLE KEYS */;
INSERT INTO `best_shoes` 
	VALUES 
		("img/best/shoes1.jpg", "골스튜디오", "그래비티 밸런스 PRO", 50150, "8,850↓", null, 59000, '["img/detail/detail46.jpg"]'),
		("img/best/shoes2.jpg", "나이키", "나이키 테니스화 리액트 베이퍼 NXT-CV0724-002", 189000, "8,850↓", null, 197850, '["img/detail/detail47.jpg"]');
/*!40000 ALTER TABLE `best_shoes` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `best_racquet`
--

DROP TABLE IF EXISTS `best_racquet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `best_racquet` (
  `pid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `imgUrl` VARCHAR(255) NOT NULL,
  `shop` VARCHAR(50) NOT NULL,
  `product` VARCHAR(100) NOT NULL,
  `price` INT UNSIGNED,
  `dc` VARCHAR(10) DEFAULT NULL,
  `per` VARCHAR(10) DEFAULT NULL,
  `nodc` INT UNSIGNED DEFAULT NULL,
  `subImg` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `best_racquet`
--

LOCK TABLES `best_racquet` WRITE;
/*!40000 ALTER TABLE `best_racquet` DISABLE KEYS */;
INSERT INTO `best_racquet` 
	VALUES 
		("img/best/racquet1.jpg", "요넥스", "2022 요넥스 라켓 이존 필(102sq/250g/16x18)", 234000, null, "10%", 260000, '["img/detail/detail17.jpg"]'),
		("img/best/shoes2.jpg", "나이키", "나이키 테니스화 리액트 베이퍼 NXT-CV0724-002", 189000, "8,850↓", null, 197850, '["img/detail/detail47.jpg"]');
/*!40000 ALTER TABLE `best_racquet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `order_code` varchar(40) NOT NULL,
  `id` varchar(50) NOT NULL,
  `status` enum('대기중','결제중','결제완료','취소','환불','만료') NOT NULL DEFAULT '대기중',
  `shipping_fee` int NOT NULL DEFAULT '0',
  `discount_amount` int NOT NULL DEFAULT '0',
  `total_amount` int NOT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `receiver_phone` varchar(50) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `odate` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `order_code` (`order_code`),
  KEY `fk_orders_member` (`id`),
  CONSTRAINT `fk_orders_member` FOREIGN KEY (`id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (55,'2b921fe6-f285-45da-8d8e-1044591cf95d','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:04:16'),(56,'4b7fbb11-e400-4ebb-b106-ab0e590ceb7a','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:17:37'),(57,'608b95da-7976-4226-8a40-fe59757ec76d','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:27:04'),(58,'f54408b7-a4d3-47f4-909e-8d2b692cafa9','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:33:50'),(59,'9790512b-f75d-4f2e-b8b1-9df9300a5db3','hong','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:45:07'),(60,'3b2a56c9-c16f-4f1b-b252-a4ad06006cc3','hong','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:46:31'),(61,'5d39bdaf-6455-43b4-bb2a-6f9ad8308281','hong','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 16:47:46'),(62,'70f232e1-680b-4c98-89d6-a6bdfde9db49','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-05 18:03:11'),(63,'9b3cbfcd-84d4-48cc-8020-bcaf3db7d69b','test','대기중',0,0,0,'홍길동','010-1234-1234','12345','서울시 강남구 역삼동','123','문앞','2025-12-08 17:07:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detailinfo`
--

DROP TABLE IF EXISTS `product_detailinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detailinfo` (
  `did` int NOT NULL AUTO_INCREMENT,
  `title_en` varchar(100) NOT NULL,
  `title_ko` varchar(100) NOT NULL,
  `pid` int NOT NULL,
  `list` json DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `fk_product_pid` (`pid`),
  CONSTRAINT `fk_product_pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detailinfo`
--

LOCK TABLES `product_detailinfo` WRITE;
/*!40000 ALTER TABLE `product_detailinfo` DISABLE KEYS */;
INSERT INTO `product_detailinfo` VALUES (1,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',1,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(2,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',2,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(3,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',3,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(4,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',4,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(5,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',5,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(6,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',6,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]'),(7,'FRENCH ZIP-UP HOODIE','프렌치 집업 후디',7,'[{\"color\": \"Grey\", \"title\": \"FABRIC\", \"material\": \"Cotton 100%\", \"description\": [\"원단의 컬러와 두께, 촉감은 모두 파사드패턴에서 기획되어 제작된 FACADE PATTERN 의 EXCLUSIVE 원단입니다.\", \"실켓 가공하여 일반적인 스웻 셔츠보다 표면이 깨끗하고 은은한 광택이 납니다.\", \"탄탄하게 편직 된 프렌치 테리 원단입니다.\", \"원단 수축을 최소화 하기 위해 덤블워싱과 텐타가공이 되었습니다.\", \"22년도 제품에서 보풀이 적고, 여름을 제외한 계절에 입기 좋게 좀 더 얇은 두께감으로 원단을 리뉴얼 했습니다.\"]}, {\"title\": \"DETAIL\", \"description\": [\"풀오버 집업과 앞 포켓이 있어 캐주얼하고 편안한 후디 자켓입니다.\", \"옆 라인에 립 원단으로 사이드 패널을 넣어 움직임이 편안합니다.\", \"탄탄한 원단으로 실루엣이 잘 유지되고 멋스럽습니다.\", \"단품으로 입기에도 부담이 없는 실용적인 아이템입니다\", \"클래식한 재킷이나 맥코트 이너로 매치하면 자연스럽고 무심한 스타일링을 연출할 수 있습니다.\", \"와이드 프렌치 스웻 팬츠와 SET-UP으로 착용 가능합니다.\"]}, {\"title\": \"MAKING\", \"description\": [\"지퍼와 후디 스트링은 아이보리 배색으로 포인트를 주었습니다.\", \"촘촘한 땀수로 봉제되어 옷매무새가 단정하고 깨끗합니다.\"]}, {\"type\": \"SMALL / MEDIUM\", \"title\": \"SIZE\", \"armhole\": \"26cm / 26.5cm\", \"hemLength\": \"47cm / 49cm\", \"chestWidth\": \"59cm / 61cm\", \"totalLength\": \"51cm / 52cm\", \"sleeveLength\": \"61cm / 62cm\", \"shoulderWidth\": \"48.5cm / 50cm\", \"sleeveHemWidth\": \"9.5cm / 10cm\"}, {\"size\": \"MEDIUM size 착용\", \"title\": \"MODEL SIZE\", \"height\": \"Height 175cm\"}, {\"title\": \"CARE INSTRUCTION\", \"description\": [\"전문가에게 드라이 클리닝 맡기는 것을 권장합니다.\", \"30도의 낮은온도로 세탁망에 넣어 세탁도 가능합니다.\", \"표백제 사용을 피해주세요.\", \"건조기 사용을 피해주세요.\", \"낮은 온도에 천을 덧대어 다림질 해주세요.\"]}]');
/*!40000 ALTER TABLE `product_detailinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_qna`
--

DROP TABLE IF EXISTS `product_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_qna` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `is_complete` tinyint(1) DEFAULT NULL,
  `is_lock` tinyint(1) DEFAULT NULL,
  `id` varchar(50) NOT NULL,
  `pid` int NOT NULL,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`qid`),
  KEY `fk_product_qna_pid` (`pid`),
  KEY `fk_member_id` (`id`),
  CONSTRAINT `fk_member_id` FOREIGN KEY (`id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_qna_pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_qna`
--

LOCK TABLES `product_qna` WRITE;
/*!40000 ALTER TABLE `product_qna` DISABLE KEYS */;
INSERT INTO `product_qna` VALUES (1,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',6,'2025-09-22 00:00:00'),(2,'반품문의','자켓 사이즈 반품 문의 드립니다.',1,1,'test',7,'2025-09-22 00:00:00'),(4,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',3,'2025-10-02 00:00:00'),(5,'사이즈문의','자켓 사이즈 문의 드립니다.',0,0,'test',2,'2025-10-03 00:00:00'),(6,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',1,'2025-10-10 00:00:00'),(7,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',6,'2025-09-22 00:00:00'),(8,'반품문의','자켓 사이즈 반품 문의 드립니다.',1,1,'test',7,'2025-09-22 00:00:00'),(10,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',3,'2025-10-02 00:00:00'),(11,'사이즈문의','자켓 사이즈 문의 드립니다.',0,0,'test',2,'2025-10-03 00:00:00'),(12,'사이즈문의','자켓 사이즈 문의 드립니다.',1,0,'hong',1,'2025-10-10 00:00:00');
/*!40000 ALTER TABLE `product_qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_return`
--

DROP TABLE IF EXISTS `product_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_return` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `list` json DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_return`
--

LOCK TABLES `product_return` WRITE;
/*!40000 ALTER TABLE `product_return` DISABLE KEYS */;
INSERT INTO `product_return` VALUES (1,'배송/교환/반품/AS 관련 유의사항','상품상세설명에 배송/교환/반품/취소 관련 안내가 기재된 경우 다음 안내사항보다 우선 적용됩니다.','[{\"title\": \"배송 정보\", \"infoList\": [\"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\"]}, {\"title\": \"취소/반품/교환 안내\", \"infoList\": [\"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\", \"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\", \"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\"]}, {\"title\": \"반품/교환 불가능한 경우\", \"infoList\": [\"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\", \"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\"]}, {\"title\": \"A/S 안내\", \"infoList\": [\"상품별로 상품 특성 및 배송지에 따라 배송유형 및 소요기간이 달라집니다.\", \"일부 주문상품 또는 예약상품의 경우 기본 배송일 외에 추가 배송 소요일이 발생될 수 있습니다.\", \"제주 및 도서산간 지역은 출고, 반품, 교환시 추가 배송비(항공, 도선료)가 부과 될 수 있습니다.\", \"상품의 배송비는 공급업체의 정책에 따라 다르오며 공휴일 및 휴일은 배송이 불가합니다.\"]}]');
/*!40000 ALTER TABLE `product_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `stype` varchar(30) NOT NULL,
  `hits` int DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support`
--

LOCK TABLES `support` WRITE;
/*!40000 ALTER TABLE `support` DISABLE KEYS */;
INSERT INTO `support` VALUES (1,'iOS 18 업데이트 관련 예매 서비스 이용안내','test','system',100,'2024-09-13 00:00:00'),(2,'iOS 18 업데이트 관련 예매 서비스 이용안내',NULL,'system',118692,'2024-09-13 00:00:00'),(3,'iOS 18 업데이트 관련 예매 서비스 이용안내',NULL,'system',118692,'2024-09-13 00:00:00'),(4,'iOS 18 업데이트 관련 예매 서비스 이용안내',NULL,'system',118692,'2024-09-13 00:00:00'),(5,'android 업데이트 관련 예매 서비스 이용안내','test','system',20000,'2025-05-13 00:00:00'),(6,'android 업데이트 관련 예매 서비스 이용안내',NULL,'system',20000,'2025-05-13 00:00:00'),(7,'android 업데이트 관련 예매 서비스 이용안내',NULL,'system',20000,'2025-05-13 00:00:00'),(8,'android 업데이트 관련 예매 서비스 이용안내',NULL,'theater',20000,'2025-05-13 00:00:00'),(9,'android 업데이트 관련 예매 서비스 이용안내',NULL,'event',20000,'2025-05-13 00:00:00'),(10,'android 업데이트 관련 예매 서비스 이용안내',NULL,'theater',20000,'2025-05-13 00:00:00'),(11,'android 업데이트 관련 예매 서비스 이용안내',NULL,'event',20000,'2025-05-13 00:00:00'),(12,'android 업데이트 관련 예매 서비스 이용안내',NULL,'theater',20000,'2025-05-13 00:00:00'),(13,'android 업데이트 관련 예매 서비스 이용안내',NULL,'event',20000,'2025-05-13 00:00:00'),(14,'android 업데이트 관련 예매 서비스 이용안내',NULL,'partner',20000,'2025-05-13 00:00:00'),(15,'android 업데이트 관련 예매 서비스 이용안내',NULL,'partner',20000,'2025-05-13 00:00:00'),(16,'android 업데이트 관련 예매 서비스 이용안내',NULL,'etc',20000,'2025-05-13 00:00:00'),(17,'android 업데이트 관련 예매 서비스 이용안내',NULL,'etc',20000,'2025-05-13 00:00:00'),(18,'android 업데이트 관련 예매 서비스 이용안내','test','system',20000,'2025-05-13 00:00:00');
/*!40000 ALTER TABLE `support` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-05 13:49:06
