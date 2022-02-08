package com.springboot.president.domain.forums;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ReplyForums {
	private int user_id;
	private int forums_id;
	private String reply;
	private int reply_id;
	private String comment;
	
}
