package com.spring.insaproject.service;

import com.spring.insaproject.dto.Department;
import com.spring.insaproject.mapper.DepartmentMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DepartmentService {

    private final DepartmentMapper departmentMapper;

    //모든 사원 가져오기
    public List<Department> getAllDepartment() {
        return departmentMapper.getAllDepartment();
    }

}
