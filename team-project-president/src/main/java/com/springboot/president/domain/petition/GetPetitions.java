package com.springboot.president.domain.petition;

import java.time.LocalDateTime;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class GetPetitions {
	
	private String provider;
	
	private String petition_id;
	private String title;
	private String kategorie;
	private String content;
	private String link;
	private String tag;
	private int agree_count;
	private LocalDateTime create_date;
	private LocalDateTime end_date;
}
