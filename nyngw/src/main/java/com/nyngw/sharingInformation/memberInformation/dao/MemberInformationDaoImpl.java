package com.nyngw.sharingInformation.memberInformation.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberInformationDaoImpl implements MemberInformationDao {
	@Autowired
	private SqlSession sqlSession;
}
