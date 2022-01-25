package com.springboot.president.web.dto;

import java.util.List;

import com.springboot.president.domain.forums.GetForums;

import lombok.Data;

@Data
public class GetForumsRespDto {
	private List<GetForums> forumsList;

}
