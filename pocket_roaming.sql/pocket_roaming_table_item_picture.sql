
-- --------------------------------------------------------

--
-- 資料表結構 `item_picture`
--

CREATE TABLE `item_picture` (
  `item_id` int(11) NOT NULL,
  `picture_url` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表新增資料前，先清除舊資料 `item_picture`
--

TRUNCATE TABLE `item_picture`;