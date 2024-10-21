package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PetsitterProfile
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="petsitterprofile.action")
	public String petsitterProfile()
	{
		return "";
	}
}
