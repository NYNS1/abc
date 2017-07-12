package com.nyngw.sharingInformation.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.nyngw.dto.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardVO> selectList() {
		List<BoardVO> boardList = null;
		boardList = sqlSession.selectList("selectList");
		return boardList;
	}

	@Override
	public List<BoardVO> selectBoardList(int firstRow, int endRow) {
		int offset = firstRow - 1;
		int limit = endRow - firstRow + 1;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<BoardVO> boardList = (ArrayList<BoardVO>)sqlSession.selectList("selectBoardList","",rowBounds);
		return boardList;
	}

	@Override
	public int selectBoardCount() {
		int result =(Integer) sqlSession.selectOne("selectBoardCount");
		return result;
	}
	
}
