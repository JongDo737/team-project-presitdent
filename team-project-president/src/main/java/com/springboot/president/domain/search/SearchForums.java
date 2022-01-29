package com.springboot.president.domain.search;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SearchForums {
	private int forums_id;
	private String topic;
	private String content;
	private int forumsTotalCount;
	private LocalDate create_date;
}
