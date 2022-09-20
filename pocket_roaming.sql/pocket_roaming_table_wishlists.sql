
-- --------------------------------------------------------

--
-- 資料表結構 `wishlists`
--

CREATE TABLE `wishlists` (
  `wishilst_id` int(20) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `category_id` int(20) NOT NULL,
  `item_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `expect_price` int(20) NOT NULL,
  `item_photo_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_likes` int(20) NOT NULL,
  `item_comment` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
