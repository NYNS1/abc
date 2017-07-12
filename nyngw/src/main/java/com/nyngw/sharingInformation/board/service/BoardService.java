package com.nyngw.sharingInformation.board.service;

import java.util.List;

import com.nyngw.dto.BoardVO;
import com.nyngw.sharingInformation.board.BoardListView;

public interface BoardService {
	public List<BoardVO> selectList();
	public BoardListView selectBoardList(int pageNumber);
}
