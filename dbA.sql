-- =========================
-- Create and Use Database
-- =========================
CREATE DATABASE IF NOT EXISTS dbA;
USE dbA;

-- =========================
-- Category Table
-- =========================
CREATE TABLE Category(
  Category_id VARCHAR(100) NOT NULL,
  Category_name VARCHAR(50) NOT NULL,
  PRIMARY KEY(Category_id)
);

INSERT INTO Category (Category_id, Category_name) VALUES
('C001','SAMSUNG'),
('C002','OPPO'),
('C003','IPHONE'),
('C004','IPAD'),
('C005','VIVO'),
('C006','XIAOMI');

-- =========================
-- Product Table
-- =========================
CREATE TABLE Product (
  Product_id CHAR(5) NOT NULL,
  Product_model VARCHAR(50) NOT NULL,
  Product_price DECIMAL(10, 2) NOT NULL,
  Category_id VARCHAR(100) NOT NULL,
  Product_photo VARCHAR(255) DEFAULT 'default.jpg',
  Stock INT DEFAULT 100,
  PRIMARY KEY (Product_id),
  FOREIGN KEY(Category_id) REFERENCES Category(Category_id)  -- Fixed: CATEGORY -> Category
);

-- =========================
-- Insert Product Data
-- =========================
-- Fixed: Removed extra filename from INSERT columns
INSERT INTO Product (Product_id, Product_model, Product_price, Category_id, Product_photo) VALUES
('S001', 'Galaxy A26 5G', 999, 'C001','SM_A265G.jpeg'),
('S002', 'Galaxy A54 5G', 1899, 'C001','69dde3d413879_1776149460.jpeg'),
('S003', 'Galaxy S26 Ultra', 6799, 'C001','69dde3ec2b76b_1776149484.jpeg'),
('S004', 'Galaxy S25 FE', 3299, 'C001','69dde3e178fc6_1776149473.jpeg'),
('S005', 'Galaxy Z Fold 7', 7299, 'C001','69dde45b2181b_1776149595.png'),
('S006', 'Galaxy Tab S11 Ultra (Wi-Fi)', 5499, 'C001','69dde43e33b9d_1776149566.jpeg'),
('S007', 'Galaxy Tab S10 FE+ (Wi-Fi)', 2799, 'C001','69dde41eeb1a4_1776149534.jpg'),
('S008', 'Galaxy Tab S10 Lite (Wi-Fi)', 1499, 'C001','69dde42a6c169_1776149546.webp'),
('S009', 'Galaxy Tab A11 (LTE, 8.7")', 699, 'C001','69dde40c3fce9_1776149516.jpg'),
('S010', 'Galaxy Tab S9 FE+ (2025)', 2999, 'C001','69dde449c2aca_1776149577.jpg'),
('O001', 'Reno 14', 1569, 'C002','69de29b25cea0_1776167346.png'),
('O002', 'Reno 14 Pro', 1699, 'C002','69de29bf9d86c_1776167359.png'),
('O003', 'Reno 15', 1759, 'C002','69de2a27ac8bb_1776167463.jpg'),
('O004', 'Reno 15 Pro', 1899, 'C002','69de2a30c20b2_1776167472.webp'),
('O005', 'Reno 15c', 2109, 'C002','69de2a3b0d2e1_1776167483.png'),
('O006', 'Pad 3 Pro', 1904, 'C002','69ddf1524873a_1776152914.jpg'),
('O007', 'Pad 4 Pro', 1863, 'C002','69ddf15c782af_1776152924.jpg'),
('O008', 'Pad 3', 1159, 'C002','69ddf14999ce0_1776152905.jpg'),
('O009', 'Pad Neo', 1068, 'C002','69ddf1727599d_1776152946.webp'),
('O010', 'Pad Air 2', 745, 'C002','69ddf166a1371_1776152934.jpg'),
('A001', '17E', 2999, 'C003','iPhone_17E.jpg'),
('A002', '17 Pro', 5200, 'C003','69de28530c5a9_1776166995.jpeg'),
('A003', '17 Pro Max', 5999, 'C003','69de285ee890b_1776167006.png'),
('A004', '16E', 2999, 'C003','69de47d1cf231_1776175057.jpeg'),
('A005', 'Air', 5999, 'C003','69de28782af53_1776167032.webp'),
('I001', 'Pro 13 (2025)', 5799, 'C004','69de290dd2a57_1776167181.jpeg'),
('I002', 'Pro 11 (2025)', 4499, 'C004','69de29066099d_1776167174.jpeg'),
('I003', 'Air 13 (2026, Wi-Fi)', 3699, 'C004','69de45f3aca7f_1776174579.jpg'),
('I004', 'Air 11 (2026, Wi-Fi)', 2799, 'C004','69de28f53c2a8_1776167157.jpg'),
('I005', 'Mini (2024)', 2199, 'C004','69de28fcf35a4_1776167164.jpeg'),
('V001', 'Y66', 769, 'C005','69de28ed7c3b2_1776167149.jpg'),
('V002', 'Y67', 899, 'C005','69de280dc4452_1776166925.png'),
('V003', 'Y55', 1299, 'C005','69de27f0654a9_1776166896.jpg'),
('V004', 'Y53', 1599, 'C005','69de27e7cb787_1776166887.jpg'),
('V005', 'Y51A', 1899, 'C005','69de27ddc8210_1776166877.jpg'),
('V006', 'iQOO Pad', 2199, 'C005','69de279fec618_1776166815.jpg'),
('V007', 'iQOO Pad 2 Pro', 2399, 'C005','69de4618a0b84_1776174616.jpeg'),
('V008', 'Pad 3 Pro', 2499, 'C005','69de27b61f1a2_1776166838.jpg'),
('V009', 'Pad Air', 2689, 'C005','69de27c019e96_1776166848.jpeg'),
('V010', 'Pad Air 2', 2899, 'C005','69de27c83aa22_1776166856.jpg'),  
('X001', '16 Lite', 1800, 'C006','69de2936a6272_1776167222.jpg'),
('X002', '16T', 3000, 'C006','69de293f7104b_1776167231.webp'),
('X003', '16T Pro', 7300, 'C006','69de2948f3f53_1776167240.webp'),
('X004', '15 Ultra', 3685, 'C006','Xiaomi_15Ultra.png'),
('X005', '15T', 2999, 'C006','69df9def8e3b1_1776262639.png'),
('X006', 'Pad 7', 1999, 'C006','69de29710ed39_1776167281.webp'),
('X007', 'Pad 6 Max', 2299, 'C006','69de2968d7168_1776167272.jpg'),
('X008', 'Pad 7 Pro', 2499, 'C006','69de297a19b7a_1776167290.jpg'),
('X009', 'Pad SE (2025)', 899, 'C006','69de298271cd2_1776167298.png'),
('X010', 'Pad (2023)', 1099, 'C006','69de295b8cf6e_1776167259.png');

-- =========================
-- User Table (Enhanced for Registration)
-- =========================
CREATE TABLE `user` (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,  -- Store hashed password (e.g., bcrypt)
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(20) NOT NULL,
  full_name VARCHAR(100),
  gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),  -- M=Male, F=Female, O=Other
  role ENUM('member', 'admin') NOT NULL DEFAULT 'member',
  is_blocked TINYINT(1) DEFAULT 0,
  profile_photo VARCHAR(255) DEFAULT 'uploads/profiles/default.png.jpg',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  -- Indexes for faster lookups
  INDEX idx_email (email),
  INDEX idx_username (username),
  INDEX idx_phone (phone)
);

-- =========================
-- Order Table
-- =========================
CREATE TABLE IF NOT EXISTS `order` (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  total DECIMAL(10,2) NOT NULL,
  status VARCHAR(20) DEFAULT 'Pending',
  FOREIGN KEY (user_id) REFERENCES `user`(user_id) ON DELETE CASCADE
);

-- =========================
-- Item Table
-- =========================
CREATE TABLE IF NOT EXISTS item (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id CHAR(5) NOT NULL,
  unit INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES `order`(id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES Product(Product_id)
);

-- =========================
-- Cart Item Table
-- =========================
CREATE TABLE IF NOT EXISTS cart_item (
  user_id INT NOT NULL,
  product_id CHAR(5) NOT NULL,
  unit INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, product_id),
  FOREIGN KEY (user_id) REFERENCES `user`(user_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES Product(Product_id) ON DELETE CASCADE
);

-- =========================
-- Insert Sample Admin Users
-- =========================
INSERT INTO `user` (username, full_name, email, phone, gender, role, password) VALUES 
('admin1', 'Admin John', 'admin1@shop.com', '0123456701', 'M', 'admin', SHA2('admin123', 256)),
('admin2', 'Admin Tina', 'admin2@shop.com', '0123456702', 'F', 'admin', SHA2('admin123', 256)),
('admin3', 'Admin Ruth', 'admin3@shop.com', '0123456703', 'M', 'admin', SHA2('admin123', 256)),
('admin4', 'Admin Sam', 'admin4@shop.com', '0123456704', 'F', 'admin', SHA2('admin123', 256)),
('admin5', 'Admin Kiki', 'admin5@shop.com', '0123456705', 'M', 'admin', SHA2('admin123', 256)),
('admin6', 'Admin Sally', 'admin6@shop.com', '0123456706', 'F', 'admin', SHA2('admin123', 256)),
('admin7', 'Admin Lim', 'admin7@shop.com', '0123456707', 'M', 'admin', SHA2('admin123', 256)),
('admin8', 'Admin Ethan', 'admin8@shop.com', '0123456708', 'F', 'admin', SHA2('admin123', 256)),
('admin9', 'Admin Hengry', 'admin9@shop.com', '0123456709', 'M', 'admin', SHA2('admin123', 256)),
('admin10', 'Admin Tenny', 'admin10@shop.com', '0123456710', 'F', 'admin', SHA2('admin123', 256)),
('admin11', 'Admin Eleven', 'admin11@shop.com', '0123456711', 'M', 'admin', SHA2('admin123', 256)),
('admin12', 'Admin Alice', 'admin12@shop.com', '0123456712', 'F', 'admin', SHA2('admin123', 256)),
('admin13', 'Admin Julia', 'admin13@shop.com', '0123456713', 'M', 'admin', SHA2('admin123', 256)),
('admin14', 'Admin Fiona', 'admin14@shop.com', '0123456714', 'F', 'admin', SHA2('admin123', 256)),
('admin15', 'Admin Lee', 'admin15@shop.com', '0123456715', 'M', 'admin', SHA2('admin123', 256));

-- =========================
-- Insert Sample Member Users (with hashed passwords)
-- =========================
INSERT INTO `user` (username, full_name, email, phone, gender, role, password) VALUES 
('john_doe', 'John Doe', 'john@email.com', '0123456801', 'M', 'member', SHA2('member123', 256)),
('jane_smith', 'Jane Smith', 'jane@email.com', '0123456802', 'F', 'member', SHA2('member123', 256)),
('bob_wilson', 'Bob Wilson', 'bob@email.com', '0123456803', 'M', 'member', SHA2('member123', 256)),
('alice_brown', 'Alice Brown', 'alice@email.com', '0123456804', 'F', 'member', SHA2('member123', 256)),
('charlie_lee', 'Charlie Lee', 'charlie@email.com', '0123456805', 'M', 'member', SHA2('member123', 256)),
('diana_prince', 'Diana Prince', 'diana@email.com', '0123456806', 'F', 'member', SHA2('member123', 256)),
('ethan_hunt', 'Ethan Hunt', 'ethan@email.com', '0123456807', 'M', 'member', SHA2('member123', 256)),
('fiona_zhang', 'Fiona Zhang', 'fiona@email.com', '0123456808', 'F', 'member', SHA2('member123', 256)),
('george_king', 'George King', 'george@email.com', '0123456809', 'M', 'member', SHA2('member123', 256)),
('hannah_lee', 'Hannah Lee', 'hannah@email.com', '0123456810', 'F', 'member', SHA2('member123', 256)),
('ian_wright', 'Ian Wright', 'ian@email.com', '0123456811', 'M', 'member', SHA2('member123', 256)),
('julia_roberts', 'Julia Roberts', 'julia@email.com', '0123456812', 'F', 'member', SHA2('member123', 256)),
('kevin_tan', 'Kevin Tan', 'kevin@email.com', '0123456813', 'M', 'member', SHA2('member123', 256)),
('lisa_wong', 'Lisa Wong', 'lisa@email.com', '0123456814', 'F', 'member', SHA2('member123', 256)),
('mike_low', 'Mike Low', 'mike@email.com', '0123456815', 'M', 'member', SHA2('member123', 256)),
('nina_lim', 'Nina Lim', 'nina@email.com', '0123456816', 'F', 'member', SHA2('member123', 256)),
('oscar_goh', 'Oscar Goh', 'oscar@email.com', '0123456817', 'M', 'member', SHA2('member123', 256)),
('paula_ong', 'Paula Ong', 'paula@email.com', '0123456818', 'F', 'member', SHA2('member123', 256)),
('quinn_teo', 'Quinn Teo', 'quinn@email.com', '0123456819', 'M', 'member', SHA2('member123', 256)),
('ruth_chua', 'Ruth Chua', 'ruth@email.com', '0123456820', 'F', 'member', SHA2('member123', 256)),
('sam_yeo', 'Sam Yeo', 'sam@email.com', '0123456821', 'M', 'member', SHA2('member123', 256)),
('tina_koh', 'Tina Koh', 'tina@email.com', '0123456822', 'F', 'member', SHA2('member123', 256)),
('umar_soh', 'Umar Soh', 'umar@email.com', '0123456823', 'M', 'member', SHA2('member123', 256)),
('vera_lau', 'Vera Lau', 'vera@email.com', '0123456824', 'F', 'member', SHA2('member123', 256)),
('wan_tan', 'Wan Tan', 'wan@email.com', '0123456825', 'M', 'member', SHA2('member123', 256)),
('xin_lim', 'Xin Lim', 'xin@email.com', '0123456826', 'F', 'member', SHA2('member123', 256)),
('yusof_bin', 'Yusof Bin', 'yusof@email.com', '0123456827', 'M', 'member', SHA2('member123', 256)),
('zara_ong', 'Zara Ong', 'zara@email.com', '0123456828', 'F', 'member', SHA2('member123', 256)),
('adam_goh', 'Adam Goh', 'adam@email.com', '0123456829', 'M', 'member', SHA2('member123', 256)),
('betty_low', 'Betty Low', 'betty@email.com', '0123456830', 'F', 'member', SHA2('member123', 256));

-- =========================
-- Set 5 Members as Blocked (for testing block/unblock)
-- =========================
UPDATE `user` SET is_blocked = 1 WHERE user_id IN (5, 10, 15, 20, 25);

-- =========================
-- Useful Queries for User Registration/Management
-- =========================

-- 1. Register new user (with hashed password)
-- INSERT INTO `user` (username, password, email, phone, full_name, gender, role) 
-- VALUES ('newuser', SHA2('userpassword', 256), 'newuser@email.com', '0123456789', 'New User', 'M', 'member');

-- 2. Login verification query
-- SELECT user_id, username, full_name, email, role, is_blocked 
-- FROM `user` 
-- WHERE username = 'john_doe' AND password = SHA2('member123', 256) AND is_blocked = 0;

-- 3. Check if username exists
-- SELECT COUNT(*) FROM `user` WHERE username = 'john_doe';

-- 4. Check if email exists
-- SELECT COUNT(*) FROM `user` WHERE email = 'john@email.com';

-- 5. Update user profile
-- UPDATE `user` 
-- SET full_name = 'Updated Name', phone = '0198765432', profile_photo = 'newphoto.jpg' 
-- WHERE user_id = 1;

-- 6. Change password
-- UPDATE `user` SET password = SHA2('newpassword', 256) WHERE user_id = 1;

-- 7. Block/unblock user
-- UPDATE `user` SET is_blocked = 1 WHERE user_id = 5;  -- Block
-- UPDATE `user` SET is_blocked = 0 WHERE user_id = 5;  -- Unblock

-- 8. Get all members (excluding admins)
-- SELECT * FROM `user` WHERE role = 'member';

-- 9. Get blocked users
-- SELECT * FROM `user` WHERE is_blocked = 1;

-- 10. Search users by name or email
-- SELECT * FROM `user` 
-- WHERE username LIKE '%john%' OR email LIKE '%john%' OR full_name LIKE '%john%';

-- =========================
-- Password Reset Functionality (Added for login.php)
-- =========================

-- Add columns for password reset functionality
ALTER TABLE `user` 
ADD COLUMN IF NOT EXISTS `password_hash` VARCHAR(255) NULL AFTER `password`,
ADD COLUMN IF NOT EXISTS `reset_token` VARCHAR(255) NULL,
ADD COLUMN IF NOT EXISTS `reset_expires` DATETIME NULL;

-- Update existing users to have password_hash from their current password
UPDATE `user` 
SET `password_hash` = CONCAT('$2y$10$', SUBSTRING(MD5(RAND()), 1, 22), '$', SHA2(`password`, 256))
WHERE `password_hash` IS NULL;

-- Add indexes for better performance
ALTER TABLE `user` ADD INDEX IF NOT EXISTS idx_reset_token (`reset_token`);
ALTER TABLE `user` ADD INDEX IF NOT EXISTS idx_email (`email`);