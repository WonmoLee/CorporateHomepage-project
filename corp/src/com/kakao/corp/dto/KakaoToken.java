package com.kakao.corp.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class KakaoToken {
	public String token_type;
	public String access_token;
	public long expires_in;
	public String refresh_token;
	public long refresh_token_expires_in;
	public String scope;
}
