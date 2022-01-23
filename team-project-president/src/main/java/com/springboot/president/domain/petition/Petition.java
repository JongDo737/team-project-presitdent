package com.springboot.president.domain.petition;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.springboot.president.web.dto.BoardPetitionRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class Petition {
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
	private String reply;
	
	//to resp 만들기
	public BoardPetitionRespDto toResp() {
		return BoardPetitionRespDto.builder()
													.petition_id(petition_id)
													.user_id(user_id)
													.title(title)
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
