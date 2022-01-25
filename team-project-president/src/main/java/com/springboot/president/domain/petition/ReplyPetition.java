package com.springboot.president.domain.petition;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ReplyPetition {
	private int user_id;
	private int petition_id;
	private String reply;
}
