package com.springboot.president.service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.web.dto.ForumsReplyReqDto;
import com.springboot.president.web.dto.ForumsReplyRespDto;
import com.springboot.president.web.dto.ForumsReqDto;
import com.springboot.president.web.dto.ForumsRespDto;
import com.springboot.president.web.dto.GetForumsRespDto;

public interface ForumsService {
	public boolean insertForums(PrincipalDetails principalDetails, ForumsReqDto forumsReqDto);
	public GetForumsRespDto getForumsAll();
	public GetForumsRespDto getForumsPage(int page);
	public ForumsRespDto getForumsByForumsId(PrincipalDetails principalDetails, int forums_id);
	public GetForumsRespDto getBestForumsByAgreeCount(String startDate, String endDate);
	public GetForumsRespDto getBestForumsByReplyCount(String startDate, String endDate);
	
	public boolean insertForumsReply(PrincipalDetails principalDetails, ForumsReplyReqDto forumsReplyReqDto,int forums_id);
	public ForumsReplyRespDto getReplyByForumsId(int forums_id, int page);
	
	public void forumsAgree(PrincipalDetails principalDetails,int forums_id, int choose);
}
