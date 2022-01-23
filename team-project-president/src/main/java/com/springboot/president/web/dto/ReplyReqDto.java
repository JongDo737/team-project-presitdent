package com.springboot.president.web.dto;

import com.springboot.president.domain.petition.Petition;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ReplyReqDto {
	private String provider;
	private String reply;
	
	public Petition toReplyEntity(int user_id,int petition_id) {
		return Petition.builder()
								.provider(provider)
								.reply(reply)
								.user_id(user_id)
								.petition_id(petition_id)
								.build();
	}
}
