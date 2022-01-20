package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.service.IndexApiService;
import com.springboot.president.web.dto.IndexTableRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	private final IndexApiService indexApiService;

	@GetMapping({"/", "/index"})
	public String indexForm(Model model) throws Exception {
		
		IndexTableRespDto indexTableRespDto = indexApiService.getIndexApiTotal();
        
		model.addAttribute("indexTableRespDto", indexTableRespDto);
		
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
	

	
}
