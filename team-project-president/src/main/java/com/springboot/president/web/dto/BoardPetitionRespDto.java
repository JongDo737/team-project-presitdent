package com.springboot.president.web.dto;

import java.time.LocalDate;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class BoardPetitionRespDto {
	
	private int petition_id;
	private int user_id;
	private String provider;
	private String title;
	private String kategorie;
	private String content;
	private String link;
	private String tag;
	private int agree_count;
	private LocalDate create_date;
	private LocalDate end_date;
}
