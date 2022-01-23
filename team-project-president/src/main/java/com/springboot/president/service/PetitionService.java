package com.springboot.president.service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.web.dto.BoardPetitionRespDto;
import com.springboot.president.web.dto.GetPetitionRespDto;
import com.springboot.president.web.dto.PetitionReqDto;
import com.springboot.president.web.dto.ReplyReqDto;

public interface PetitionService {
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto);
	public GetPetitionRespDto GetPetitionByKategorie(String kategorie);
	public GetPetitionRespDto GetPetitionByAgreeCount();
	public GetPetitionRespDto GetPetitionByid(PrincipalDetails principalDetails);
	public BoardPetitionRespDto BoardPetitionByPetitionid(PrincipalDetails principalDetails, int petition_id);
	public boolean insertPetitionReply(PrincipalDetails principalDetails, ReplyReqDto replyReqDto);
	public GetPetitionRespDto GetWaitPetition();
}
