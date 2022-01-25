package com.springboot.president.web.dto;

import java.time.LocalDateTime;
import java.util.List;

import com.springboot.president.domain.forums.GetForums;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ForumsRespDto {
	
	private int forums_id;
	private int user_id;
	private String topic;
	private String content;
	private int good_count;
	private int bad_count;
	private LocalDateTime create_date;
	private LocalDateTime end_date;
}
