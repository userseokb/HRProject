package com.spring.insaproject.dto;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EmployeeOneInfo {

    private int empno;
    private int deptno;
    private String evalGrade;
    private String ename;
    private int age;
    private String gender;
    private String position;
    private String status;
    private int sal;
    private Department department;
    private Evaluation evaluation;
}
