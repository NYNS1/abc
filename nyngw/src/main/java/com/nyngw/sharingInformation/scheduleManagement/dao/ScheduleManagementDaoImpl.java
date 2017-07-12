package com.nyngw.sharingInformation.scheduleManagement.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class ScheduleManagementDaoImpl implements ScheduleManagementDao {
	@Autowired
	private SqlSession sqlSession;
}
