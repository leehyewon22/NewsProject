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
	private String mem_id;
	@NonNull
	private String mem_pw;
	private String mem_name;
	private String cat_seq;
	private String mem_joindate;
	private String mem_type;
}
