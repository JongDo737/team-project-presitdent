package com.springboot.president.web.dto.search;

import java.util.List;

import com.springboot.president.domain.search.SearchPetitions;

import lombok.Data;

@Data
public class SearchPetitionRespDto {
	private List<SearchPetitions> petitionsList;
	private int listTotalCount;
}
