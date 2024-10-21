package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.LcsDTO;
import com.fin.prj.dto.PetsitterInfoDTO;
import com.fin.prj.dto.SizDTO;
import com.fin.prj.dto.WeekDTO;

public interface IPetsitterProfileDAO
{
	public PetsitterInfoDTO petsitterProfile(String sCd);
	public ArrayList<WeekDTO> workableDay(String sCd);
	public ArrayList<SizDTO> careableSize(String sCd);
	public ArrayList<LcsDTO> lcsList(String sCd);
}
