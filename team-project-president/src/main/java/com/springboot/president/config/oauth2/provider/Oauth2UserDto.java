package com.springboot.president.config.oauth2.provider;

import com.springboot.president.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Oauth2UserDto {
	
	private String username;
	private String provider;
	private String role;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.provider(provider)
				.role(role)
				.build();
	}
}
