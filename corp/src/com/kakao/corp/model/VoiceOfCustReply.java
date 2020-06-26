package com.kakao.corp.model;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class VoiceOfCustReply {
	
	private int id;
	private int userId;
	private int boardId;
	private String content;
	private Timestamp createDate;
	
}
