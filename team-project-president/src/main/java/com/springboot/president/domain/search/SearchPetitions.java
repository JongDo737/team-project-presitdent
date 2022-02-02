package com.springboot.president.domain.search;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SearchPetitions {
	
	private	int petition_id;
	private String title;
	private String content;
	private int agree_count;
	private int petitioinsTotalCount;
	private LocalDate create_date;
	private LocalDate end_date;
}
