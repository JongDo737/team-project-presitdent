package com.springboot.president.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.president.domain.search.SearchForums;
import com.springboot.president.domain.search.SearchPetitions;
import com.springboot.president.domain.search.SearchRepository;
import com.springboot.president.web.dto.search.SearchForumsRespDto;
import com.springboot.president.web.dto.search.SearchPetitionRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class SearchServiceImpl implements SearchService{
	
	private final SearchRepository searchRepository;
	
	@Override
	public SearchForumsRespDto searchForums(String query, int kategorie, int target, String startPeriod, String endPeriod) {
		List<SearchForums> forumstotalList = new ArrayList<SearchForums>();
		List<SearchForums> forumsToRespList = new ArrayList<SearchForums>();
		
		SearchForumsRespDto searchForumsRespDto = new SearchForumsRespDto();
		
		// 통합검색 (3개씩)
		if(kategorie == 0) {
			// 제목 + 내용 검색
			if(target == 0) {
				forumstotalList = searchRepository.getForums(query, startPeriod, endPeriod);
				
			}
			// 제목검색
			else if(target == 1) {
				forumstotalList = searchRepository.getForumsByTopic(query, startPeriod, endPeriod);
			}
			// 내용검색
			else {
				forumstotalList = searchRepository.getForumsByContent(query, startPeriod, endPeriod);
				
			}
			for(int i=0; i<3 && i<forumstotalList.size(); i++) {
				forumsToRespList.add(forumstotalList.get(i));
			}
			
		}
		// 토론방 검색
		else {
			if(target == 0) {
				forumstotalList = searchRepository.getForums(query, startPeriod, endPeriod);
				
			}
			// 제목검색
			else if(target == 1) {
				forumstotalList = searchRepository.getForumsByTopic(query, startPeriod, endPeriod);
			}
			// 내용검색
			else {
				forumstotalList = searchRepository.getForumsByContent(query, startPeriod, endPeriod);
				
			}
			forumsToRespList = forumstotalList;
		}
		
		
		
		searchForumsRespDto.setForumsList(forumsToRespList);
		searchForumsRespDto.setListTotalCount(forumstotalList.size());
		
		return searchForumsRespDto;
	}

	@Override
	public SearchPetitionRespDto searchPetitions(String query, int kategorie, int target, String startPeriod, String endPeriod) {
		List<SearchPetitions> petitionstotalList = new ArrayList<SearchPetitions>();
		List<SearchPetitions> petitionsRespList = new ArrayList<SearchPetitions>();
		SearchPetitionRespDto searchPetitionRespDto = new SearchPetitionRespDto();
		
		// 통합검색 (3개씩)
		if(kategorie == 0) {
			// 제목 + 내용 검색
			if(target == 0) {
				petitionstotalList = searchRepository.getPetitions(query, startPeriod, endPeriod);
				
			}
			// 제목검색
			else if(target == 1) {
				petitionstotalList = searchRepository.getPetitionsByTitle(query, startPeriod, endPeriod);
			}
			// 내용검색
			else {
				petitionstotalList = searchRepository.getPetitionsByContent(query, startPeriod, endPeriod);
				
			}
			for(int i=0; i<3 && i<petitionstotalList.size(); i++) {
				petitionsRespList.add(petitionstotalList.get(i));
			}
			
		}
		// 국민청원 검색
		else {
			if(target == 0) {
				petitionstotalList = searchRepository.getPetitions(query, startPeriod, endPeriod);
				
			}
			// 제목검색
			else if(target == 1) {
				petitionstotalList = searchRepository.getPetitionsByTitle(query, startPeriod, endPeriod);
			}
			// 내용검색
			else {
				petitionstotalList = searchRepository.getPetitionsByContent(query, startPeriod, endPeriod);
				
			}
			petitionsRespList = petitionstotalList;
		}
		
		
		searchPetitionRespDto.setPetitionsList(petitionsRespList);
		searchPetitionRespDto.setListTotalCount(petitionstotalList.size());
		return searchPetitionRespDto;
	}

}
