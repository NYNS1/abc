package com.nyngw.sharingInformation.scheduleManagement.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.nyngw.sharingInformation.scheduleManagement.dao.ScheduleManagementDaoImpl;

public class ScheduleManagementServiceImpl implements ScheduleManagementService {
	@Autowired
	private ScheduleManagementDaoImpl scheduleManagementDaoImpl;
}
