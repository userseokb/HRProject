package com.spring.insaproject.mapper;

import java.sql.SQLException;
import java.util.List;

import com.spring.insaproject.dto.Employee;
import com.spring.insaproject.dto.EmployeeOneInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface EmployeeMapper {
	
	// 전체 사원 가져오기
	public List<Employee> getAllEmployee();

	// 사원 등록
	public int insertEmployee(Employee empl);

	//중복 사원 체크
	public int empnoDuplicateCheck(int empno);

	//하나의 사원 정보 가져오기
	public EmployeeOneInfo getEmployeeOneInfo(int empno);

	//한 명의 Employee만의 정보 가져오기
	public Employee getOneEmployee(int empno);


}
