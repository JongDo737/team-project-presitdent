package com.springboot.president.domain.forums;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ForumsRepository {
	public int insertForums(Forums forums);
	
	public GetForums getForumsByForumsId(int forums_id);
	
	public List<GetForums> getForumsAll();
	public List<GetForums> getBestForumsByAgreeCountWeeklyFirst(String startDate, String endDate);
	
	
	public List<GetForums> getBestForumsByReplyCount(String startDate, String endDate);
	
	public int insertForumsReply(ReplyForums replyForums);
	
	public List<GetForumsReply> getReplyByForumsId(int forums_id);
}
