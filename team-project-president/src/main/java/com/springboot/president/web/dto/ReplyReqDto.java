package com.springboot.president.web.dto;

import com.springboot.president.domain.petition.Petition;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ReplyReqDto {
	private String provider;
	private String content;
	private int petition_id;
	
	public Petition toEntity(int user_id) {
		return Petition.builder()
								.provider(provider)
								.content(content)
								.petition_id(petition_id)
								.user_id(user_id)
								.build();
	}
}
