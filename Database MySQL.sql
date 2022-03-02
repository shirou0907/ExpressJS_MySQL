-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: chdt
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `name` varchar(20) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('Apple','Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ có trụ sở chính tại Cupertino, California, chuyên thiết kế, phát triển và bán thiết bị điện tử tiêu dùng, phần mềm máy tính và các dịch vụ trực tuyến.'),('Asus','AsusTek Computer Inc. là một tập đoàn đa quốc gia có trụ sở chính tại Đài Loan, chuyên sản xuất các mặt hàng điện tử và phần cứng máy tính như máy tính để bàn, máy tính xách tay, netbook, điện thoại di động, thiết bị mạng, màn hình, bo mạch chủ, card đồ họa, ... '),('Huawei','Huawei, tên đầy đủ là Công ty trách nhiệm hữu hạn kỹ thuật Hoa Vi là một tập đoàn đa quốc gia về thiết bị mạng và viễn thông, có trụ sở chính tại Thâm Quyến, Quảng Đông, Trung Quốc.'),('LG','LG là một tập đoàn công nghiệp nặng đa quốc gia của Hàn Quốc, có trụ sở chính được đặt tại thành phố Seoul. Các sản phẩm chính của tập đoàn này bao gồm: điện tử tiêu dùng, thiết bị viễn thông, điện thoại thông minh, chất bán dẫn, Pin và các sản phẩm từ hóa chất, dầu khí.'),('Nokia','Nokia Corporation là một tập đoàn đa quốc gia có trụ sở tại Keilaniemi, Espoo, Phần Lan. Nokia tập trung vào các sản phẩm viễn thông không dây và cố định, với 129.746 nhân viên làm việc ở 120 quốc gia, bán sản phẩm ở hơn 150 quốc gia trên toàn cầu.'),('Oppo','OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.'),('Samsung','Samsung là một tập đoàn đa quốc gia khổng lồ của Hàn Quốc có trụ sở chính được đặt tại khu phức hợp Samsung Town, quận Seocho, thành phố Seoul. Tập đoàn này hiện sở hữu rất nhiều công ty con, chuỗi hệ thống bán hàng cùng các văn phòng đại diện trên phạm vi toàn cầu.'),('Sony','Công ty công nghiệp Sony, gọi tắt là SONY, là một tập đoàn đa quốc gia của Nhật Bản, với trụ sở chính nằm tại Minato, Tokyo, Nhật Bản, và là tập đoàn điện tử đứng thứ 5 thế giới với 81,64 tỉ USD.'),('Xiaomi','Xiaomi Inc. là một Tập đoàn sản xuất hàng điện tử Trung Quốc có trụ sở tại Thâm QuyếnXiaomi là nhà sản xuất điện thoại thông minh lớn thứ 3 thế giới; trong năm 2019, Xiaomi đã bán 70,8 triệu đơn vị và chiếm gần 5% thị trường điện thoại thông minh thế giới.');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `cart_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (63,3,19,3),(90,1,10,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_items_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,1),(2,1,2,1),(5,3,9,1),(6,3,20,1),(14,7,4,1),(15,7,6,1),(16,7,11,1),(17,8,9,1),(18,8,17,1),(19,9,10,1),(26,15,19,2),(27,16,2,1),(28,17,17,2),(32,21,6,1),(33,22,42,2),(34,23,43,1),(38,24,9,2),(39,25,11,1),(40,25,2,1),(41,25,6,1),(42,25,2,1);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` varchar(30) DEFAULT 'WAIT',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'WAIT','2021-10-03 13:56:26'),(3,2,'SUCCESS','2021-10-03 16:16:57'),(7,1,'SUCCESS','2021-10-04 03:16:41'),(8,1,'SUCCESS','2021-10-04 03:30:16'),(9,1,'SUCCESS','2021-10-04 03:47:55'),(15,3,'SUCCESS','2021-10-06 09:17:09'),(16,11,'SUCCESS','2021-10-07 09:48:11'),(17,12,'SUCCESS','2021-10-07 13:04:18'),(22,8,'SUCCESS','2021-11-02 03:05:11'),(23,1,'WAIT','2021-11-05 02:34:26'),(24,12,'SUCCESS','2021-12-08 04:10:30'),(25,2,'SUCCESS','2022-02-19 04:14:07');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderview`
--

DROP TABLE IF EXISTS `orderview`;
/*!50001 DROP VIEW IF EXISTS `orderview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderview` AS SELECT 
 1 AS `orderID`,
 1 AS `status`,
 1 AS `create_at`,
 1 AS `userID`,
 1 AS `full_name`,
 1 AS `userImg`,
 1 AS `phone_number`,
 1 AS `productID`,
 1 AS `name`,
 1 AS `productImg`,
 1 AS `price`,
 1 AS `orderItemsID`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img_url` varchar(2000) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(30) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDeleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `brand` (`brand`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `brand` (`name`),
  CONSTRAINT `products_chk_1` CHECK ((`amount` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'iPhone 12 Pro Max','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12-pro-max_1__7_1.jpg','Apple','Màn hình 6.7 inches Super Retina XDR,\r\nCon chip Apple A14 SoC 5nm, RAM 6GB mạnh mẽ,\r\nCụm 3 camera sau với độ phân giải 12MP,\r\nCamera trước 12MP hỗ trợ mở FaceiD cùng công nghệ chống nước IP68,\r\nViên pin liền cho thời lượng sử dụng lên đến cả ngày cùng công nghệ sạc nhanh',30000000,52,'Có hàng','2021-08-28 13:12:41','2021-10-04 09:58:15',0),(2,'iPhone 12 I Chính hãng VN/A','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_12_blue.png','Apple','Màn hình Super Retina OLED rộng 6.1 inch,\r\nThân máy nguyên khối cứng cáp & bền bỉ,\r\nCamera kép 12MP + 12MP ở mặt sau, hỗ trợ quay video 4K HDR ,\r\nCamera selfie 12MP ở mặt trước,\r\nVi xử lý Apple A14 5nm với RAM 4GB và dung lượng 64GB,\r\nHệ điều hành iOS 14, bảo mật Face ID an toàn,\r\nHey Siri – Trợ lý ảo tiện lợi',19000000,67,'Có hàng','2021-08-28 13:16:25','2022-02-19 11:14:07',0),(4,'Samsung Galaxy Note 20 Ultra 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/y/e/yellow_final_2.jpg','Samsung','Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội, \r\nThiết kế khung nhôm nguyên khối, mặt sau kính cường lực sang trọng,\r\nMàn hình 6.9 inch độ phân giải 2K 120Hz, cấu hình mạnh mẽ,\r\nTrang bị công nghệ 5G tương lai, tốc độ cao khi sử dụng dữ liệu,\r\nCamera sau 108MP zoom quang học lên đến 50X, camera trước 10MP,\r\nHỗ trợ sạc nhanh 45W qua USB Type C, pin dung lượng lớn 4500mAh\r\n',19999000,50,'Có hàng','2021-08-29 17:27:58','2021-11-01 11:00:10',0),(6,'SamSung S21 Ultra','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-s21-ultra-1_1.jpg','Samsung','Thiết kế nguyên khối, màn hình 6.8 inch tràn viền,\r\nHiệu năng siêu mạnh với chip Exynos 2100, RAM 12GB,\r\nCamera sau độ phân giải lên đến 108MP, camera trước 40MP,\r\nPin dung lượng 5000mAh sạc nhanh, hỗ trợ 5G tốc độ cao',26000000,28,'Hàng sắp về','2021-08-31 04:48:38','2022-02-19 11:14:07',0),(9,'Xiaomi Mi 11 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-xanhduong-600x600-600x600.jpg','Xiaomi','Điện thoại Xiaomi Mi 11 - Màn hình tràn viền ấn tượng cùng hiệu năng cao cấp\r\nMột trong những chiếc smartphone được các Mi Fan mong chờ nhất năm nay đó chính là Xiaomi Mi 11. Trang bị vi xử lý Snapdragon 888 hỗ trợ 5G với thiết kế màn hình tràn viền ấn tượng, đây sẽ là chiếc flagship nổi bật của Xiaomi trong năm nay.',15200000,98,'Có hàng','2021-08-31 05:24:52','2021-12-08 11:10:30',0),(10,'ASUS ROG Phone 5 chính hãng','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/s/asus-rog-phone-5_0002_gsmarena_001.jpg','Asus','Đánh giá Asus ROG Phone 5 (16GB/256GB) - Hiệu năng vô đối\r\nVới những game thủ chuyên nghiệp mong muốn sở hữu một chiếc smartphone gaming có hiệu năng \"siêu cấp\" cho những tựa game MOBA hoặc sinh tồn đình đám hiện nay thì ROG Phone 5 sẽ là chiếc điện thoại có thể giúp bạn thoải mái chiến game mượt mà với cấu hình cực đại.',20990000,21,'Có hàng','2021-08-31 05:34:47','2021-10-27 10:45:59',0),(11,'Samsung Galaxy Note 20 Ultra','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/b/l/black_final.jpg','Samsung','Samsung Note 20 Ultra: Thiết kế sang trọng và nhiều công nghệ cực tốt\r\nSamsung là gã khổng lồ công nghệ cực kỳ nổi tiếng đến từ đất nước Hàn Quốc, mỗi chiếc điện thoại của hãng đều mang thiết kế hiện đại, sang trọng đi kèm với đa dạng công nghệ cực kỳ nổi bật. Note 20 Ultra là một trong những chiếc smartphone nổi tiếng và đang được nhiều người quan tâm, đón nhận. Samsung hứa hẹn sẽ chiều lòng khách hàng với thiết kế lộng lẫy, cùng với vô vàng công nghệ, chip xử lý mới mẻ, thật hiện đại. Ngoài ra, bạn cũng có thể tham khảo thêm Samsung Galaxy Note 20 Ultra 5G để tận hưởng tốc độ mạng di động mạnh nhất hiện nay.',21090000,19,'Liên hệ','2021-08-31 05:38:01','2022-02-19 11:14:07',0),(12,'Nubia Red Magic 6','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/red-magic-6-1.jpg','Nokia','Điện thoại Nubia Red Magic 6 – Smartphone hiệu năng mạnh  \r\nThêm một cái tên vàng trong làng gaming đó chính là Nubia Red. Tuy điện thoại này là cái tên còn khá xa lạ nhưng những gì được trang bị cho máy từ thiết kế tới hiệu năng đều khiến cho người dùng không thể ấn tượng hơn từ lần trải nghiệm đầu tiên. Và phiên bản mới nhất của hãng được mang tên Nubia Red Magic 6. Ngoài ra, bạn cũng có thể tham khảo thêm Nubia Red Magic 6R với mức giá hấp dẫn hơn.',15990000,7,'Có hàng','2021-08-31 05:45:17','2021-10-26 11:00:42',0),(13,'Xiaomi Redmi Note 10 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-note-10-5g.jpg','Xiaomi','Đánh giá Xiaomi Redmi Note 10 5G – Smartphone tầm trung, hiệu năng cao cấp\r\nThuộc phân khúc tầm trung nhưng Redmi Note 10 5G lại sở hữu cấu hình cũng như các tính năng không hề thua kém bất kỳ dòng smartphone cao cấp nào, là một mẫu smartphone có kết nối 5G trong một tầm giá hấp dẫn ở thời điểm hiện tại.',5000000,80,'Có hàng','2021-08-31 15:00:05','2021-10-31 19:46:01',0),(15,'Samsung Galaxy A72','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a72-30.jpg','Samsung','Điện thoại Samsung Galaxy A72 - Thiết kế ấn tượng, hiệu năng mạnh mẽ\r\nVừa mới đây Samsung vừa cho ra mắt chiếc smartphone Samsung Galaxy A72 thuộc dòng A của hãng. Có thể nói đây là con át chủ bài của thương hiệu này trong năm 2020 bởi những nâng cấp vượt trội từ thiết kế cho đến camera lẫn hiệu năng. Nếu bạn đang tìm kiếm cho mình một chiếc điện thoại Samsung mới thì có thể đây là sự lựa chọn phù hợp dành cho bạn.\r\n\r\nNgoài ra, bạn có thể tham khảo thêm điện thoại Samsung Galaxy Z Fold 3 5G sở hữu những công nghệ hiện đại và cấu hình mạnh mẽ nhất hiện nay.',9550000,80,'Có hàng','2021-09-03 11:33:02','2021-10-04 20:53:09',0),(16,'OPPO Reno6 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/reno6-1_1.jpg','Oppo','Đánh giá OPPO Reno6 5G - Nhỏ gọn, mạnh mẽ với chipset MediaTek\r\nTiếp theo phần ra mắt của series Reno 5 thì Oppo lại chuẩn bị trình làng mẫu smartphone mới nhất mang tên Reno6. Thiết kế sang trọng cấu hình mạnh mẽ với chipset Dimensity 900, OPPO Reno6 5G sẽ mang đến cho người dùng trải nghiệm mượt mà.',12900000,45,'Có hàng','2021-09-03 11:35:37','2021-10-04 09:58:29',0),(17,'Xiaomi POCO X3 NFC 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-poco-x3_2_.jpg','Xiaomi','Điện thoại Xiaomi POCO X3: Thiết kế đỉnh cao – cấu hình cao cấp\r\nBạn là một Mifan hay là một người dùng chuyên sử dụng điện thoại cho các việc giải trí lẫn chơi game một cách lẫn lộn. Bạn mong muốn tìm kiếm một chiếc điện thoại có đầy đủ các tính năng giúp bạn có thể vừa giải trí, vừa làm việc và phải đạt được tiêu chí là bắt mắt và đẹp. Với Xiaomi POCO X3 (hay Pocophone X3) có thể đáp ứng được các nhu cầu của bạn nêu trên. Ngoài ra, bạn cũng có thể tham khảo thêm điện thoại POCO X3 Pro vừa được ra mắt với cấu hình, camera được nâng cấp.',5900000,78,'Hàng sắp về','2021-09-03 11:36:59','2021-10-07 20:04:18',0),(18,'ASUS ROG Phone 3 Chính hãng','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/o/rog_3.jpg','Asus','Điện thoại Asus ROG Phone 3 – Smartphone chuyên game sức mạnh vô đối\r\nROG Phone 3 mang trên mình những công nghệ tiên tiến và thiết kế hầm hố nhất. Với sức mạnh vô đối cùng thời lượng pin khủng, chiếc smartphone gaming của Asus mới ra mắt đã để lại ấn tượng sâu sắc trong lòng người hâm mộ. Ngoài ra, bạn cũng có thể tham khảo thêm điện thoại Asus Rog Phone 5 với cấu hình mạnh mẽ hơn.\r\n\r\nHai thẻ sim, hỗ trợ 5G\r\nĐiện thoại Asus ROG Phone 3 được trang bị 2 sim Nano hỗ trợ mạng 2G/3G/4G/ 5G. Tuy nhiên chế độ 5G không thể sử dụng cùng lúc ở hai sim. Người dùng muốn sử dụng 5G cần sử dụng tại các địa điểm có kích hoạt mạng 5G.',19500000,122,'Có hàng','2021-09-03 11:37:51','2021-10-04 10:56:01',0),(19,'Nokia 3.4','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/o/nokia-34_1_.jpg','Nokia','Điện thoại Nokia 3.4 – Smartphone tầm trung với dung lượng pin lớn\r\nHiện nay, nhu cầu sử dụng một chiếc smartphone không chỉ có ở những người trẻ, mà hầu như đến từ mọi lứa tuổi. Nhưng mỗi người sẽ có những yêu cầu khác nhau về một chiếc smartphone ưng ý. Nếu bạn đang có mong muốn tìm kiếm một chiếc smartphone tầm trung nhưng vẫn có khả năng hoạt động ổn định và dung lượng pin lớn, thì Nokia 3.4 chính là ứng cử viên cực kì phù hợp với những gì mà bạn mong muốn ở một chiếc smartphone.',2590000,16,'Có hàng','2021-09-03 11:41:05','2021-10-06 16:17:09',0),(20,'Redmi K40','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-k40.jpg','Xiaomi','Redmi K40 – Điện thoại với hiệu năng vượt trội\r\nNhững sản phẩm mới ra mắt của Xiaomi chưa bao giờ hết hot và thậm chí nó còn trở thành một trào lưu khiến cho bất kỳ ai cũng thèm thuồng. Và gần đây nhất là sự xuất hiện của chiếc điện thoại Redmi K40 sở hữu con chip mới nhất từ Qualcomn đảm bảo sẽ giúp hiệu năng của nó đạt đến tầm cao mới.\r\n\r\nThiết kế quen thuộc, màn hình Super AMOLED, FullHD+\r\nLại là vẻ ngoài quen thuộc với kiểu dáng máy nguyên khối được hoàn thiện đến từ hai mặt kính cường lực cao cấp, hạn chế tình trạng rơi vỡ thường thấy. Do được định vị ở phân khúc cao nên nó có thiết kế phủ nhám mờ ở phần mặt lưng và các cạnh được bo cong ở camera ở phía sau. Phần camera được làm hơi đặc biệt với thiết kế đường tròn đồng tâm sáng bóng.',8390000,20,'Hàng sắp về','2021-09-03 11:42:22','2021-10-03 23:16:57',0),(21,'Samsung Galaxy A03s','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a03s-600x600_1.jpg','Samsung','Đánh giá Samsung Galaxy A03s - Năng động và mạnh mẽ\r\nVới người dùng công nghệ ưa chuộng chiếc smartphone đơn giản, mang vẻ ngoài năng động và hỗ trợ đầy đủ tính năng thiết yếu, Samsung A03s sẽ là sản phẩm điện thoại phù hợp cho nhu cầu ấy.\r\n\r\nKiểu dáng thon gọn nhẹ tay, màn hình 6.5 inch đẹp mắt\r\nĐiện thoại Samsung Galaxy A03s tiếp nối phong cách thiết kế năng động đã làm nên thành công của Galaxy A02s trước đó. Chiếc máy mang kiểu dáng tinh giản, thiết kế thon gọn với nhiều lựa chọn màu sắc phù hợp với sở thích của bạn. Được chế tác với những đường nét mềm mại cùng trọng lượng nhẹ, A03s sẽ luôn đồng hành trên tay bạn trong cuộc sống hiện đại.',3540000,125,'Có hàng','2021-09-03 11:43:36','2021-10-26 11:35:11',1),(22,'Xiaomi Redmi Note 10S','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10s-xanh-1.jpg','Xiaomi','Đánh giá Xiaomi Redmi Note 10S - Hiệu năng mạnh mẽ, thời lượng pin lâu\r\nRedmi Note 10S được xem là phiên bản cao cấp của Redmi Note 10 và cũng là một phiên bản tối giản của phiên bản Pro. Máy được trang bị màn hình sắc nét, hiệu năng mạnh mẽ cùng hệ thống camera chất lượng, đây chính là \"ngôi sao\" mới nhất trong thị trường smartphone phân khúc tầm trung 2021.\r\n\r\n',6090000,25,'Có hàng','2021-10-08 13:10:43','2021-10-08 20:10:43',0),(23,'Samsung Galaxy A22 4G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/2/a22-2.jpg','Samsung','Điện thoại Samsung Galaxy A22 - Màn hình 6.4 inch, bộ tứ camera ấn tượng\r\nSamsung A22 ra mắt tiếp nối sự thành công của người tiền nhiệm để lại với việc trang bị một màn hình lớn cùng bộ tứ camera mạnh mẽ trong phân khúc smartphone giá ré. Phiên bản Galaxy A năm nay là sự nâng cấp về mặt hiệu năng giúp mang đến những trải nghiệm tốt hơn cho người dùng.\r\n\r\nThiết kế cứng cáp, mặt lưng gradient trẻ trung và năng động\r\nĐiện thoại Galaxy A22 thiết kế với khung viền và mặt lưng là từ nhựa ngoài việc giúp giảm thành cho sản phẩm thì còn tăng độ bền khi máy xảy ra va chạm hay rơi rớt.',5590000,80,'Có hàng','2021-10-08 13:11:21','2021-10-08 20:11:21',0),(24,'Samsung Galaxy A32','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a32-1.jpg','Samsung','Đánh giá Samsung Galaxy A32 - Điện thoại màn hình lớn, cấu hình cao\r\nTrong phân khúc smartphone tầm trung hiện nay đã có nhiều sản phẩm tích hợp nhiều công nghệ tiên tiến, và Samsung A32 cũng không ngoại lệ. Sở hữu màn hình lớn, camera 48 MP cùng vi xử lý hiệu năng cao, đây sẽ là chiếc smartphone phù hợp với mọi người dùng.\r\n\r\nThiết kế thời thượng cùng màn hình FullHD+ viền mỏng ấn tượng\r\nGalaxy A32 mang thân máy vuông vức thời thượng cùng màu đen bắt mắt. Tổng kích thước thân máy mỏng chỉ 9.1mm và có trọng lượng 205g, giúp cầm nắm dễ dàng & thuận tiện cho mọi tác vụ.',6500000,1024,'Có hàng','2021-10-08 13:12:01','2021-10-08 20:12:01',0),(25,'Samsung Galaxy S20 FE 256GB (Fan Edition)','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-20-fe_4_.jpg','Samsung','Điện thoại Samsung Galaxy S20 FE - Phiên bản đặc biệt dành cho fan Samsung\r\nSamsung S20 FE là chiếc điện thoại sắp được ra mắt từ Samsung, với chữ FE đằng sau tên gọi của máy có nghĩa là Fan Edition. Đây là dòng điện thoại ra mắt như để gửi lời tri ân đến các fan trung thành đã và đang sử dụng các sản phẩm của Samsung. Với số lượng sản phẩm được giới hạn và chỉ mở bán trong thời gian ngắn.  \r\n\r\nMàn hình Super Amoled 6.5 inch, FullHD, công nghệ HDR10+, tần số quét 120Hz\r\nĐược định hướng vẫn là sản phẩm ở phân khúc cao cấp, Galaxy S20 Fan Edition được trang bị tấm nền Super Amoled cao cấp, kích thước màn hình lớn lên đến 6.5 inches, màn hình độ phân giải FullHD giúp hình ảnh hiển thị trên chiếc điện thoại này là vô cùng sắc nét và rực rỡ.',11500000,54,'Có hàng','2021-10-08 13:12:37','2022-02-19 11:16:18',0),(26,'Samsung Galaxy Z Flip3 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/8/0/800x800_flip_3_lavender.png','Samsung','Samsung Galaxy Z Flip 3 (5G) – Điện thoại màn hình gập độc đáo\r\nBên cạnh các siêu phẩm của dòng S hay dòng Note thì Samsung còn trình làng một dòng điện thoại siêu đặc biệt. Và cho đến 2021 hãng đã phát triển đến thế hệ thứ ba, với tên gọi Galaxy Z Flip 3. Ngoài sở hữu thiết kế gập độc đáo thì nó còn sở hữu tính năng gì mới hãy cùng chúng tôi xem qua bài viết bên dưới đây nhé.\r\n\r\nDự kiến, Z Flip 3 5G sẽ được Samsung trình làng cùng với điện thoại Galaxy Z Fold 3 5G tại sự kiện ra mắt trực tuyến Unpacked diễn ra vào ngày 11/8 tới đây.\r\n\r\nThiết kế đậm chất đặc trưng, màn hình dẻo tiên phong\r\nSamsung Galaxy Z Flip 3 sở hữu một phong cách thiết kế gập vỏ sò cùng khung nhôm aluminum chắc chắn. Khi gấp gọn, điện thoại chỉ có kích thước 4.2 inch vô cùng nhỏ gọn nhưng mở râ lại là một chiếc điện thoại thông minh màn hình lớn mang lại khả năng khám phá không giới hạn. Màn hình ngoài của thiết bị được trang bị mặt kính Gorilla Glass siêu bền bỉ.',25900000,40,'Có hàng','2021-10-08 13:13:18','2021-10-08 20:13:18',0),(27,'iPhone 11 I Chính hãng VN/A','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/_/0/_0005_layer_6.jpg','Apple','Đánh giá iPhone 11  – Camera nâng cấp, màu sắc trẻ trung\r\niPhone 11 là model có nhiều màu sắc nhất và có giá rẻ nhất trong bộ 3 iPhone 11 series được Apple ra mắt trong năm 2019. Bên cạnh đó, cấu hình máy cũng được nâng cấp đặc biệt về cụm camera sau và Face ID, viên pin dung lượng lớn hơn.\r\n\r\nĐa dạng sự lựa chọn với 6 phiên bản màu sắc\r\nĐiểm nổi bật của iPhone 11 2019 đó là bên cạnh hai phiên bản đen và trắng quen thuộc thì máy còn có thêm bốn phiên bản khác đó là tím, vàng, xanh lá, đỏ. Với tất cả các phiên bản, bao gồm cả điện thoại iPhone 12 sắp ra mắt thì Apple đều thiết kế cạnh bên trùng màu với thân máy, tạo nên một thể thống nhất.',11490000,75,'Có hàng','2021-10-08 13:14:01','2021-10-08 20:14:01',0),(28,'iPhone 13 Pro Max | Chính hãng VN/A','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5_4.jpg','Apple','Đánh giá iPhone 13 Pro Max – Hiệu năng vô đối, camera cực đỉnh\r\niPhone 12 ra mắt cách đây chưa lâu, thì những tin đồn mới nhất về iPhone 13 Pro Max đã khiến bao tín đồ công nghệ ngóng chờ. Cụm camera được nâng cấp, màu sắc mới, đặc biệt là màn hình 120Hz với phần notch được làm nhỏ gọn hơn chính là những điểm làm cho thu hút mọi sự chú ý trong năm nay.\r\n\r\nThiết kế cạnh phẳng sang trọng, nhiều màu sắc nổi bật\r\nDòng iPhone 12 được Apple áp dụng ngôn ngữ thiết kế tương tự iPhone 12 năm ngoái với phần cạnh viền máy được dát phẳng sang trọng cùng bốn góc được làm bo cong nhẹ, đây có thể được xem là một thiết kế hoài cổ từ dòng iPhone 5 trước đó. Vì thế mà iPhone 13 Pro Max nói riêng, cũng như dòng điện thoại iPhone 13 nói chung, cũng sẽ đi theo ngôn ngữ thiết kế này.\r\n\r\nĐiểm thay đổi lớn trên 13 Pro Max có thể là phần nhô của cụm camera. Trong khi đó mặt trước của thiết bị được phủ một lớp Ceramic Shield, loại vật liệu cứng hơn bất kỳ loại kính điện thoại thông minh nào hiện có trên thị trường, giúp bảo vệ màn hình iPhone hiệu quả.',32490000,25,'Có hàng','2021-10-08 13:14:42','2021-10-08 20:14:42',0),(29,'iPhone 13 | Chính hãng VN/A','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-13-03.jpg','Apple','Đánh giá iPhone 13 - Flagship được mong chờ năm 2021\r\nCuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13. Vậy iP 13 sẽ có những gì, hãy tìm hiểu ngay sau đây.\r\n\r\nThiết kế với nhiều đột phá\r\nVề kích thước, iPhone 13 sẽ có 4 phiên bản khác nhau và kích thước không đổi so với series iPhone 12 hiện tại. Nếu iPhone 12 có sự thay đổi trong thiết kế từ góc cạnh bo tròn (Thiết kế được duy trì từ thời iPhone 6 đến iPhone 11 Pro Max) sang thiết kế vuông vắn (đã từng có mặt trên iPhone 4 đến iPhone 5S, SE).\r\n\r\nThì trên điện thoại iPhone 13 vẫn được duy trì một thiết kế tương tự. Máy vẫn có phiên bản khung viền thép, một số phiên bản khung nhôm cùng mặt lưng kính. Tương tự năm ngoái, Apple cũng sẽ cho ra mắt 4 phiên bản là iPhone 13, 13 mini, 13 Pro và 13 Pro Max.',23490000,45,'Có hàng','2021-10-08 13:15:24','2021-10-08 20:15:24',0),(30,'Oppo A15s','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/p/oppo-a15s-1_3.jpg','Oppo','Điện thoại OPPO A15s - Smartphone đa chức năng với giá rẻ cho mọi người dùng\r\nLà một biến thể của \"người anh em\"  điện thoại Oppo A15, điện thoại OPPO A15s có cấu hình ấn tượng trong tầm giá đủ để người dùng thỏa sức làm việc & giải trí khi cần thiết. Giờ đây bạn có thể sở hữu OPPO A15s với giá tốt tại hệ thống CellphoneS.\r\n\r\nVẻ ngoài cá tính, màn hình 6.52 inch HD+ giải trí thoải mái\r\nĐiện thoại OPPO A15s là một phiên bản khác của OPPO A15 trước đó với một số nâng cấp nhằm tăng cường trải nghiệm sử dụng. Thiết kế của máy vẫn mang vẻ ngoài cá tính, mỏng chỉ 7.9mm với mặt kính cường lực tạo nét sang trọng cho chiếc máy. OPPO A15s vẫn giữ nguyên jack cắm tai nghe 3.5mm cho người dùng tai nghe có dây truyền thống.',3790000,150,'Có hàng','2021-10-08 13:16:02','2021-10-08 20:16:02',0),(31,'OPPO Find X3 Pro 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/p/oppo-find-x3-pro-5g-2_2.jpg','Oppo','Đánh giá Oppo Find X3 Pro 5G – Hiệu năng dẫn đầu, màn hình chiếm trọn\r\nFind X là dòng sản phẩm được OPPO chăm chút nhiều nhất, đặc biệt là những công nghệ hoàn toàn hiện đại. Bằng chứng Find X3 Pro mang đến vẻ ngoài mới, camera selfie được ẩn dưới màn hình, cùng cấu hình mạnh mẽ đến từ chip Snapdragon 865.\r\n\r\nHoàn thiện nguyên khối, màn hình 2K rực rỡ\r\nĐiện thoại Oppo Find X3 Pro 5G gây ấn tượng mạnh bởi thiết kế sang trọng với các góc được làm bo cong. Bên cạnh đó, toàn bộ thân máy được làm từ nhôm nguyên khối đem đến khả năng chống chọi lực va đập hiệu quả.',24150000,37,'Có hàng','2021-10-08 13:16:45','2021-10-08 20:16:45',0),(32,'Oppo A54','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a54-4g-black-600x600.jpg','Oppo','Đánh giá điện thoại Oppo A54 – Thiết kế mặt lưng ấn tượng, hỗ trợ kháng nước IPX4 trong tầm giá\r\nOppo A54 là dòng máy vừa được ra mắt nối tiếp mẫu A94 trước đó. Với thiết kế đặc trưng là cụm camere hình vuông, ở phiên bản lần này máy mang đến hiệu năng mạnh mẽ hơn với vi xử lý được nâng cấp cùng khả năng kháng nước IPX4 mà ít sản phẩm trong tầm giá có thể mang đến.\r\n\r\nThiết kế thu hút với màu sắc mặt lưng độc đáo\r\nĐiện thoại Oppo A54 sở hữu thiết kế mặt lưng tương tự đàn anh của mình là Oppo A93 với cụm camera hình vuông, thiết kế máy bo cong tạo cảm giác dễ chịu khi cầm nắm và sử dụng.',4390000,25,'Có hàng','2021-10-08 13:18:06','2021-10-08 20:18:06',0),(33,'Oppo A73','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/p/oppo-a73_2_.jpg','Oppo','Điện thoại Oppo A73 - Hiệu năng cực đỉnh, dẫn đầu mọi trận game\r\nSmartphone là sản phẩm không thể thiếu với bất kỳ ai hiện nay. Nếu bạn đang tìm kiếm một chiếc điện thoại pin trâu đi kèm theo đó là những đặc điểm nổi bật như hiệu năng vượt trội, camera chuyên nghiệp với nhiều tính năng khác nhau, cùng với đó là sạc nhanh thì Oppo A73 sẽ là sản phẩm hoàn hảo thuộc phân khúc tầm trung giúp mang đến những trải nghiệm tuyệt vời cho người sử dụng.\r\n\r\nNgoài ra, bạn cũng có thể tham khảo thêm điện thoại Oppo A74 với nhiều nâng cấp về cấu hình, camera đang được bán tại CellphoneS với mức giá hấp dẫn.\r\n\r\nThiết kế nhỏ gọn, khơi nguồn sáng tạo\r\nĐiện thoại Oppo A73 được thiết kế vô cùng nhỏ gọn với các góc cạnh được bo tròn mềm mại. Thiết kế mang đến cảm giác cầm nắm nhẹ nhàng và vô cùng thoải mái trong suốt quá trình sử dụng.',5190000,55,'Có hàng','2021-10-08 13:18:43','2021-10-08 20:18:43',0),(34,'Oppo Reno5','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/p/oppo-reno-5_3_.jpg','Oppo','Điện thoại Oppo Reno 5 – Thiết kế hiện đại sang trọng\r\nSản phẩm mới nhất trong series OPPO Reno của hãng điện thoại OPPO chính là OPPO Reno 5. Chiếc điện thoại với nhiều kế thừa từ người tiền nhiệm Reno với thiết kế hiện đại, cấu hình cao hứa hẹn mang đến những trải nghiệm dùng ấn tượng. Ngoài ra, bạn cũng có thể tham khảo thêm điện thoại OPPO Reno 6 sắp ra mắt với nhiều nâng cấp về cấu hình cũng như camera.\r\n\r\nMàn hình nốt ruồi 6.43 inch Full HD+ tràn viền, mặt lưng kim loại sang trọng\r\nOPPO Reno thế hệ thứ 5 sở hữu màn hình cảm ứng điện dung với thiết kế nốt ruồi 6.43 inch cùng độ phân giải Full HD+ 1080 x 2400 pixel và độ sáng lên tới 430nit mang lại hình ảnh trung thực và chính xác. Máy cũng được thiết kế các góc cạnh màn hình tràn viền tạo sự sang trọng.',7790000,77,'Có hàng','2021-10-08 13:19:13','2021-10-08 20:19:13',0),(35,'OPPO Reno6 Z 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/p/oppo_reno6.jpg','Oppo','Đánh giá Oppo Reno6 Z 5G – Smartphone mạnh mẽ với thiết kế sang trọng\r\nTiếp nối sự thành công của Reno5 Series, Oppo tiếp tục mang đến cho người dùng dòng sản phẩm mới mang tên Oppo Reno6 với nhiều nâng cấp đáng giá. Trong series lần này, người dùng sẽ thấy vô cùng ngạc nhiên khi xuất hiện tới 4 phiên bản. Sự có mặt của Oppo Reno6 Z 5G trong lần ra mắt này sẽ thu hút được đông đảo người chú ý bởi hiệu năng cực đỉnh để mang đến những trải nghiệm đỉnh cao.\r\n\r\nThiết kế thời thượng, đẳng cấp vượt trội\r\nĐiện thoại Reno6 Z 5G sở hữu thiết kế vô cùng thời thượng. Các đường nét, chi tiết trên máy được trau chuốt hoàn hảo và cực kỳ hấp dẫn. Các khung viền bo cong uyển chuyển, mềm mại mang đến cho người dùng cảm giác êm tay khi cầm nắm. Ngoài ra, kích thước tổng thể của máy rất nhỏ gọn và thuận tiện để người dùng mang theo bên mình mọi nơi.',9590000,33,'Có hàng','2021-10-08 13:20:01','2021-10-08 20:20:01',0),(36,'OnePlus 8T 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/o/n/oneplus-8t-600x600-1-200x200.jpg','Sony','Đánh giá OnePlus 8T 5G - Hiệu năng mạnh mẽ, sạc siêu nhanh\r\nOnePlus 8T 5G là chiếc flagship mới nhất của OnePlus. Máy gây ấn tượng với người dùng không chỉ bởi cấu hình mạnh mẽ mà còn là tốc độ sạc siêu nhanh. Chắc chắn đây là mẫu điện thoại mà rất nhiều người mong muốn có thể sở hữu.\r\n\r\nThiết kế cực sang, chuẩn smartphone cao cấp\r\nOnePlus 8T 5G là chiếc smartphone sở hữu thiết kế cực sang trọng và trẻ trung mang chuẩn phong cách smartphone cao cấp. Mặt lưng của máy được hoàn thiện bằng kính cường lực Corning Gorilla Glass giúp hạn chế được hỏng hóc do va đập hoặc rơi trong quá trình sử dụng.',15999000,60,'Có hàng','2021-10-08 14:50:30','2021-10-08 21:50:30',0),(37,'OnePlus Nord CE 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/o/n/one_plus-1_2.jpg','Sony','Tự tin chiến mọi tựa game - Chip Snapdragon 750G, 8GB RAM, hỗ trợ 5G mượt mà\r\nKhông gian hiển thị thoải mái, chuyển động mượt - Màn hình 6.43 inch Full HD+, 90 Hz\r\nCamera chụp ảnh ấn tượng - Bộ 3 camera sau 64 MP, cảm biến AI hiện đại, hỗ trợ HDR\r\nSử dụng suốt dài ngày - Dung lượng pin 4500mAh, sạc nhanh Warp Charge 30T Plus',7450000,30,'Hàng sắp về','2021-10-08 14:51:56','2021-10-08 21:51:56',0),(38,'OnePlus 9 Pro','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/o/n/oneplus-9_1.jpg','Sony','Điện thoại OnePlus 9 Pro - Smartphone tầm trung với cấu hình cao cấp\r\nSự xuất hiện của OnePlus 9 đã làm cho phân khúc trung cấp trở nên sôi động nhờ sở hữu cấu hình ấn tượng. Vì thế, sản phẩm mới nhất mang tên OnePlus 9 Pro với cấu hình nâng cấp đáng kể chắc chắn sẽ gây ấn tượng với giới công nghệ.\r\n\r\nThiết kế nguyên khối cứng cáp, màn hình 6.78 inch viền siêu mỏng giải trí bắt mắt\r\nĐiện thoại OnePlus 9 Pro được thiết kế mang lại vẻ ngoài sang trọng và tinh tế không thua gì các dòng smartphone cao cấp, với hai tùy chọn màu sắc Đen và Vàng Gold sẽ gây chú ý ở mọi góc nhìn. OnePlus 9 Pro có phần khung làm từ nhôm nguyên khối cùng lớp kính Corning Gorilla Glass bao phủ giúp mang đến độ cứng cáp dài lâu cho chiếc máy.',18999000,20,'Liên hệ','2021-10-08 14:52:41','2021-10-08 21:52:41',0),(39,'Huawei Nova 9','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-nova-9.jpg','Huawei','Đánh giá điện thoại Huawei Nova 9 – Thiết kế cao cấp trên một thiết bị tầm trung\r\nHuawei Nova 9 là dòng sản phẩm tiếp nối sự thành công của phiên bản Nova 7 trước đó. Ở phiên bản lần này, Huawei mang đến cho người dùng thiết kế cao cấp hơn cùng kết nối 5G siêu tốc nhờ tích hợp vi xử lý Kirin 985 cao cấp của hãng.\r\n\r\nThiết kế đẳng cấp với chất liệu kính mới ở mặt lưng\r\nỞ mỗi thế hệ điện thoại Huawei Nova đều mang đếng một thiết kế mới. Lần này, Huawei Nova 9 truyền cảm hứng đến người dùng với một thiêt kế màn hình cong tràn ấn tượng. Công nghệ phủ màu Xingsha Magic mang đến vẻ ngoài lộng lẫy hơn ở mặt lưng của máy.',26990000,10,'Hàng sắp về','2021-10-08 14:53:51','2021-10-08 21:53:51',0),(40,'Huawei Mate 40E','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-mate-40e.jpg','Huawei','Đánh giá điện thoại Huawei Nova 9 – Thiết kế cao cấp trên một thiết bị tầm trung\r\nHuawei Nova 9 là dòng sản phẩm tiếp nối sự thành công của phiên bản Nova 7 trước đó. Ở phiên bản lần này, Huawei mang đến cho người dùng thiết kế cao cấp hơn cùng kết nối 5G siêu tốc nhờ tích hợp vi xử lý Kirin 985 cao cấp của hãng.\r\n\r\nThiết kế đẳng cấp với chất liệu kính mới ở mặt lưng\r\nỞ mỗi thế hệ điện thoại Huawei Nova đều mang đếng một thiết kế mới. Lần này, Huawei Nova 9 truyền cảm hứng đến người dùng với một thiêt kế màn hình cong tràn ấn tượng. Công nghệ phủ màu Xingsha Magic mang đến vẻ ngoài lộng lẫy hơn ở mặt lưng của máy.',17860000,10,'Có hàng','2021-10-08 14:54:56','2021-10-08 21:54:56',0),(41,'Huawei Mate 40','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-mate-40_1_.jpg','Huawei','Điện thoại Huawei Mate 40 - \"Siêu phẩm\" Huawei cuối cùng chạy chip Kirin\r\nKhi nói về các dòng smartphone cao cấp, Huawei luôn là cái tên không thể bỏ qua bởi hãng luôn phát triển những chiếc smartphone sang trọng & mạnh mẽ với giá phải chăng. Vừa qua, hãng đã xác nhận sự hiện diện của Huawei Mate 40 - chiếc flagship của Huawei với cụm camera \"cực đại\" và cũng là điện thoại Huawei cuối cùng sử dụng vi xử lý Kirin của hãng.\r\n\r\nSắp tới đây trong năm 2021, dự kiến hãng sẽ cho ra mắt điện thoại Huawei Mate 50 với nhiều nâng cấp hơn.',21000000,12,'Có hàng','2021-10-08 14:55:43','2021-10-08 21:55:43',0),(42,'Huawei Mate 50','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-mate-50_2.jpg','Huawei','Điện thoại Huawei Mate 50 - Hiệu năng mạnh mẽ trong phân khúc cận cao cấp\r\nSau thành công vang dội từ Mate 40, thương hiệu điện tử xứ Hoa ngữ Huawei nay đã giới thiệu đến người dùng sản phẩm Huawei Mate 50 cùng với Mate 50 Pro. Với thiết kế đẹp mắt cùng hiệu năng ấn tượng, đây hứa hẹn sẽ là mẫu smartphone đáng chú ý trong phân khúc cận cao cấp.',23690000,9,'Hàng sắp về','2021-10-08 14:56:40','2021-11-01 10:05:11',0),(43,'Huawei P50 Pro+','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/h/u/huawei-p50-pro-plus.jpg','Huawei','Huawei P50 Pro Plus - Điện thoại thông minh với cụm camera độc đáo\r\nCác hãng điện thoại ngày càng có sự phát triển về thiết kế. Với Huawei P50 Pro Plus, máy sẽ mang trong mình điểm nhấn là cụm camera thiết kế độc đáo chưa từng có trên thị trường.\r\n\r\nThiết kế màn hình thác nước, kích thước 6.78 inch\r\nĐiện thoại Huawei P50 Pro Plus được trang bị màn hình cong thác nước đẹp mắt cùng hai viền bezel cạnh bên siêu mỏng. Bên trong màn hình là thiết kế đục lỗ chứa camera selfie bên trong màn hình. Nhờ đó màn hình Huawei P50 Pro Plus có một không gian hiển thị khá lớn, lên đến 91,6%.',29990000,4,'Liên hệ','2021-10-08 14:57:28','2021-11-05 09:34:26',0),(44,'Xiaomi Mi 11 5G 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/x/i/xiaomi-mi-11-128gb-1.jpg','Xiaomi','Làm chủ mọi khung hình - Bộ 3 camera sau 108 MP, camera selfie 20 MP\r\nHiệu năng vượt trội, xử lý cực nhanh - Chip Snapdragon 888 cao cấp, 8 GB RAM LPDDR5\r\nThiết kế thời thượng đi đầu xu hướng - Hoàn thiện thiết kế siêu mỏng từ kim loại và kính cường lực\r\nHiển thị rõ ràng, sắc nét - Màn hình tràn viền AMOLED 6.81 inch, 120Hz\r\nSáng tạo chuyên nghiệp mọi lúc, mọi nơi - Cụm 3 camera sau 108 MP, camera selfie 20 MP, chống rung quang học',18699000,1,'Liên hệ','2021-10-08 14:59:24','2021-11-05 09:30:21',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `rate` int DEFAULT '5',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,2,1,'Sản phẩm quá chất lượng, đã mua và rất hài lòng !',5,'2021-08-30 12:49:44'),(2,2,1,'Nói chung là tuyệt vời !',4,'2021-08-30 13:45:37'),(3,1,1,'Test comment',1,'2021-08-30 14:20:43'),(6,2,2,'Test comment',5,'2021-08-30 14:47:46'),(7,3,4,'Test comment',2,'2021-08-30 15:27:48'),(8,1,1,'test rate',5,'2021-09-03 13:24:10'),(9,2,10,'comment',2,'2021-09-18 01:23:25'),(11,10,1,'Oke',3,'2021-10-01 13:10:39'),(12,11,2,'tạm ổn',4,'2021-10-07 09:48:02'),(13,13,4,'Like',5,'2021-10-07 13:06:24'),(18,8,42,'Comment đầu ',5,'2021-11-01 03:04:58'),(19,1,44,'cmt',5,'2021-11-05 02:42:09'),(20,1,9,'comment',4,'2021-12-08 04:09:05'),(21,12,9,'ac',5,'2021-12-08 04:10:19');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `img_url` varchar(200) DEFAULT '/img/avatar.jpg',
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `position` varchar(30) NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Phạm Thanh Tùng','/img/admin.jpg','2000-04-24','096699696','Admin','admin','21232f297a57a5a743894a0e4a801fc3','2021-08-28 12:44:31','2021-10-15 20:09:53'),(2,'Trần Quang Sang','/img/sang.jpg','2000-06-06','096396696','User','sang','83a046ffa06d5c37860bca369940cd73','2021-08-28 12:59:42','2021-10-27 10:48:17'),(3,'Lê Văn Toàn','/img/toan.jpg','2000-10-26','0654596156','User','toan','7301eea172e89a223798467d4a91e7a9','2021-08-30 15:26:14','2021-08-31 11:37:54'),(8,'Nguyễn Tuấn Thành','/img/avatar.jpg','2000-09-19','0333666999','User','thanh','8478e2bdb758f8467225ae87ed3750c2','2021-09-02 06:08:15','2021-09-02 13:35:05'),(9,'Đặng Văn Quân','/img/quan.jpg','2000-02-29','0235146594','User','quan','9f7eb8b72474d587dadd165916a60901','2021-10-01 13:04:34','2021-10-01 20:04:34'),(10,'Hoàng Văn Tiến','/img/tien.jpg','2000-09-09','034567890','User','tien','2a26569e98b26668f39e98e6baef2d54','2021-10-01 13:07:50','2021-10-01 20:09:47'),(11,'Lê Ngọc Hoan','/img/hoan.jpg','2000-03-31','035613489','User','hoan','892e2583ccbd69cb1081fec008ce4735','2021-10-07 09:45:27','2021-10-07 16:47:35'),(12,'Lưu Ngọc Mạnh','/img/avatar.jpg','2000-04-16','0867451351','User','manh','75f0817da202dfff6c1e8bf6ec5fad8f','2021-10-07 13:01:58','2021-10-07 20:03:35'),(13,'Vũ Ngọc Hoan','/img/hoanz.jpg','2000-05-10','0312312132','User','hoanz','3d706a99b601d2a8cf3171748be9adaa','2021-10-07 13:05:40','2021-10-08 00:41:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `orderview`
--

/*!50001 DROP VIEW IF EXISTS `orderview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderview` AS select `orders`.`id` AS `orderID`,`orders`.`status` AS `status`,`orders`.`create_at` AS `create_at`,`users`.`id` AS `userID`,`users`.`full_name` AS `full_name`,`users`.`img_url` AS `userImg`,`users`.`phone_number` AS `phone_number`,`products`.`id` AS `productID`,`products`.`name` AS `name`,`products`.`img_url` AS `productImg`,`products`.`price` AS `price`,`order_items`.`id` AS `orderItemsID`,`order_items`.`quantity` AS `quantity` from (((`orders` join `users` on((`orders`.`user_id` = `users`.`id`))) join `order_items` on((`orders`.`id` = `order_items`.`order_id`))) join `products` on((`products`.`id` = `order_items`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-23  8:41:00
