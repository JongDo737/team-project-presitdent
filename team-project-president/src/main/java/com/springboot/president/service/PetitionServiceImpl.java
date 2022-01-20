package com.springboot.president.service;

import java.util.ArrayList;
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

	// 내청원 보기
	@Override
	public GetPetitionRespDto GetPetitionByid(PrincipalDetails principalDetails) {
		//db에서 받아온 list를 담는 객체
		List<GetPetitions> petitionList = petitionRepository.GetPetitionByid(principalDetails.getUser().getId());
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		getPetitionRespDto.setPetitionsList(petitionList);
		
		return getPetitionRespDto;
	}

	//답변 대기중인 청원
	@Override
	public GetPetitionRespDto GetWaitPetition() {
		List<GetPetitions> petitionList = petitionRepository.GetWaitPetition();
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		getPetitionRespDto.setPetitionsList(petitionList);
		return getPetitionRespDto;
	}

	//분류별청원 전체보기
	@Override
	public GetPetitionRespDto GetPetitionBykategorieAndOrder(String kategorie, int page, int order) {
		//기본값 전체 , 1페이지, 최신순보기
		//전체일때 order만 따지고
		//카테고리가 있을땐 카테고리와 order따져서 가져오기
		
		//db에서 가져온 전체 리스트를 담는 곳
				List<GetPetitions> petitionListAll;
				//List 반환하는 Dto
				GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
				
		// 전체일때 최신순, 추천순
		if(kategorie.equals("전체")) {
			if(order == 1) {
				petitionListAll = petitionRepository.GetRecentPetition();
			}
			else{
				petitionListAll = petitionRepository.GetSuggestionPetition();
			}
		}
		// 카테고리 있을때 카테고리, 최신순, 추천순
		else {
			if(order == 1) {
				petitionListAll = petitionRepository.GetRecentPetitionByKategorie(kategorie);
			}
			else{
				petitionListAll = petitionRepository.GetSuggestionPetitionByKategorie(kategorie);
			}
		}
		// 페이지에 보여질 7개씩 담을 List
		List<GetPetitions> petitionList = new ArrayList<GetPetitions>();
		int startIndex = (page-1)*7;
		int endIndex = startIndex + 7;
		for(int i = startIndex; i < endIndex; i++) {
			//자료가 있는경우
			if(petitionListAll.get(i) != null) {
				petitionList.add(petitionListAll.get(i));
			}
			else {
				break;
			}
		}
		System.out.println("petitionList2 : "+petitionList);
		getPetitionRespDto.setPetitionsList(petitionList);
		
		
		
		return getPetitionRespDto;
	}
	

}
