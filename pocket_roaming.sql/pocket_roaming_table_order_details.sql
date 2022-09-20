
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
