package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.service.IndexApiService;
import com.springboot.president.web.dto.IndexTableRespDto;
import com.springboot.president.web.dto.ReplyReqDto;
import com.springboot.president.service.PetitionService;
import com.springboot.president.web.dto.BoardPetitionRespDto;
import com.springboot.president.web.dto.GetPetitionRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	private final IndexApiService indexApiService;
	private final PetitionService petitionService;

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
	
	@GetMapping("/petitions/reco")
	public String recoPetitionsForm() {
		return "petitions/reco_petitions";
	}
	
	@GetMapping("/petitions/{petition_id}")
	public String petitionsBoardForm(@AuthenticationPrincipal PrincipalDetails principalDetails, Model model ,@PathVariable int petition_id) {
		BoardPetitionRespDto boardPetitionRespDto = petitionService.BoardPetitionByPetitionid(principalDetails,petition_id);
		model.addAttribute("boardPetitionRespDto", boardPetitionRespDto);
		return "petitions/petitions_board";
	}
	
	@PostMapping("/petitions/{petition_id}/reply_write")
	public String petitionWrite(@AuthenticationPrincipal PrincipalDetails principalDetails, ReplyReqDto replyReqDto, @PathVariable int petition_id) {
		boolean replyResult = petitionService.insertPetitionReply(principalDetails, replyReqDto, petition_id);
		return "petitions/petitions";
	}
	
	
}
