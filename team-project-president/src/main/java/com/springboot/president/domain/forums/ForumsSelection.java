package com.springboot.president.domain.forums;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ForumsSelection {
	private int forums_id;
	private int user_id;
	private int select_num;
}
