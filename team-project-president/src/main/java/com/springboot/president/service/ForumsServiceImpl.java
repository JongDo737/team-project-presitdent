package com.springboot.president.service;

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

	
	// 개별 토론 데이터 불러오기
	@Override
	public ForumsRespDto getForumsByForumsId(PrincipalDetails principalDetails, int forums_id) {
		GetForums forumsEntity = forumsRepository.getForumsByForumsId(forums_id);
		ForumsRespDto forumsRespDto = forumsEntity.toResp();
		return forumsRespDto;
	}



}
