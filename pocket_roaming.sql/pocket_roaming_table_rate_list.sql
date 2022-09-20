
-- --------------------------------------------------------

--
-- 資料表結構 `rate_list`
--

CREATE TABLE `rate_list` (
  `rate_id` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `rated_member_id` int(20) NOT NULL,
  `rated_item_id` int(20) NOT NULL,
  `rate_member_id` int(20) NOT NULL,
  `rate_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rate_grade` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
