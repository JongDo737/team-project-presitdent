package com.springboot.president.service;

import java.util.HashMap;
import java.util.List;

import com.springboot.president.web.dto.IndexTableRespDto;

public interface IndexApiService {
	public IndexTableRespDto getIndexApiTotal() throws Exception;
	
	public void getIndexApi2() throws Exception;
	public List<HashMap<String, String>> getResultMap2(String data) throws Exception;
	
	public void getIndexApi3() throws Exception;
	public List<HashMap<String, String>> getResultMap3(String data) throws Exception;
}
