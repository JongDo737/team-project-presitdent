package com.springboot.president.config.oauth2;

import java.util.Map;
import java.util.UUID;

import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.config.oauth2.provider.Oauth2UserDto;
import com.springboot.president.domain.user.User;
import com.springboot.president.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

// 로그인한다고 했을 때 들어오는 곳
// 네이버 구글 페이스북 카카오인지 구분하고 회원가입 여부를 판단

@RequiredArgsConstructor
@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService{	
	private final UserRepository userRepository;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest);
		System.out.println(oAuth2User);
		Map<String, Object> oAuth2UserAttributes = oAuth2User.getAttributes();
		String provider = userRequest.getClientRegistration().getRegistrationId();
		String providerId = null;
		
		//네이버 인지 확인
		if(provider.equals("naver")) {
			oAuth2UserAttributes = (Map<String, Object>)oAuth2UserAttributes.get("response");
			providerId = (String)oAuth2UserAttributes.get("id");
		}			
		//구글인지 확인
		else if(provider.equals("google")) {
			providerId = (String)oAuth2UserAttributes.get("sub");
		}
		else if(provider.equals("facebook")) {
			providerId = (String)oAuth2UserAttributes.get("id");
		}
		else if(provider.equals("kakao")) {
			providerId = (String)oAuth2UserAttributes.get("id");
		}
		
		else {
			providerId = UUID.randomUUID().toString().replaceAll("-", "");
		}
		System.out.println(oAuth2UserAttributes);
		//naver_FOWAENOIENGOISVJV9482EJE9Z83WH 이렇게 이름이 들어갈꺼임
		String username = provider + "_" + providerId;
		System.out.println(username);
		Oauth2UserDto oauth2UserDto = Oauth2UserDto.builder()
				.username(username)
				.provider(provider)
				.role("ROLE_USER")
				.build();
		
		// username 으로 db에 검색
		User userEntity = userRepository.getUserByUsername(username);
		// user가 없을경우
		if(userEntity == null) {
			userEntity = oauth2UserDto.toEntity();
			userRepository.insertUser(userEntity);
			userEntity = userRepository.getUserByUsername(username);
		}
		
		// 세션에 현재 oauth2 로그인값을 담아준다.
		return new PrincipalDetails(userEntity, oAuth2UserAttributes);
	}

}
