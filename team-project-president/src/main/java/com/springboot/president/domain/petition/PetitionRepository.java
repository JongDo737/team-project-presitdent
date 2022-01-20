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
}
