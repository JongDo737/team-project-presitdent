package com.springboot.president.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.forums.Forums;
import com.springboot.president.domain.forums.ForumsRepository;
import com.springboot.president.domain.forums.GetForums;
import com.springboot.president.web.dto.ForumsReqDto;
import com.springboot.president.web.dto.ForumsRespDto;
import com.springboot.president.web.dto.GetForumsRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ForumsServiceImpl implements ForumsService{
	
	private final ForumsRepository forumsRepository;
	// 토론 제안하기
	@Override
	public boolean insertForums(PrincipalDetails principalDetails, ForumsReqDto forumsReqDto) {
		
		// 엔티티 생성
		Forums forumsEntity = forumsReqDto.toEntity(principalDetails.getUser().getId());
		int insertResultNum = forumsRepository.insertForums(forumsEntity);
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
	

	// 전체 토론 데이터 불러오기
	@Override
	public GetForumsRespDto getForumsAll() {
		
		// db에서 가져올 전체 리스트를 담는 list
		List<GetForums> forumsListAll;
		
		// list를 반환하는 Dto
		GetForumsRespDto getforumsRespDto = new GetForumsRespDto();
		forumsListAll = forumsRepository.getForumsAll();
		getforumsRespDto.setForumsList(forumsListAll);
		return getforumsRespDto;
	}

	
	@Override
	public GetForumsRespDto getForumsPage(int page) {
		List<GetForums> forumsListAll;
		GetForumsRespDto getForumsRespDto = new GetForumsRespDto();
		forumsListAll = forumsRepository.getForumsAll();
		
		int forumsTotalCount = forumsListAll.size();
		int forumsGroupSize = forumsTotalCount % 15 == 0 ? forumsTotalCount / 15 : (forumsTotalCount / 15) + 1;
		
		// 리스트
		List<GetForums> forumsViewList = new ArrayList<GetForums>();
		
		int startIndex = (page - 1) * 15;
		int endIndex = 0;
		
		if (page < forumsGroupSize) {
			endIndex = startIndex + 15;
			for (int i = startIndex; i < endIndex; i++) {
				// 자료가 있는경우
				forumsViewList.add(forumsListAll.get(i));

			}
		} else if (page == forumsGroupSize) {
			endIndex = startIndex + (forumsTotalCount % 15);
			for (int i = startIndex; i < endIndex; i++) {
				// 자료가 있는경우
				forumsViewList.add(forumsListAll.get(i));

			}
		} else {
			// 페이지가 전체자료보다 많을때 리스트에 아무것도 넣어주지 않는다.
		}
		getForumsRespDto.setForumsList(forumsViewList);
		return getForumsRespDto;
	}


	
	// 개별 토론 데이터 불러오기
	@Override
	public ForumsRespDto getForumsByForumsId(PrincipalDetails principalDetails, int forums_id) {
		GetForums forumsEntity = forumsRepository.getForumsByForumsId(forums_id);
		ForumsRespDto forumsRespDto = forumsEntity.toResp();
		return forumsRespDto;
	}


	// 베스트토론 불러오기
	@Override
	public GetForumsRespDto getBestForumsByAgreeCount(String startDate, String endDate) {
		List<GetForums> forumsEntity = forumsRepository.getBestForumsByAgreeCountWeeklyFirst(startDate,endDate);
		System.out.println(forumsEntity);
		GetForumsRespDto getForumsRespDto = new GetForumsRespDto();
		getForumsRespDto.setForumsList(forumsEntity);
		return getForumsRespDto;
	}


	@Override
	public GetForumsRespDto getBestForumsByReplyCount(String startDate, String endDate) {
		List<GetForums> forumsEntity = forumsRepository.getBestForumsByReplyCount(startDate,endDate);
		System.out.println(forumsEntity);
		GetForumsRespDto getForumsRespDto = new GetForumsRespDto();
		getForumsRespDto.setForumsList(forumsEntity);
		return getForumsRespDto;
	}

	

}
