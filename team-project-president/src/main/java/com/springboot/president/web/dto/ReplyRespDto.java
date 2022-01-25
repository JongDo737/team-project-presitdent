package com.springboot.president.web.dto;

import java.util.List;

import com.springboot.president.domain.petition.GetReply;

import lombok.Data;

@Data
public class ReplyRespDto {
	List<GetReply> replyList;
}
