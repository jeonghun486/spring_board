package com.seedit.edu.sample.dto;

import java.util.Date;

import lombok.Data;


@Data
public class BoardDTO {

	int boardSeq;
	int boardReRef;
	int boardReLev;
	int boardReseq;
	String boardWriter;
	String boardSubject;
	String boardContent;
	int boardHits;
	String delYn;
	String insUserId;
	Date insDate;
	String updUserId;
	Date updDate;
	
	String result;
	String callBackId;
	String searchType;
	
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

//	public BoardDTO(int boardSeq, int boardReRef, int boardReLev, int boardReseq, String boardWriter,
//			String boardSubject, String boardContent, int boardHits, String delYn, String insUserId, Date insDate,
//			String updUserId, Date updDate) {
//		super();
//		this.boardSeq = boardSeq;
//		this.boardReRef = boardReRef;
//		this.boardReLev = boardReLev;
//		this.boardReseq = boardReseq;
//		this.boardWriter = boardWriter;
//		this.boardSubject = boardSubject;
//		this.boardContent = boardContent;
//		this.boardHits = boardHits;
//		this.delYn = delYn;
//		this.insUserId = insUserId;
//		this.insDate = insDate;
//		this.updUserId = updUserId;
//		this.updDate = updDate;
//	}
//
//	public int getBoardSeq() {
//		return boardSeq;
//	}
//
//	public void setBoardSeq(int boardSeq) {
//		this.boardSeq = boardSeq;
//	}
//
//	public int getBoardReRef() {
//		return boardReRef;
//	}
//
//	public void setBoardReRef(int boardReRef) {
//		this.boardReRef = boardReRef;
//	}
//
//	public int getBoardReLev() {
//		return boardReLev;
//	}
//
//	public void setBoardReLev(int boardReLev) {
//		this.boardReLev = boardReLev;
//	}
//
//	public int getBoardReseq() {
//		return boardReseq;
//	}
//
//	public void setBoardReseq(int boardReseq) {
//		this.boardReseq = boardReseq;
//	}
//
//	public String getBoardWriter() {
//		return boardWriter;
//	}
//
//	public void setBoardWriter(String boardWriter) {
//		this.boardWriter = boardWriter;
//	}
//
//	public String getBoardSubject() {
//		return boardSubject;
//	}
//
//	public void setBoardSubject(String boardSubject) {
//		this.boardSubject = boardSubject;
//	}
//
//	public String getBoardContent() {
//		return boardContent;
//	}
//
//	public void setBoardContent(String boardContent) {
//		this.boardContent = boardContent;
//	}
//
//	public int getBoardHits() {
//		return boardHits;
//	}
//
//	public void setBoardHits(int boardHits) {
//		this.boardHits = boardHits;
//	}
//
//	public String getDelYn() {
//		return delYn;
//	}
//
//	public void setDelYn(String delYn) {
//		this.delYn = delYn;
//	}
//
//	public String getInsUserId() {
//		return insUserId;
//	}
//
//	public void setInsUserId(String insUserId) {
//		this.insUserId = insUserId;
//	}
//
//	public Date getInsDate() {
//		return insDate;
//	}
//
//	public void setInsDate(Date insDate) {
//		this.insDate = insDate;
//	}
//
//	public String getUpdUserId() {
//		return updUserId;
//	}
//
//	public void setUpdUserId(String updUserId) {
//		this.updUserId = updUserId;
//	}
//
//	public Date getUpdDate() {
//		return updDate;
//	}
//
//	public void setUpdDate(Date updDate) {
//		this.updDate = updDate;
//	}
//	
//	
}
