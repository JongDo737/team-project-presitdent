package com.springboot.president.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

	@GetMapping("/auth/signin")
	public String siginForm() {
		return "auth/signin";
	}
}
