
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

--
-- 資料表新增資料前，先清除舊資料 `member_payment_detail`
--

TRUNCATE TABLE `member_payment_detail`;