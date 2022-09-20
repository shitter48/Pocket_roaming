
--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- 資料表索引 `member_login_list`
--
ALTER TABLE `member_login_list`
  ADD PRIMARY KEY (`login_list_id`);

--
-- 資料表索引 `member_rank`
--
ALTER TABLE `member_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- 資料表索引 `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`token_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_login_list`
--
ALTER TABLE `member_login_list`
  MODIFY `login_list_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_rank`
--
ALTER TABLE `member_rank`
  MODIFY `rank_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_token`
--
ALTER TABLE `member_token`
  MODIFY `token_id` int(20) NOT NULL AUTO_INCREMENT;
