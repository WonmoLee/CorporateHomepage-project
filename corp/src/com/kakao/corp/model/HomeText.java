package com.kakao.corp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class HomeText {

	private int id;
	private String title;
	private String content;
	private String img;

}
