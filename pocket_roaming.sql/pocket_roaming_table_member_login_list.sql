
-- --------------------------------------------------------

--
-- 資料表結構 `member_login_list`
--

CREATE TABLE `member_login_list` (
  `login_list_id` int(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `member_login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
