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
public class Employee {
	
	private int empno;
	private int deptno;
	private String evalGrade;
	private String ename;
	private int age;
	private String gender;
	private String position;
	private String status;
	private int sal;
	
	@Builder
	public Employee(int empno, int deptno, String evalGrade, String ename, int age, String gender, String position,
			String status, int sal) {
		this.empno = empno;
		this.deptno = deptno;
		this.evalGrade = evalGrade;
		this.ename = ename;
		this.age = age;
		this.gender = gender;
		this.position = position;
		this.status = status;
		this.sal = sal;
	}
	
	
	

}
