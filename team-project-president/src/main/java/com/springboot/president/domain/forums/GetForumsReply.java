package com.springboot.president.domain.forums;

import java.time.LocalDate;

import lombok.Data;

@Data
public class GetForumsReply {
	private int reply_id;
	private LocalDate create_date;
	private String reply;
	private int agree_count;
	private int against_count;
	private int reply_reply_count;
}
