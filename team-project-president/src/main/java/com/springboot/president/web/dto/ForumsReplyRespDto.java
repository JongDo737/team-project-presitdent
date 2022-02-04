package com.springboot.president.web.dto;

import java.util.List;

import com.springboot.president.domain.forums.GetForumsReply;

import lombok.Data;

@Data
public class ForumsReplyRespDto {
	List<GetForumsReply> replyList;
}
