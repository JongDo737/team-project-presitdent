package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String petitionWrite(@AuthenticationPrincipal PrincipalDetails principalDetails, PetitionReqDto petitionReqDto) {
		System.out.println(petitionReqDto);
		boolean insertCheck = petitionService.insertPetition(principalDetails, petitionReqDto);
		
		//주소 보내는곳 수정필요
		return "/petitions";
	}
	@GetMapping("/petitions?kategorie={kategorie}")
	public Object getPetitionBykategorie(@RequestParam String kategorie) {
		return null;
	}
	
	
}
