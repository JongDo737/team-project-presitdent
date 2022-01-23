package com.springboot.president.service;

import com.springboot.president.config.auth.PrincipalDetails;
import com.springboot.president.web.dto.BoardPetitionRespDto;
import com.springboot.president.web.dto.GetPetitionRespDto;
import com.springboot.president.web.dto.PetitionReqDto;
import com.springboot.president.web.dto.ReplyReqDto;

public interface PetitionService {
	public boolean insertPetition(PrincipalDetails principalDetails, PetitionReqDto petitionReqDto);

	public GetPetitionRespDto GetPetitionByKategorie(String kategorie,int only);
	public GetPetitionRespDto GetPetitionByid(PrincipalDetails principalDetails);
	public GetPetitionRespDto GetWaitPetition();
	public GetPetitionRespDto GetPetitionBykategorieAndOrder(String kategorie,int only, int page, int order);
	public GetPetitionRespDto GetPetitionByKategorie(String kategorie);
	public GetPetitionRespDto GetPetitionByAgreeCount();
	public BoardPetitionRespDto BoardPetitionByPetitionid(PrincipalDetails principalDetails, int petition_id);
	public boolean insertPetitionReply(PrincipalDetails principalDetails, ReplyReqDto replyReqDto);
}
