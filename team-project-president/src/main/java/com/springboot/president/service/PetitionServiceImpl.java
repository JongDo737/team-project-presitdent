package com.springboot.president.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.petition.GetPetitions;
import com.springboot.president.domain.petition.Petition;
import com.springboot.president.domain.petition.PetitionRepository;
import com.springboot.president.web.dto.GetPetitionRespDto;
import com.springboot.president.web.dto.PetitionReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PetitionServiceImpl implements PetitionService{
	
	private final PetitionRepository petitionRepository;
	
	@Override
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto) {
		// tag1, tag2, tag3 합치기 나중에 #으로 구분할꺼임
		String tag = null;
		tag = petitionReqDto.getTag1() + petitionReqDto.getTag2() + petitionReqDto.getTag3();
		
		// 엔티티 생성
		Petition petitionEntity = petitionReqDto.toEntity(principalDetails.getUser().getId(), tag);
		System.out.println(petitionEntity);
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
	
	
	@Override
	public GetPetitionRespDto GetPetitionByKategorie(String kategorie) {
		//db에서 가져온 petitionList를 담는 곳
		List<GetPetitions> petitionList;
		//List 반환하는 Dto
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		//전체 클릭했을 때
		if(kategorie.equals("전체")) {
			petitionList = petitionRepository.GetPetitionAll();
			
		}
		//그 외 카테고리 선택했을 때
		else {
			petitionList = petitionRepository.GetPetitionByKategorie(kategorie);			
		}
		
		getPetitionRespDto.setPetitionsList(petitionList);
		
		//테스트 코드
//		System.out.println("db에서 가져온 list"+petitionList);
//		System.out.println("getPetitionRespDto List :" + getPetitionRespDto.getPetitionsList());
		return getPetitionRespDto;
	}
	

}
