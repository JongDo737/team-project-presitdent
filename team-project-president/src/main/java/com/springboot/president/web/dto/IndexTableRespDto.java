package com.springboot.president.web.dto;

import lombok.Data;

@Data
public class IndexTableRespDto {
	private Object deathCnt;
	private Object decideCnt;
	
	//오늘 백신 맞은사람
	private Object todayFirstCnt;
	private Object todaySecondCnt;
	
	//백신 퍼센트
	private String totalFirstPer;
	private String totalSecondPer;
	
	
	//전체 백신 맞은사람
	private Object totalFirstCnt;
	private Object totalSecondCnt;
	
	//60세이상 접종률 1차 2차
	private Object sixtyFirstCnt;
	private Object sixtySecondCnt;
	private Object sixtytotal;
	
	private String date;
	
}
