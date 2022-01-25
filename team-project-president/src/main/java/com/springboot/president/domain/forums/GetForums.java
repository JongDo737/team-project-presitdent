package com.springboot.president.domain.forums;

import java.time.LocalDateTime;

import com.springboot.president.web.dto.ForumsRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class GetForums {

	private int forums_id;
	private int user_id;
	private String topic;
	private String content;
	private int good_count;
	private int bad_count;
	private LocalDateTime create_date;
	private LocalDateTime end_date;
	
	public ForumsRespDto toResp() {
			return ForumsRespDto.builder()
										.forums_id(forums_id)
										.user_id(user_id)
										.topic(topic)
										.content(content)
										.good_count(good_count)
										.bad_count(bad_count)
										.create_date(create_date)
										.end_date(end_date)
										.build();
	}
}

