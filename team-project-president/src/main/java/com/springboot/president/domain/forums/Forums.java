package com.springboot.president.domain.forums;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data

public class Forums {
	private int forums_id;
	private int user_id;
	private String topic;
	private String content;
	private int good_count;
	private int bad_count;
	private LocalDateTime create_date;
	private LocalDateTime end_date;
}
