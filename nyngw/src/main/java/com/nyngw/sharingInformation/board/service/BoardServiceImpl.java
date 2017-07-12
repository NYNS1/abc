package com.nyngw.sharingInformation.board.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nyngw.dto.BoardVO;
import com.nyngw.sharingInformation.board.BoardListView;
import com.nyngw.sharingInformation.board.dao.BoardDaoImpl;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDaoImpl boardDao;
	private static final int BOARD_COUNT_PER_PAGE = 5;

	@Override
	public List<BoardVO> selectList() {
		List<BoardVO> board = boardDao.selectList();
		return board;
	}

	@Override
	public BoardListView selectBoardList(int pageNumber) {
		int currentPageNumber = pageNumber;
			
			int boardTotalCount = boardDao.selectBoardCount();

			List<BoardVO> boardList = null;
			int firstRow = 0;
			int endRow = 0;
			if (boardTotalCount > 0) {
				firstRow = (pageNumber - 1) * BOARD_COUNT_PER_PAGE + 1;
				endRow = firstRow + BOARD_COUNT_PER_PAGE - 1;
				boardList = boardDao.selectBoardList(firstRow, endRow);
			} else {
				currentPageNumber = 0;
				boardList = Collections.emptyList();
			}
			return  new BoardListView(boardList, boardTotalCount,
					currentPageNumber, BOARD_COUNT_PER_PAGE, firstRow, endRow);
	}
}
