package com.seedit.edu.common.staticValue;

public enum BoardUINameEnum {
	
	JSP_BOARD_WRITE("/boardWrite"),
	JSP_BOARD_LIST("/boardList"),
	JSP_BOARD_DETAIL("/boardDetail"),
	JSP_BOARD_UPDATE("/boardUpdate");
	
	private String jspFileName;
	
	BoardUINameEnum(String code){
		this.jspFileName= code;
	}
	
	public String getJSPFileName(){
		return this.jspFileName;
	}
}
