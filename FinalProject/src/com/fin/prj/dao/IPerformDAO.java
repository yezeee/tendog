package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.PerformedPicDTO;

public interface IPerformDAO
{
	// PIC 등록
	public int picInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);
	
	// 가장 최신에 등록된 PIC
	public String searchPic(String mem_cd);

	// 펫시터 수행사진 insert
	public int performedPicInsert(Map<String, String> map);
	
	// 해당 수행건에 대한 수행사진 list
	public ArrayList<PerformedPicDTO> performedPicList(@Param("memCd") String memCd, @Param("performCd") String performCd);	

	// 펫시터 수행사진 delete
	public int performedPicDelete(String performedPicCd);
}
