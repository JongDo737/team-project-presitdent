package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.service.PetitionService;
import com.springboot.president.web.dto.PetitionReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PetitionController {
	
	private final PetitionService petitionService;
	
	@GetMapping("/petitions/Step2")
	public String petitionStep2Form() {
		return null;
	}
	@PostMapping("/petitions/Step2/write")
	public Object petitionWrite(@AuthenticationPrincipal PrincipalDetails principalDetails,PetitionReqDto petitionReqDto) {
		boolean insertCheck = petitionService.insertPetition(principalDetails, petitionReqDto);
		return null;
	}
}
