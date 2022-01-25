package com.springboot.president.service;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.forums.Forums;
import com.springboot.president.domain.forums.ForumsRepository;
import com.springboot.president.web.dto.ForumsReqDto;

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

}
