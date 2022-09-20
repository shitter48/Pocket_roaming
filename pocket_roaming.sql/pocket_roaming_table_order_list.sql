
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
