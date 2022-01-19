package com.springboot.president.service;

import java.util.List;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.petition.GetPetitions;
import com.springboot.president.web.dto.PetitionReqDto;

public interface PetitionService {
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto);
	public List<GetPetitions> GetPetitionByKategorie(String kategorie);
}
