package com.seedit.gitsample.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.seedit.gitsample.common.AbstractDAO;
import com.seedit.gitsample.sample.dto.BoardDTO;

@Repository
public class BoardDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<BoardDTO> getBoardList(BoardDTO boardDto) throws Exception{
		return selectList("sampleBoard.getBoardList", boardDto);
	}
	
	public void insertBoard(BoardDTO boardDto) throws Exception{
		insert("sampleBoard.insertBoard", boardDto);
	}
	
	public void updateHitCnt(BoardDTO boardDto) throws Exception{
		update("sampleBoard.updateHitCnt", boardDto);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(BoardDTO boardDto) throws Exception{
		return (Map<String, Object>) selectOne("sampleBoard.selectBoardDetail", boardDto);
	}
	
	public int updateBoard(BoardDTO boardDto) throws Exception{
		return (Integer) update("sampleBoard.updateBoard", boardDto);
	}
}
