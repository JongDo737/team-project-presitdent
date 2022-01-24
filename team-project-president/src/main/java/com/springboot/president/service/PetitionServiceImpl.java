package com.springboot.president.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.petition.GetPetitions;
import com.springboot.president.domain.petition.Petition;
import com.springboot.president.domain.petition.PetitionRepository;
import com.springboot.president.web.dto.BoardPetitionRespDto;
import com.springboot.president.web.dto.GetPetitionRespDto;
import com.springboot.president.web.dto.PetitionReqDto;
import com.springboot.president.web.dto.ReplyReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PetitionServiceImpl implements PetitionService {

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
		if (insertResultNum == 1) {
			// 청원게시글 쓰기 성공
			insertCheck = true;
		} else {
			// 청원게시글 쓰기 실패
			insertCheck = false;
		}
		return insertCheck;
	}

	@Override
	public GetPetitionRespDto GetPetitionByKategorie(String kategorie, int only) {
		// db에서 가져온 petitionList를 담는 곳
		List<GetPetitions> petitionList;
		// List 반환하는 Dto
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		// 전체 클릭했을 때
		if (kategorie.equals("전체")) {
			if(only==1) {
				petitionList = petitionRepository.GetPetitionAll();
			}
			else {
				petitionList = petitionRepository.GetPetitionAllOver(nowDate());
				
			}

		}
		// 그 외 카테고리 선택했을 때
		else {
			if(only==1) {
				petitionList = petitionRepository.GetPetitionByKategorie(kategorie);				
			}
			else {
				petitionList = petitionRepository.GetPetitionByKategorieOver(kategorie, nowDate());				
			}
		}
		getPetitionRespDto.setPetitionsList(petitionList);

		// 테스트 코드
//		System.out.println("db에서 가져온 list"+petitionList);
//		System.out.println("getPetitionRespDto List :" + getPetitionRespDto.getPetitionsList());
		return getPetitionRespDto;
	}

	// 내청원 보기

	@Override
	public GetPetitionRespDto GetPetitionByid(PrincipalDetails principalDetails) {
		// db에서 받아온 list를 담는 객체
		List<GetPetitions> petitionList = petitionRepository.GetPetitionByid(principalDetails.getUser().getId());
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		getPetitionRespDto.setPetitionsList(petitionList);

		return getPetitionRespDto;
	}

	// 답변 대기중인 청원
	@Override
	public GetPetitionRespDto GetWaitPetition() {
		List<GetPetitions> petitionList = petitionRepository.GetWaitPetition();
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		getPetitionRespDto.setPetitionsList(petitionList);
		return getPetitionRespDto;
	}

	// 분류별청원 전체보기
	@Override
	public GetPetitionRespDto GetPetitionBykategorieAndOrder(String kategorie, int only, int page, int order) {
		// 기본값 전체 ,진행중인 청원, 1페이지, 최신순보기
		// 전체일때 order만 따지고
		// 카테고리가 있을땐 카테고리와 order따져서 가져오기
		
		// db에서 가져온 전체 리스트를 담는 곳
		List<GetPetitions> petitionListAll = null;
		// List 반환하는 Dto
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();

		// 전체일때 최신순, 추천순
		if (kategorie.equals("전체")) {
			//진행중인 청원
			if(only == 1) {
				// 최신순
				if (order == 1) {
					petitionListAll = petitionRepository.GetRecentPetition();
				}
				// 추천순
				else {
					petitionListAll = petitionRepository.GetSuggestionPetition();
				}
				
			}
			//만료된 청원
			else {
				// 최신순
				if (order == 1) {
					petitionListAll = petitionRepository.GetRecentPetitionOver(nowDate());
				}
				// 추천순
				else {
					petitionListAll = petitionRepository.GetSuggestionPetitionOver(nowDate());
				}
			}
		}
		// 카테고리 있을때 카테고리, 최신순, 추천순
		else {
			//진행중인 청원
			if(only == 1) {
				// 카테고리, 최신순
				if (order == 1) {
					petitionListAll = petitionRepository.GetRecentPetitionByKategorie(kategorie);
				}
				// 카테고리, 추천순
				else {
					petitionListAll = petitionRepository.GetSuggestionPetitionByKategorie(kategorie);
				}
			}
			//만료된 청원
			else {
				if (order == 1) {
					petitionListAll = petitionRepository.GetRecentPetitionByKategorieOver(kategorie,nowDate());
				}
				// 카테고리, 추천순
				else {
					petitionListAll = petitionRepository.GetSuggestionPetitionByKategorieOver(kategorie,nowDate());
				}
			}
		}
		int petitionTotalCount = petitionListAll.size();
		int petitionGroupSize = petitionTotalCount % 7 == 0 ? petitionTotalCount / 7 : (petitionTotalCount / 7) + 1;

		// 페이지에 보여질 7개씩 담을 List
		List<GetPetitions> petitionList = new ArrayList<GetPetitions>();

		int startIndex = (page - 1) * 7;
		int endIndex = 0;

		// 페이지가 1일떄 0~6 페이지가 2일때 7~13
		if (page < petitionGroupSize) {
			endIndex = startIndex + 7;
			for (int i = startIndex; i < endIndex; i++) {
				// 자료가 있는경우
				petitionList.add(petitionListAll.get(i));

			}
		} else if (page == petitionGroupSize) {
			endIndex = petitionTotalCount % 7;
			for (int i = startIndex; i < endIndex; i++) {
				// 자료가 있는경우
				petitionList.add(petitionListAll.get(i));
				
			}
		} else {
			// 페이지가 전체자료보다 많을때 리스트에 아무것도 넣어주지 않는다.
		}
		getPetitionRespDto.setPetitionsList(petitionList);

		return getPetitionRespDto;
	}
	
	
	@Override
	public GetPetitionRespDto GetPetitionByAgreeCount(int page) {
		
		List<GetPetitions> petitionList;
		GetPetitionRespDto getPetitionRespDto = new GetPetitionRespDto();
		petitionList = petitionRepository.GetRecoPetitionAll();
		
		int petitionTotalCount = petitionList.size();
		int petitionGroupSize = petitionTotalCount % 15 == 0 ? petitionTotalCount / 15 : (petitionTotalCount / 15) + 1;
		
		
		// 15개 리스트
		List <GetPetitions> recoViewList = new ArrayList<GetPetitions>();
		
		int startIndex = (page - 1) * 15;
		int endIndex = 0;
		
		// 페이지가 1일떄 0~6 페이지가 2일때 7~13
				if (page < petitionGroupSize) {
					endIndex = startIndex + 15;
					for (int i = startIndex; i < endIndex; i++) {
						// 자료가 있는경우
						recoViewList.add(petitionList.get(i));

					}
				} else if (page == petitionGroupSize) {
					endIndex = petitionTotalCount % 15;
					for (int i = startIndex; i < endIndex; i++) {
						// 자료가 있는경우
						recoViewList.add(petitionList.get(i));
						
					}
				} else {
					// 페이지가 전체자료보다 많을때 리스트에 아무것도 넣어주지 않는다.
				}
		getPetitionRespDto.setPetitionsList(recoViewList);
		System.out.println(getPetitionRespDto);
		return getPetitionRespDto;
	}
	
	public String nowDate() {
		// 오늘 날짜 설정
		Calendar calendar = Calendar.getInstance();
	
		// 보기 불편하기 때문에 형식을 만들어서 사용할 수 있다.
		// 날짜로 변환 방법 지정
		DateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd");
		// 현재 시간을 내가 정한 format 형식으로 변환
		String date = dateFormat.format(calendar.getTimeInMillis());
		return date;
	}


	@Override
	public BoardPetitionRespDto BoardPetitionByPetitionid(PrincipalDetails principalDetails, int petition_id) {
		// 데이터 담기
		GetPetitions petitionEntity = petitionRepository.GetBoardByPetitionId(petition_id);
		BoardPetitionRespDto boardPetitionRespDto = petitionEntity.toResp(principalDetails.getUser().getId());
		return boardPetitionRespDto;
	}


	@Override
	public boolean insertPetitionReply(PrincipalDetails principalDetails, ReplyReqDto replyReqDto) {
		Petition replyEntity = replyReqDto.toReplyEntity(principalDetails.getUser().getId(),1);
		int result = petitionRepository.insertPetition(replyEntity);
		System.out.println(result);
		boolean replyResult;
		if(result == 1) {
			replyResult = true;
		}else {
			replyResult = false;
		}
		return replyResult;
		
	}



}


