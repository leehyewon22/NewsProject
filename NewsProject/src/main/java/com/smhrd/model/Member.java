package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@NoArgsConstructor
@RequiredArgsConstructor // final or @NonNull 파라미터만 받는 생성자
@Getter
@AllArgsConstructor // 변수(String타입) 받아주는 생성자 
public class Member {
	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String name;
	private String catseq;
	private String joindate;
	private String memtype;
}
