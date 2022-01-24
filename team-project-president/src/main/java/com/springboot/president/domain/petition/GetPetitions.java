package com.springboot.president.domain.petition;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.springboot.president.web.dto.BoardPetitionRespDto;

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
	
	private	int petition_id;
	private String title;
	private String kategorie;
	private String content;
	private String link;
	private String tag;
	private int agree_count;
	private LocalDate create_date;
	private LocalDate end_date;
	
	//to resp 만들기
	public BoardPetitionRespDto toResp() {
		return BoardPetitionRespDto.builder()
													.petition_id(petition_id)
													.title(title)
													.provider(provider)
													.kategorie(kategorie)
													.content(content)
													.link(link)
													.tag(tag)
													.agree_count(agree_count)
													.create_date(create_date)
													.end_date(end_date)
													.build();
	}
}
