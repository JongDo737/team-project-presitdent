package com.springboot.president.domain.forums;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ForumsRepository {
	public int insertForums(Forums forums);
	public GetForums getForumsByForumsId(int forums_id);
	
	public List<GetForums> getForumsAll();
	
	// 12월 4주차 추천Top5
	public List<GetForums> getBestForumsByAgreeCountWeeklyFirst();
	
	
	public List<GetForums> getBestForumsByReplyCount();
}
