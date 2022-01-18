package com.springboot.president.service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.web.dto.PetitionReqDto;

public interface PetitionService {
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto);
}
