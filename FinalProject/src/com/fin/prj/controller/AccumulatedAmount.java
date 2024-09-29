package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IAccumulatedAmountDAO;
import com.fin.prj.dao.IPetsitterMainDAO;
import com.fin.prj.dto.PetsitterInfoDTO;

@Controller
public class AccumulatedAmount
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "accumulatedamountpopup.action")
	public String accumulatedAmountPopUp(String sCd, Model model)
	{
		model.addAttribute("sCd", sCd);
		
		return "/WEB-INF/view/AccumulatedAmountPopUp.jsp";
	}
	
	@RequestMapping(value = "accumulatedamount.action")
	public String accumulatedAmount(String sCd, String year, String month, Model model)
	{
		IAccumulatedAmountDAO dao = sqlSession.getMapper(IAccumulatedAmountDAO.class);
		
		model.addAttribute("accAmount", dao.accumulatedAmount(sCd, year, month));
		model.addAttribute("salList", dao.salaryList(sCd, year, month));
		
		return "/WEB-INF/view/AccumulatedAmountPopUp.jsp";
	}
}
