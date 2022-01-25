package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.service.ForumsService;
import com.springboot.president.web.dto.ForumsReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class ForumsController {

	private final ForumsService forumsService;
	@PostMapping("/forums/suggest/write")
	public String petitionWrite(@AuthenticationPrincipal PrincipalDetails principalDetails, ForumsReqDto forumsReqDto) {
		boolean insertCheck = forumsService.insertForums(principalDetails, forumsReqDto);
		
		//주소 보내는곳 수정필요
		return "/forums";
	}
}
