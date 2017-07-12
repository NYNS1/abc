package com.nyngw.electronicApproval.individualDocumentBox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/electronicApproval/individualDocumentBox")
public class IndividualDocumentBoxController {

	@RequestMapping("/submitApprovalBox")
	public String submitApprovalBox(){
		return "electronicApproval/individualDocumentBox/submitApprovalBox";
	}
	
	@RequestMapping("/outbox")
	public String outbox(){
		return "electronicApproval/individualDocumentBox/outbox";
	}
	
	@RequestMapping("/completeApprovalBox")
	public String completeApprovalBox(){
		return "electronicApproval/individualDocumentBox/completeApprovalBox";
	}
	
	@RequestMapping("/refusedApprovalBox")
	public String refusedApprovalBox(){
		return "electronicApproval/individualDocumentBox/refusedApprovalBox";
	}
}
