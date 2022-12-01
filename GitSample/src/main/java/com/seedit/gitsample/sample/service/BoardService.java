package com.seedit.gitsample.sample.service;

import java.util.List;
import java.util.Map;

import com.seedit.gitsample.sample.dto.BoardDTO;

public interface BoardService {

public List<BoardDTO> getBoardList(BoardDTO boardDto) throws Exception;
	
public void insertBoard(BoardDTO boardDto) throws Exception;

public Map<String, Object> selectBoardDetail(BoardDTO boardDto) throws Exception;

public BoardDTO updateBoard(BoardDTO boardDto) throws Exception;
}
