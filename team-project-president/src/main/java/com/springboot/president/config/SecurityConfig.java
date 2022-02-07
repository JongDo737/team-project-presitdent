package com.springboot.president.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.springboot.president.config.oauth2.PrincipalOauth2UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	private final PrincipalOauth2UserService principalOauth2UserService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests() //서버에 요청이 들어오면
			.antMatchers("/petitions/Step2/**","/petitions/Mypage/**", "/petitions/Step1/**","/forums/suggest/**","/forums/reply_write/**", "/forums/selection/**" ) //해당 요청들은
			.authenticated() //모두 인증을 거처야한다.
			.anyRequest() //그 외의 모든 요청은
			.permitAll() //승인해준다.(모두 권한을 허가)
			.and() //그리고
			.formLogin() //로그인 화면은
			.loginPage("/auth/signin") //해당 GET요청으로 응답해주면되고
			.loginProcessingUrl("/auth/signin") //로그인 submit 요청시에 Post요청으로 /auth/signin 요청을 해라.
			.defaultSuccessUrl("/petitions") //로그인에 성공했으면 해당 url로 이동을 해라.
			.and()
			.oauth2Login()
			.loginPage("/auth/signin")
			.userInfoEndpoint()
			/*
			 * 1. 코드받기(인증) 
			 * 2. 엑세스 토큰발급(권한)
			 * 3. 사용자프로필 정보를 가져옴
			 * 4. 사용자프로필 정보를 가지고 우리사이트에 자동으로 회원가입을 진행.
			 * 
			 * */
			.userService(principalOauth2UserService)
			.and()
			.defaultSuccessUrl("/petitions");
			
	}
	
	
}
