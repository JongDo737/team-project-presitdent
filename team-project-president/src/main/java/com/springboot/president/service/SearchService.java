package com.springboot.president.service;

import com.springboot.president.web.dto.search.SearchForumsRespDto;
import com.springboot.president.web.dto.search.SearchPetitionRespDto;

public interface SearchService {
	public SearchForumsRespDto searchForums(String query, int kategorie, int target, String startPeriod, String endPeriod);
	public SearchPetitionRespDto searchPetitions(String query, int kategorie, int target, String startPeriod, String endPeriod);
}
