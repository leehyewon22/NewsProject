package com.smhrd.model;

import java.math.BigDecimal;

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
	private BigDecimal cat_seq;
	private String mem_joindate;
	private String mem_type;
	private BigDecimal cat_seq2;
	private BigDecimal cat_seq3;
	
	public Member(@NonNull String mem_id, @NonNull String mem_pw, String mem_name,BigDecimal cat_seq, BigDecimal cat_seq2, BigDecimal cat_seq3) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.cat_seq = cat_seq;
		this.cat_seq2 = cat_seq2;
		this.cat_seq3 = cat_seq3;
	}
	public Member(String id, String pw, String name, String[] catseq) {
	}
	
	
	
	
}
