package com.spring.insaproject.mapper;

import com.spring.insaproject.dto.Department;
import com.spring.insaproject.dto.Employee;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DepartmentMapper {
	
	// 전체 부서 가져오기
	public List<Department> getAllDepartment();
	

}
