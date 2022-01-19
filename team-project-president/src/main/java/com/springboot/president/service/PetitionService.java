package com.springboot.president.service;

import java.util.List;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.petition.GetPetitions;
import com.springboot.president.web.dto.GetPetitionRespDto;
import com.springboot.president.web.dto.PetitionReqDto;

public interface PetitionService {
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto);
	public GetPetitionRespDto GetPetitionByKategorie(String kategorie);
	public GetPetitionRespDto GetPetitionByid(PrincipalDetails principalDetails);
	
}
