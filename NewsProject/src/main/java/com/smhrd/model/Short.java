package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class Short {
	
	private BigDecimal short_seq;
	private BigDecimal news_seq;
	
	private String news_short;
	
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String keyword4;
	private String keyword5;
	
	private BigDecimal cat_seq;
	
	private String news_title;
	private String news_link;
	
}
