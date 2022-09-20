
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
