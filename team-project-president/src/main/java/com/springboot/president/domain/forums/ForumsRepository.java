package com.springboot.president.domain.forums;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ForumsRepository {
	public int insertForums(Forums forums);
}
