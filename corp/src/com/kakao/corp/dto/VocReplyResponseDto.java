package com.kakao.corp.dto;
import com.kakao.corp.model.VoiceOfCustReply;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VocReplyResponseDto {
	private VoiceOfCustReply vocReply;
	private String username;
	private String userProfile;
}

