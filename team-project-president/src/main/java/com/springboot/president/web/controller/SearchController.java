package com.springboot.president.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.president.service.SearchService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class SearchController {
	private final SearchService searchService;
	@GetMapping("/Search/forums")
	public Object forumsLoad(@RequestParam String query, @RequestParam int kategorie, @RequestParam int target, @RequestParam String startPeriod, @RequestParam String endPeriod ) {
		
		return searchService.searchForums(query, kategorie, target, startPeriod, endPeriod);
	}
	@GetMapping("/Search/petitions")
	public Object petitionsLoad(@RequestParam String query, @RequestParam int kategorie, @RequestParam int target, @RequestParam String startPeriod, @RequestParam String endPeriod) {

		return searchService.searchPetitions(query, kategorie, target, startPeriod, endPeriod);
	}
}
