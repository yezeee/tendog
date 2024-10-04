package com.fin.prj.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.PerformDTO;

public interface IAccumulatedAmountDAO
{
	// 해당 펫시터의 가입연도 (SelectBox 범위 지정 시 활용)
	public int createAccountYear(String sCd);
	
	// 누적금액
	public int accumulatedAmount(@Param("sCd") String sCd, @Param("year") String year, @Param("month") String month);
	
	// 정산금 리스트
	public ArrayList<PerformDTO> salaryList(@Param("sCd") String sCd, @Param("year") String year, @Param("month") String month);
}
