package com.springboot.president.domain.petition;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface PetitionRepository {
	public int insertPetition(Petition petition);
	public List<GetPetitions> GetPetitionByKategorie(String kategorie);
	public List<GetPetitions> GetPetitionAll();
	public List<GetPetitions> GetPetitionByid(int id);
	public List<GetPetitions> GetWaitPetition();
	//전체 최신순
	public List<GetPetitions> GetRecentPetition();
	//전체 추천순
	public List<GetPetitions> GetSuggestionPetition();
	//카테고리 최신순
	public List<GetPetitions> GetRecentPetitionByKategorie(String kategorie);
	//카테고리 추천순
	public List<GetPetitions> GetSuggestionPetitionByKategorie(String kategorie);
}
