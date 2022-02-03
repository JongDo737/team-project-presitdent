package com.springboot.president.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.president.service.ForumsService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class ForumsController {

	private final ForumsService forumsService;
	
	
	
	@GetMapping("/forums/list")
	public Object getForumsPage(@RequestParam int page) {
		return forumsService.getForumsPage(page);
	}
	
	@GetMapping("/best_forums/list")
	public Object getBestForumsByAgreeCount(@RequestParam String startDate, @RequestParam String endDate) {

		return forumsService.getBestForumsByAgreeCount(startDate,endDate);
	}
	@GetMapping("/best_forums/reply")
	public Object getBestForumsByReplyCount(@RequestParam String startDate, @RequestParam String endDate) {
		return forumsService.getBestForumsByReplyCount(startDate,endDate);
	}
}
