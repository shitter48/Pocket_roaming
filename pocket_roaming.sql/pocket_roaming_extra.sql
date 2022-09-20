
--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`chatroom_id`),
  ADD KEY `chatroom_member_id` (`chatroom_member_id`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `rent_out_list_ibfk_1` (`category_id`),
  ADD KEY `memberID` (`member_id`);

--
-- 資料表索引 `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- 資料表索引 `item_picture`
--
ALTER TABLE `item_picture`
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `item_tags`
--
ALTER TABLE `item_tags`
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_account` (`member_account`),
  ADD UNIQUE KEY `member_email` (`member_email`);

--
-- 資料表索引 `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  ADD PRIMARY KEY (`payment_detail_id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `orderID` (`order_id`),
  ADD KEY `itemID` (`item_id`);

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `memberID` (`member_id`);

--
-- 資料表索引 `rate_list`
--
ALTER TABLE `rate_list`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `rated_member_id` (`rated_member_id`),
  ADD KEY `rate_member_id` (`rate_member_id`),
  ADD KEY `rated_item_id` (`rated_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishilst_id`),
  ADD KEY `memberID` (`member_id`),
  ADD KEY `categoryID` (`category_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `chatroom_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  MODIFY `payment_detail_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rate_list`
--
ALTER TABLE `rate_list`
  MODIFY `rate_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishilst_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD CONSTRAINT `chatrooms_ibfk_1` FOREIGN KEY (`chatroom_member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`category_id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `item_picture`
--
ALTER TABLE `item_picture`
  ADD CONSTRAINT `item_picture_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `item_tags`
--
ALTER TABLE `item_tags`
  ADD CONSTRAINT `item_tags_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `member_payment_detail`
--
ALTER TABLE `member_payment_detail`
  ADD CONSTRAINT `member_payment_detail_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- 資料表的限制式 `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- 資料表的限制式 `rate_list`
--
ALTER TABLE `rate_list`
  ADD CONSTRAINT `rate_list_ibfk_1` FOREIGN KEY (`rated_member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `rate_list_ibfk_2` FOREIGN KEY (`rate_member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `rate_list_ibfk_3` FOREIGN KEY (`rated_item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `rate_list_ibfk_4` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`);

--
-- 資料表的限制式 `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`category_id`);
