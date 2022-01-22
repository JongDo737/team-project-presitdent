package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.president.config.auth.PrincipalDetails;


@Controller
public class PageController {

	@GetMapping({"/", "/index"})
	public String indexForm() {
		return "index";
	}
	@GetMapping("/auth/signin")
	public String siginForm() {
		return "auth/signin";
	}
	@GetMapping("/petitions/Step2")
	public String petitionsStep2Form() {
		return "petitions/petitions_step2";
	}
	@GetMapping("/petitions")
	public String petitionsForm() {
		return "petitions/petitions";
	}
	@GetMapping("/petitions/Mypage")
	public String petitionsMypageForm() {
		return "petitions/petitions_mypage";
	}
	
	@GetMapping("petitions/step1")
	public String petitionsStep1Form() {
		return "petitions/petitions_step1";
	}
	
}
