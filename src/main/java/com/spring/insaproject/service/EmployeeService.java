package com.spring.insaproject.service;

import com.spring.insaproject.dto.Employee;
import com.spring.insaproject.mapper.EmployeeMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EmployeeService {

    private final EmployeeMapper employeeMapper;

    //모든 사원 가져오기
    public List<Employee> getAllEmployee() {
        return employeeMapper.getAllEmployee();
    }

}
