package com.nyngw.sharingInformation.board.dao;

import java.util.List;

import com.nyngw.dto.BoardVO;

public interface BoardDao {
	public List<BoardVO> selectList();
	public List<BoardVO> selectBoardList(int firstRow, int endRow);
	public int selectBoardCount();
}
