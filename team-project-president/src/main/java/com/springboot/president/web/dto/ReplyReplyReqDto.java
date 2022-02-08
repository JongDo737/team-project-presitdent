package com.springboot.president.web.dto;

import com.springboot.president.domain.forums.ReplyForums;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ReplyReplyReqDto {
	private String comment;
	
	public ReplyForums toEntity(int user_id, int reply_id) {
		return ReplyForums.builder()
								.user_id(user_id)
								.reply_id(reply_id)
								.comment(comment)
								.build();
	}
}
