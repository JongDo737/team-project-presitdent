package com.springboot.president.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.president.config.auth.PrincipalDetails;
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
	
	@GetMapping("/forums/reply")
	public Object getReplyList(@RequestParam int forums_id,@RequestParam int page) {
		return forumsService.getReplyByForumsId(forums_id,page);
		
	}
	
	@GetMapping("/forums/selection/board")
	public Object forumsAgree(@AuthenticationPrincipal PrincipalDetails principalDetails, @RequestParam int forums_id, @RequestParam int choose) {
		if(principalDetails.getUser() == null) {
			// AuthExeption 실행
		}
		forumsService.forumsAgree(principalDetails, forums_id, choose);
		return null;
	}
}
