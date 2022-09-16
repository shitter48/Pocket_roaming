-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-09-14 08:55:46
-- 伺服器版本： 5.7.24
-- PHP 版本： 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `pocket_roaming`
--

-- --------------------------------------------------------

--
-- 資料表結構 `chatrooms`
--

CREATE TABLE `chatrooms` (
  `chatroom_id` int(20) NOT NULL,
  `chatroom_member_id` int(20) NOT NULL,
  `chatroom_message` varchar(255) COLLATE utf8_bin NOT NULL,
  `chatroom_message_time` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `item_id` int(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `item_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `item_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `item_state` int(1) NOT NULL,
  `item_date` date NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_times_rent_out` int(20) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `item_categories`
--

CREATE TABLE `item_categories` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `category_description` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `item_picture`
--

CREATE TABLE `item_picture` (
  `item_id` int(11) NOT NULL,
  `picture_url` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `item_tags`
--

CREATE TABLE `item_tags` (
  `item_id` int(20) NOT NULL,
  `item_tag` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `member_id` int(20) NOT NULL,
  `member_account` varchar(20) COLLATE utf8_bin NOT NULL,
  `member_password` int(20) NOT NULL,
  `member_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `member_phonenumber` int(20) DEFAULT NULL,
  `member_birthday` date DEFAULT NULL,
  `member_region` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `member_valuation` double DEFAULT NULL,
  `member_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `member_nickname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `member_introduction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `member_rank` int(11) NOT NULL,
  `member_ban_date` date DEFAULT NULL,
  `member_token` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `member_balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `member_payment_detail`
--

CREATE TABLE `member_payment_detail` (
  `payment_detail_id` int(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `member_firstname` varchar(20) COLLATE utf8_bin NOT NULL,
  `member_lastname` varchar(20) COLLATE utf8_bin NOT NULL,
  `member_address` varchar(50) COLLATE utf8_bin NOT NULL,
  `creditcard_number` varchar(20) COLLATE utf8_bin NOT NULL,
  `creditcard_date` varchar(10) COLLATE utf8_bin NOT NULL,
  `creditcard_security_code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL,
  `item_receive_date` date NOT NULL,
  `item_deliver_way` int(20) NOT NULL,
  `item_return_date` date NOT NULL,
  `item_return_way` int(11) NOT NULL,
  `item_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `order_date` date NOT NULL,
  `order_item_number` int(20) NOT NULL,
  `order_delivery_fee` int(20) NOT NULL,
  `order_total_price` int(20) NOT NULL,
  `order_payment` int(1) NOT NULL,
  `order_state` int(1) NOT NULL,
  `order_isviolate` tinyint(1) NOT NULL,
  `order_violate_type` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `rate_list`
--

CREATE TABLE `rate_list` (
  `rated_member_id` int(20) NOT NULL,
  `rated_item_id` int(20) NOT NULL,
  `rate_member_id` int(20) NOT NULL,
  `rate_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rate_grade` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `wishlists`
--

CREATE TABLE `wishlists` (
  `member_id` int(11) NOT NULL,
  `item_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `category_id` int(20) NOT NULL,
  `item_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `expect_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`chatroom_id`),
  ADD KEY `chatroom_member_id` (`chatroom_member_id`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `rent_out_list_ibfk_1` (`category_id`),
  ADD KEY `memberID` (`member_id`);

--
-- 資料表索引 `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `item_picture`
--
ALTER TABLE `item_picture`
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `item_tags`
--
ALTER TABLE `item_tags`
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_account` (`member_account`),
  ADD UNIQUE KEY `member_email` (`member_email`);

--
-- 資料表索引 `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  ADD PRIMARY KEY (`payment_detail_id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `orderID` (`order_id`),
  ADD KEY `itemID` (`item_id`);

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `memberID` (`member_id`);

--
-- 資料表索引 `rate_list`
--
ALTER TABLE `rate_list`
  ADD KEY `rated_member_id` (`rated_member_id`),
  ADD KEY `rate_member_id` (`rate_member_id`),
  ADD KEY `rated_item_id` (`rated_item_id`);

--
-- 資料表索引 `wishlists`
--
ALTER TABLE `wishlists`
  ADD KEY `memberID` (`member_id`),
  ADD KEY `categoryID` (`category_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `chatroom_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  MODIFY `payment_detail_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD CONSTRAINT `chatrooms_ibfk_1` FOREIGN KEY (`chatroom_member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`category_id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `item_picture`
--
ALTER TABLE `item_picture`
  ADD CONSTRAINT `item_picture_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `item_tags`
--
ALTER TABLE `item_tags`
  ADD CONSTRAINT `item_tags_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  ADD CONSTRAINT `member_payment_detail_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `rate_list`
--
ALTER TABLE `rate_list`
  ADD CONSTRAINT `rate_list_ibfk_1` FOREIGN KEY (`rated_member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `rate_list_ibfk_2` FOREIGN KEY (`rate_member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `rate_list_ibfk_3` FOREIGN KEY (`rated_item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
