package com.springboot.president.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
	public User getUserByUsername(String username);
	public int insertUser(User user);
}
