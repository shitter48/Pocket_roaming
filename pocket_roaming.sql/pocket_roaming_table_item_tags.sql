
-- --------------------------------------------------------

--
-- 資料表結構 `item_tags`
--

CREATE TABLE `item_tags` (
  `item_id` int(20) NOT NULL,
  `item_tag` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表新增資料前，先清除舊資料 `item_tags`
--

TRUNCATE TABLE `item_tags`;