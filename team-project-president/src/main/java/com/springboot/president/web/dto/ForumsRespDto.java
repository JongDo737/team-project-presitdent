package com.springboot.president.web.dto;

import java.time.LocalDate;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ForumsRespDto {
	
	private String provider;
	private int forums_id;
	private int user_id;
	private String topic;
	private String content;
	private int good_count;
	private int bad_count;
	private int reply_count;
	private LocalDate create_date;
	private LocalDate end_date;
}
