package com.springboot.president.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


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
	
	
}
