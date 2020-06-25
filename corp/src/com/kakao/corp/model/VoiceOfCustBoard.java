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

public class VoiceOfCustBoard {
	private int id; 
	private int userId;
	private String title;
	private String content;
	private int readCount;
	private Timestamp createDate;
}
