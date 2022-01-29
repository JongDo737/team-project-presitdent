package com.springboot.president.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SearchController {
	
	@GetMapping("/Search/forums")
	public Object forumsLoad() {
		
		return null;
	}
	@GetMapping("/Search/petitions")
	public Object petitionsLoad() {
		
		return null;
	}
}
