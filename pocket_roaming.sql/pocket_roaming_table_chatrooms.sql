
-- --------------------------------------------------------

--
-- 資料表結構 `chatrooms`
--

CREATE TABLE `chatrooms` (
  `chatroom_id` int(20) NOT NULL,
  `chatroom_member_id` int(20) NOT NULL,
  `chatroom_message` varchar(255) COLLATE utf8_bin NOT NULL,
  `chatroom_message_time` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
