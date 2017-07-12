package com.nyngw.humanResource.dalManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/humanResource/dalManagement")
public class DalManagementController {
	
	@RequestMapping("/hrm")
	public String hrm(){
		return "humanResource/dalManagement/hrm";
	}
}
