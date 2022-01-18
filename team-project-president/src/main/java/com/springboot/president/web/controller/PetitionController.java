package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.service.PetitionService;
import com.springboot.president.web.dto.PetitionReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class PetitionController {
	
	private final PetitionService petitionService;
	
	@PostMapping("/petitions/Step2/write")
	public Object petitionWrite(@AuthenticationPrincipal PrincipalDetails principalDetails, PetitionReqDto petitionReqDto) {
		System.out.println(petitionReqDto);
		boolean insertCheck = petitionService.insertPetition(principalDetails, petitionReqDto);
		return null;
	}
}
