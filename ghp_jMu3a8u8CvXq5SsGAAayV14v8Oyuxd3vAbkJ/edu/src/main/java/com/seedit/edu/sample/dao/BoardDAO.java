package com.seedit.edu.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.seedit.edu.common.AbstractDAO;
import com.seedit.edu.sample.dto.BoardDTO;

@Repository
public class BoardDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<BoardDTO> getBoardList(BoardDTO boardDto) throws Exception {
		return selectList("BoardList.getBoardList", boardDto);
	}
	
	public void insertBoard(BoardDTO boardDto) throws Exception{
		insert("BoardList.insertBoard", boardDto);
	}
	
	public int updateHitCnt(BoardDTO boardDto) throws Exception{
		return (int) update("BoardList.updateHitCnt", boardDto);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(BoardDTO boardDto) throws Exception{
		return (Map<String, Object>) selectOne("BoardList.selectBoardDetail", boardDto);
	}
	
	public void updateBoard(BoardDTO boardDto) throws Exception{
		update("BoardList.updateBoard", boardDto);
	}
	
	public void deleteBoard(BoardDTO boardDto) throws Exception{
		update("BoardList.deleteBoard", boardDto);
	}
//	public int updateBoard(BoardDTO boardDto) throws Exception{
//		return (int) update("BoardList.updateBoard", boardDto);
//	}
}
