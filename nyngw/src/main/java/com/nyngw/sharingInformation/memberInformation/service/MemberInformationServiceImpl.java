package com.nyngw.sharingInformation.memberInformation.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.nyngw.sharingInformation.memberInformation.dao.MemberInformationDaoImpl;

public class MemberInformationServiceImpl implements MemberInformationService {
	@Autowired
	private MemberInformationDaoImpl memberInformationDaoImpl;
}
