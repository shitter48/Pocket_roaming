
-- --------------------------------------------------------

--
-- 資料表結構 `item_categories`
--

CREATE TABLE `item_categories` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `category_description` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表新增資料前，先清除舊資料 `item_categories`
--

TRUNCATE TABLE `item_categories`;