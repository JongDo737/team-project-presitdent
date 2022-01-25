package com.springboot.president.web.dto;

import com.springboot.president.domain.forums.Forums;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ForumsReqDto {
	private String topic;
	private String content;
	
	public Forums toEntity(int user_id) {
		return Forums.builder()
								.user_id(user_id)
								.topic(topic)
								.content(content)
								.build();
	}
}
