package com.springboot.president.web.dto;

import com.springboot.president.domain.petition.Petition;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class PetitionReqDto {
	private String title;
	private String kategorie;
	private String content;
	private String link;
	private String tag1;
	private String tag2;
	private String tag3;
	
	public Petition toEntity(int user_id, String tag) {
		return Petition.builder()
						.user_id(user_id)
						.title(title)
						.kategorie(kategorie)
						.content(content)
						.link(link)
						.tag(tag)
						.build();
	}
	
}
