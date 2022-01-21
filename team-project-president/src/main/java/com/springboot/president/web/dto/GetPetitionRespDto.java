package com.springboot.president.web.dto;

import java.util.List;

import com.springboot.president.domain.petition.GetPetitions;

import lombok.Data;

@Data
public class GetPetitionRespDto {
	private List<GetPetitions> petitionsList;
	private int totalPageCount;
}
