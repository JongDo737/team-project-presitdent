package com.springboot.president.domain.user;

import java.time.LocalDateTime;


import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class User {
	
	private int id;
	private String username;
	private String provider;
	private String role;
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	

}
