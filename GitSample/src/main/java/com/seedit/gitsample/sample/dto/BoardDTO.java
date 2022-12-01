package com.seedit.gitsample.sample.dto;

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
	
	
}
