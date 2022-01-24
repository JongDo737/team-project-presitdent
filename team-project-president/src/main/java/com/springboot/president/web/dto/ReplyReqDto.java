package com.springboot.president.web.dto;


import com.springboot.president.domain.petition.ReplyPetition;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ReplyReqDto {
	private String reply;
	
	public ReplyPetition toEntity(int user_id, int petition_id) {
		return ReplyPetition.builder()
							.user_id(user_id)
							.petition_id(petition_id)
							.reply(reply)
							.build();
	}
}
