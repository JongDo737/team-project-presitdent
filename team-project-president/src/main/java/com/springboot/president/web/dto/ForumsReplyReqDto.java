package com.springboot.president.web.dto;

import com.springboot.president.domain.forums.ReplyForums;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ForumsReplyReqDto {
	private String reply;
	
	public ReplyForums toEntity(int user_id, int forums_id) {
		return ReplyForums.builder()
								.user_id(user_id)
								.forums_id(forums_id)
								.reply(reply)
								.build();
	}
}
	
