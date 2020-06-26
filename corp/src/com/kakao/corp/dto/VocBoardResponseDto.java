package com.kakao.corp.dto;
import com.kakao.corp.model.VoiceOfCustBoard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VocBoardResponseDto {
	
		private VoiceOfCustBoard vocBoard;
		private String username;
}
