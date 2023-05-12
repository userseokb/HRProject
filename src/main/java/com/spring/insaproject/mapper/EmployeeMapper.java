package com.spring.insaproject.mapper;

import java.sql.SQLException;
import java.util.List;

import com.spring.insaproject.dto.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface EmployeeMapper {
	
	// 전체 사원 가져오기
	public List<Employee> getAllEmployee();
	

}
