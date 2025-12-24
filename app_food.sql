CREATE TABLE `food` (
  `food_id` int NOT NULL,
  `food_name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `desciption` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `type_id` (`type_id`)
 )
 
 CREATE TABLE `food_type` (
  `type_id` int NOT NULL ,
  `type_name` varchar(50)
  PRIMARY KEY (`type_id`)
)

CREATE TABLE `like_res` (
  `like_res_id` int NOT NULL ,
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `date_like` datetime DEFAULT NULL,
  `dis_like` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`like_res_id`),
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`)
)

CREATE TABLE `orders` (
  `orders_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `arr_sub_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `user_id` (`user_id`),
  KEY `food_id` (`food_id`)
)

CREATE TABLE `rate_res` (
  `rate_res_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date_rate` datetime DEFAULT NULL,
  PRIMARY KEY (`rate_res_id`),
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`)
)

CREATE TABLE `restaurant` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desciption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`res_id`)
)

CREATE TABLE `sub_food` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) DEFAULT NULL,
  `sub_price` float DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `food_id` (`food_id`)
)

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
)

INSERT INTO food (food_id, food_name, image, price, desciption, type_id) VALUES
(1, 'Phở bò', 'pho_bo.jpg', 45000, 'Phở bò truyền thống Hà Nội', 1),
(2, 'Bún chả', 'bun_cha.jpg', 40000, 'Bún chả Hà Nội', 1),
(3, 'Cơm tấm', 'com_tam.jpg', 50000, 'Cơm tấm sườn bì chả', 2),
(4, 'Bánh mì thịt', 'banh_mi.jpg', 25000, 'Bánh mì thịt đặc biệt', 2),
(5, 'Trà sữa trân châu', 'tra_sua.jpg', 30000, 'Trà sữa truyền thống', 3),
(6, 'Cà phê sữa đá', 'ca_phe_sua.jpg', 20000, 'Cà phê sữa đá Việt Nam', 3);


INSERT INTO food_type (type_id, type_name) VALUES
(1, 'Món chính'),
(2, 'Ăn nhanh'),
(3, 'Đồ uống'),
(4, 'Tráng miệng');


INSERT INTO like_res (like_res_id, user_id, res_id, date_like, dis_like) VALUES
(1, 1, 1, '2025-12-20 10:15:00', 0),
(2, 2, 1, '2025-12-20 11:00:00', 0),
(3, 1, 2, '2025-12-21 09:30:00', 0),
(4, 3, 2, '2025-12-21 14:45:00', 1),
(5, 2, 3, '2025-12-22 18:20:00', 0);


INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 1, 2, 'ORD001', '1,2'),
(2, 3, 1, 'ORD002', '2'),
(1, 5, 3, 'ORD003', '1,3'),
(3, 2, 1, 'ORD004', NULL),
(2, 4, 2, 'ORD005', '3');

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 5, '2025-12-20 12:30:00'),
(2, 1, 4, '2025-12-20 13:15:00'),
(3, 2, 3, '2025-12-21 09:45:00'),
(1, 2, 4, '2025-12-21 18:00:00'),
(2, 3, 5, '2025-12-22 20:10:00');


INSERT INTO restaurant (res_name, image, desciption) VALUES
('Nhà hàng Phở Hà Nội', 'pho_ha_noi.jpg', 'Chuyên phở bò truyền thống Hà Nội'),
('Quán Bún Chả 36', 'bun_cha_36.jpg', 'Bún chả than hoa chuẩn vị Hà Nội'),
('Cơm Tấm Sài Gòn', 'com_tam_sg.jpg', 'Cơm tấm sườn nướng Sài Gòn'),
('Trà Sữa Panda', 'tra_sua_panda.jpg', 'Trà sữa – topping đa dạng'),
('Hải Sản Biển Đông', 'hai_san_bien_dong.jpg', 'Hải sản tươi sống mỗi ngày');


INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES
('Trứng ốp la', 10000, 1),
('Thịt bò thêm', 20000, 1),
('Chả thêm', 15000, 2),
('Trứng cút', 8000, 3),
('Xúc xích', 12000, 4),
('Trân châu đen', 5000, 5),
('Pudding trứng', 7000, 5);


INSERT INTO users (full_name, email, password) VALUES
('Nguyễn Văn A', 'a@gmail.com', '123456'),
('Trần Thị B', 'b@gmail.com', '123456'),
('Lê Văn C', 'c@gmail.com', '123456'),
('Phạm Thị D', 'd@gmail.com', '123456'),
('Hoàng Văn E', 'e@gmail.com', '123456');
