package com.spring.insaproject.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@Getter
@Setter
@ToString
public class Evaluation {
	private String evalGrade;
	private int salChange;
	private String promotion;
	
	@Builder
	public Evaluation(String evalGrade, int salChange, String promotion) {
		this.evalGrade = evalGrade;
		this.salChange = salChange;
		this.promotion = promotion;
	}


}
