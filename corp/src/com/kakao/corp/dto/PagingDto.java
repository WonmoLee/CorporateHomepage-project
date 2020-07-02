package com.kakao.corp.dto;

import java.util.List;

import com.kakao.corp.model.VoiceOfCustBoard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PagingDto {
	List<VoiceOfCustBoard> vocBoards;
	int page;
	int vocLastPage;
}
