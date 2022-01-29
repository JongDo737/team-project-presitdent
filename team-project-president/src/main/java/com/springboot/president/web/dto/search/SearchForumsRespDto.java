package com.springboot.president.web.dto.search;

import java.util.List;

import com.springboot.president.domain.forums.GetForums;
import com.springboot.president.domain.search.SearchForums;

import lombok.Data;

@Data
public class SearchForumsRespDto {
	private List<SearchForums> forumsList;
	private int listTotalCount;
}
