package com.fin.prj.controller;

import java.util.Calendar;

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
	public String accumulatedAmountPopUp(String sCd, Model model, String year, String month)
	{
		Calendar cal = Calendar.getInstance();
		
		String nowYear = Integer.toString(cal.get(Calendar.YEAR));
		String nowMonth = Integer.toString(cal.get(Calendar.MONTH) + 1);
		
		IAccumulatedAmountDAO dao = sqlSession.getMapper(IAccumulatedAmountDAO.class);
		
		if (year==null || month==null)
		{			
			model.addAttribute("accAmount", dao.accumulatedAmount(sCd, nowYear, nowMonth));
			model.addAttribute("salList", dao.salaryList(sCd, nowYear, nowMonth));	
			model.addAttribute("nowYear", nowYear);
			model.addAttribute("nowMonth", nowMonth);
			model.addAttribute("selectedYear", nowYear);
			model.addAttribute("selectedMonth", nowMonth);
		}
		else
		{
			model.addAttribute("accAmount", dao.accumulatedAmount(sCd, year, month));
			model.addAttribute("salList", dao.salaryList(sCd, year, month));			
			model.addAttribute("nowYear", nowYear);
			model.addAttribute("nowMonth", nowMonth);
			model.addAttribute("selectedYear", year);
			model.addAttribute("selectedMonth", month);
		}

		model.addAttribute("sCd", sCd);
		model.addAttribute("regYear", dao.createAccountYear(sCd));
		
		return "/WEB-INF/view/AccumulatedAmountPopUp.jsp";
	}
	
	
	@RequestMapping(value = "accumulatedamount.action")
	public String accumulatedAmount(String sCd, String year, String month, Model model)
	{
		//IAccumulatedAmountDAO dao = sqlSession.getMapper(IAccumulatedAmountDAO.class);
		
		//model.addAttribute("accAmount", dao.accumulatedAmount(sCd, year, month));
		//model.addAttribute("salList", dao.salaryList(sCd, year, month));
		
		return "redirect:accumulatedamountpopup.action?sCd=" + sCd + "&year=" + year + "&month=" + month;
	}

}
