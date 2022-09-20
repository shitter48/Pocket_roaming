
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
  `member_balance` int(255) DEFAULT NULL,
  `account_create_time` datetime NOT NULL,
  `last_login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
