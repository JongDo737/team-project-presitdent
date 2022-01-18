package com.springboot.president.domain.petition;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PetitionRepository {
	public int insertPetition(Petition petition);
}
