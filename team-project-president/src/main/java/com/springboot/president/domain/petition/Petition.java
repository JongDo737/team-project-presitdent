package com.springboot.president.domain.petition;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Petition {
	private int petition_id;
	private int user_id;
	private String title;
	private String kategorie;
	private String content;
	private String link;
	private String tag;
	private int agree_count;
	private LocalDate create_date;
	private LocalDate end_date;
	
	//to resp 만들기
}
