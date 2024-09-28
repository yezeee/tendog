package com.fin.prj.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.fin.prj.dao.IPerformDAO;

@Controller
public class PerformController
{
	@Autowired
	private HttpSession session;

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value="petsittingperformform.action")
	public String petsittingPerformForm(Model model, String performCd)
	{
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		IPerformDAO dao = sqlSession.getMapper(IPerformDAO.class);
		
		model.addAttribute("picList", dao.performedPicList(memCd, performCd));
		
		return "/WEB-INF/view/PetsittingPerformForm.jsp";

	}

	@RequestMapping(value="performedpicinsert.action")
	public String performedPicInsert(@RequestParam Map<String, String> map)
	{
		IPerformDAO dao = sqlSession.getMapper(IPerformDAO.class);
		
		String mem_cd = (String) session.getAttribute("memCd");
		
		System.out.println(map);
		System.out.println(mem_cd);
		
		String originalPath = map.get("filePath");

		// 슬래시로 변환된 경로 (필요시)
		String convertedPath = originalPath.replace("\\", "/");

		// 파일명 추출 (확장자 포함)
		String fileNameWithExtension = convertedPath.substring(convertedPath.lastIndexOf("/") + 1);

		map.put("filePath", fileNameWithExtension);

		dao.picInsert(map, mem_cd);

		String pid = dao.searchPic(mem_cd);
		map.put("pid", pid);
		
		System.out.println(map);
		
		dao.performedPicInsert(map);
			
		return "redirect:petsittingperformform.action?performCd=" + map.get("performCd");		
	}
	
}
