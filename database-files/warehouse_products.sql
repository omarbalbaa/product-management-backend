-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: warehouse
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Earphones',980.00,'1761143439_pngtree-stylish-white-earphones.png','White wired earphones','audio'),(5,'Red earphones',789.50,'1761144005_red-earphone.png','Black & Red AUX earphones','audio'),(6,'Wireless Mouse',12.99,'logitechmouse.png','Ergonomic wireless mouse with 2.4GHz connection.','Electronics'),(7,'Mechanical Keyboard',45.50,'pngtree-a-isolated-wirless-mechanical-keyboard-on-white-background-png-image_15836493.png','RGB backlit keyboard with blue switches.','Electronics'),(8,'USB-C Charger',18.00,'Type-C-Charger-Adapter-PNG-Free-Download.png','Fast charging USB-C adapter 30W.','Electronics'),(9,'Noise Cancelling Headphones',99.99,'1669135570_IMG_1846257.jpg','Over-ear headphones with active noise cancellation.','Electronics'),(10,'Bluetooth Speaker',29.99,'Speaker-Sound.png','Portable Bluetooth speaker with deep bass.','Electronics'),(11,'Running Shoes',59.95,'sneakers.png','Lightweight running shoes for men and women.','Sports'),(12,'Yoga Mat',22.50,'images.jfif','Non-slip yoga mat made of eco-friendly material.','Sports'),(13,'Dumbbell Set',39.00,'images (1).jfif','Adjustable dumbbells for strength training.','Sports'),(14,'Football',19.99,'black-white-football-free-png.png','Official size and weight football for training.','Sports'),(15,'Cycling Helmet',34.75,'33653180_1.webp','Durable helmet with ventilation design.','Sports'),(16,'Cotton T-Shirt',14.99,'HMU20078_800_01_MA.png','Soft and breathable cotton T-shirt.','clothes'),(17,'Denim Jeans',44.00,'Curves1_4e504043-2120-4bd2-be99-3f5ecae63048.webp','Slim-fit stretch denim jeans.','clothes'),(18,'Leather Jacket',120.00,'DD5-240624-00097.avif','Classic black leather jacket for all seasons.','clothes'),(19,'Sneakers',65.50,'30_b5744869-445b-49c9-9076-06055c91e69d.webp','Casual sneakers with cushioned soles.','clothes'),(20,'Hoodie',29.99,'DropShoulderHoodie-Grey-productphoto_1_800x.webp','Comfy fleece hoodie with front pocket.','clothes'),(21,'Smartwatch',149.00,'Motive-7C-800X800-blue-21b3.webp','Touchscreen smartwatch with fitness tracking.','Electronics'),(22,'Gaming Mouse Pad',10.99,'1412234-600x600.png','Extended mouse pad with anti-slip base.','Electronics'),(23,'LED Desk Lamp',25.49,'XTA-701_imagen_color.png','Adjustable LED lamp with brightness control.','Electronics'),(24,'Wireless Earbuds',49.99,'555994254.png','Bluetooth earbuds with noise isolation.','audio'),(25,'External Hard Drive',79.99,'external-hard-disk-1.png','1TB portable external hard drive.','Electronics'),(32,'Blender',35.00,'1-04ab1d5e-c329-425b-9f86-4fd87655d17d_6pw2usxydv7zxn4u.webp','Multi-speed blender for smoothies.','Appliances'),(33,'Microwave Oven',89.00,'25_liter_girl.png','700W compact microwave oven.','Appliances'),(34,'Toaster',25.99,'krsi2yj_iif3xg0jbf7zobwy_1_uxyragbhtq2lkjgp.webp','2-slice toaster with crumb tray.','Appliances'),(35,'Electric Kettle',19.99,'e0818c5dc8d68c0af11597792ffbe586dacc258b_f_nooncdn_com_ca7f987a_4c7d_4f3b_86f6_cb46e2e3fbe5.png','1.7L stainless steel electric kettle.','Appliances'),(37,'Dishwasher -60 Stainless Steel',16450.00,'stainless_steel_60_cm.jpg','Full Electronic Control Panel, Shelves Number : 2 Shelves ( Top Basket , Bottom Basket ), Easy Loading & Maximum Flexibility, Cutlery Accomodation Rack, Elegant Interior Design, Stainless Steel Inner Cabinet, Stainless Steel Inner Body of the Handle, Insulating Material for Noise Reduction','Appliances'),(38,'Black T-shirt',123.00,'1761158130_pngtree-black-t-shirt-mockup.png','Basic black t-shirt, size: M','clothes'),(39,'White T-Shirt',130.00,'1761158252_pngtree-white-t-shirt-mockup.png','Basic white t-shirt','clothes');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23  0:02:51
