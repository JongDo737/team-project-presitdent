package com.springboot.president.domain.petition;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface PetitionRepository {
	public int insertPetition(Petition petition);
	public List<GetPetitions> GetWaitPetition();
	public List<GetPetitions> GetPetitionByid(int id);

	//진행중인 청원
	//전체
	public List<GetPetitions> GetPetitionAll();
	//카테고리별
	public List<GetPetitions> GetPetitionByKategorie(String kategorie);
	//전체 최신순
	public List<GetPetitions> GetRecentPetition();
	//전체 추천순
	public List<GetPetitions> GetSuggestionPetition();
	//카테고리 최신순
	public List<GetPetitions> GetRecentPetitionByKategorie(String kategorie);
	//카테고리 추천순
	public List<GetPetitions> GetSuggestionPetitionByKategorie(String kategorie);
	
	//만료된 청원
	//전체
	public List<GetPetitions> GetPetitionAllOver(String nowDate);
	//카테고리별
	public List<GetPetitions> GetPetitionByKategorieOver(String kategorie, String nowDate);
	//전체 최신순
	public List<GetPetitions> GetRecentPetitionOver(String nowDate);
	//전체 추천순
	public List<GetPetitions> GetSuggestionPetitionOver(String nowDate);
	//카테고리 최신순
	public List<GetPetitions> GetRecentPetitionByKategorieOver(String kategorie, String nowDate);
	//카테고리 추천순
	public List<GetPetitions> GetSuggestionPetitionByKategorieOver(String kategorie, String nowDate);
	
	public List<GetPetitions> GetRecoPetitionAll();
	
	public GetPetitions GetBoardByPetitionId(int petition_id);
	
	//동의하기 입력
	public int insertPetitionReply(ReplyPetition replyPetition);

	public List<GetReply> GetReplyByPetitionId(int petition_id);

	public List<GetPetitions> GetPetitionBySearchString(String searchString);
}
 