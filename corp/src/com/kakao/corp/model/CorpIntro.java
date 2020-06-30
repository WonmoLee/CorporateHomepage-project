package com.kakao.corp.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CorpIntro {

 private String title;
 private String img;
 private String contentTitle;
 private String content;

}
