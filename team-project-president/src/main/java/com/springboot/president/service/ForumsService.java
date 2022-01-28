package com.springboot.president.service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.web.dto.ForumsReqDto;
import com.springboot.president.web.dto.ForumsRespDto;
import com.springboot.president.web.dto.GetForumsRespDto;

public interface ForumsService {
	public boolean insertForums(PrincipalDetails principalDetails, ForumsReqDto forumsReqDto);
	public GetForumsRespDto getForumsAll();
	public GetForumsRespDto getForumsPage(int page);
	public ForumsRespDto getForumsByForumsId(PrincipalDetails principalDetails, int forums_id);
}
