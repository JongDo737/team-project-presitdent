package com.springboot.president.domain.search;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchRepository {
	//토론방
	public List<SearchForums> getForums(String query, String startPeriod, String endPeriod);
	public List<SearchForums> getForumsByTopic(String query, String startPeriod, String endPeriod);
	public List<SearchForums> getForumsByContent(String query, String startPeriod, String endPeriod);
	
	//국민청원
	public List<SearchPetitions> getPetitions(String query, String startPeriod, String endPeriod);
	public List<SearchPetitions> getPetitionsByTitle(String query, String startPeriod, String endPeriod);
	public List<SearchPetitions> getPetitionsByContent(String query, String startPeriod, String endPeriod);
}
