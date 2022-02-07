package com.springboot.president.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.domain.forums.Forums;
import com.springboot.president.domain.forums.ForumsRepository;
import com.springboot.president.domain.forums.ForumsSelection;
import com.springboot.president.domain.forums.GetForums;
import com.springboot.president.domain.forums.GetForumsReply;
import com.springboot.president.domain.forums.ReplyForums;
import com.springboot.president.web.dto.ForumsReplyReqDto;
import com.springboot.president.web.dto.ForumsReplyRespDto;
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
	
	// 개별 데이터 댓글 쓰기
	@Override
	public boolean insertForumsReply(PrincipalDetails principalDetails, ForumsReplyReqDto forumsReplyReqDto,int forums_id) {
		ReplyForums replyForums = forumsReplyReqDto.toEntity(principalDetails.getUser().getId(), forums_id);
		
		// 1이면 insert 성공 0이면 insert 실패
		int insertCheck = forumsRepository.insertForumsReply(replyForums);
		System.out.println("insertCheck : " + insertCheck);
		// 결과값 담아주기
		boolean resultCheck;
		if(insertCheck == 1) {
			resultCheck = true;
			
		} else {
			resultCheck = false;
		}
		return resultCheck;
	}
	
	
	// 개별 데이터 댓글 불러오기
	@Override
	public ForumsReplyRespDto getReplyByForumsId(int forums_id, int page) {
		List<GetForumsReply> replyListAll = forumsRepository.getReplyByForumsId(forums_id);
		ForumsReplyRespDto forumsReplyRespDto = new ForumsReplyRespDto();
		
		int replyTotalCount = replyListAll.size();
		int replyGroupSize = replyTotalCount % 15 == 0 ? replyTotalCount / 15 : (replyTotalCount / 15) + 1;
		
		List<GetForumsReply> replyList = new ArrayList<GetForumsReply>();
		
		int startIndex = 0;
		int endIndex = 0;
		
		if (page < replyGroupSize) {
			endIndex =  page * 15;
			for (int i = startIndex; i < endIndex; i++) {
				replyList.add(replyListAll.get(i));
				
			}
		} else if (page == replyGroupSize) {

			for (int i = startIndex; i < replyTotalCount; i++) {
				replyList.add(replyListAll.get(i));

			}
		} else {
		}

		forumsReplyRespDto.setReplyList(replyList);
		return forumsReplyRespDto;
	}

	// 베스트토론 불러오기
	@Override
	public GetForumsRespDto getBestForumsByAgreeCount(String startDate, String endDate) {
		List<GetForums> forumsEntity = forumsRepository.getBestForumsByAgreeCountWeeklyFirst(startDate,endDate);
		GetForumsRespDto getForumsRespDto = new GetForumsRespDto();
		getForumsRespDto.setForumsList(forumsEntity);
		return getForumsRespDto;
	}


	@Override
	public GetForumsRespDto getBestForumsByReplyCount(String startDate, String endDate) {
		List<GetForums> forumsEntity = forumsRepository.getBestForumsByReplyCount(startDate,endDate);
		GetForumsRespDto getForumsRespDto = new GetForumsRespDto();
		getForumsRespDto.setForumsList(forumsEntity);
		return getForumsRespDto;
	}


	@Override
	public void forumsAgree(PrincipalDetails principalDetails, int forums_id, int choose) {
		System.out.println(choose);
		ForumsSelection forumsSelection = new ForumsSelection();
		forumsSelection.setForums_id(forums_id);
		if(choose == 1) {
			System.out.println("찬성");
			forumsSelection.setAgree_user_id(principalDetails.getUser().getId());
			forumsRepository.forumsAgree(forumsSelection);
			
		}else {
			System.out.println("반대");
			forumsSelection.setAgainst_user_id(principalDetails.getUser().getId());
			forumsRepository.forumsAginst(forumsSelection);
			
		}
	}


	

	
	

	

}
