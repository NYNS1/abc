package com.nyngw.electronicApproval.approvalProgress.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/electronicApproval/approvalProgress")
public class ApprovalProgressController {

	@RequestMapping("/waitingApproval")
	public String watingApproval(){
		return "electronicApproval/approvalProgress/waitingApproval";
	}
	
	@RequestMapping("/completeApproval")
	public String completeApproval(){
		return "electronicApproval/approvalProgress/completeApproval";
	}
	
	@RequestMapping("/refusedApproval")
	public String refusedApproval(){
		return "electronicApproval/approvalProgress/refusedApproval";
	}
}
