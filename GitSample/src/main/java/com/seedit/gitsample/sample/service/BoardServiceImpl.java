package com.seedit.gitsample.sample.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seedit.gitsample.sample.dao.BoardDAO;
import com.seedit.gitsample.sample.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

@Autowired
private BoardDAO boardDAO;

public List<BoardDTO> getBoardList(BoardDTO boardDto) throws Exception{
	return boardDAO.getBoardList(boardDto);
}
@Override
public void insertBoard(BoardDTO boardDto) throws Exception{
	boardDAO.insertBoard(boardDto);
}
@Override
public Map<String, Object> selectBoardDetail(BoardDTO boardDto) throws Exception{
	boardDAO.updateHitCnt(boardDto);
	Map<String, Object> resultMap = boardDAO.selectBoardDetail(boardDto);
	
	return resultMap;
}
@Override
public BoardDTO updateBoard(BoardDTO boardDto) throws Exception {
	BoardDTO boardDTO = new BoardDTO();
	
	int updateCnt = boardDAO.updateBoard(boardDto);
	
	if(updateCnt > 0){
		boardDTO.setResult("SUCCESS");
		boardDTO.setCallBackId("updateBoard");
	} else{
		boardDTO.setResult("FAIL");
	}
	
	return boardDTO;
	
}
}
