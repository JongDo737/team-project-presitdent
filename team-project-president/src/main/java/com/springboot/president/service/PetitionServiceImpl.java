package com.springboot.president.service;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.petition.Petition;
import com.springboot.president.domain.petition.PetitionRepository;
import com.springboot.president.web.dto.PetitionReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PetitionServiceImpl implements PetitionService{
	
	private final PetitionRepository petitionRepository;
	
	@Override
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto) {
		Petition petitionEntity = petitionReqDto.toEntity(principalDetails.getUser().getId());
		int insertResultNum = petitionRepository.insertPetition(petitionEntity);
		boolean insertCheck;
		if(insertResultNum == 1) {
			// 청원게시글 쓰기 성공
			insertCheck = true;
		}
		else {
			//청원게시글 쓰기 실패
			insertCheck = false;
		}
		return insertCheck;
	}
	

}
