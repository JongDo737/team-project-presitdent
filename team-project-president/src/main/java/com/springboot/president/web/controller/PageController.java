package com.springboot.president.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	@GetMapping("/petition/Step2")
	public String petitionStep2Form() {
		return "petitions/petitions_step2";
	}
	
}
