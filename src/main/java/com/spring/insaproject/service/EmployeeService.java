package com.spring.insaproject.service;

import com.spring.insaproject.dto.Employee;
import com.spring.insaproject.exception.EmplFailureException;
import com.spring.insaproject.mapper.EmployeeMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class EmployeeService {

    private final EmployeeMapper employeeMapper;

    //모든 사원 가져오기
    public List<Employee> getAllEmployee() {
        return employeeMapper.getAllEmployee();
    }

    //사원 추가
    public void insertEmployee(Employee empl) {
        int res;
        try {
            res = employeeMapper.insertEmployee(empl);
        } catch(DataAccessException e) {
            throw new EmplFailureException(e);
        }

        if(res == 0) {
            throw new EmplFailureException("사원 추가 실패");
        }
    }

    //사원 중복 체크
    public int empnoDuplicateCheck(int empno) {
        int result = employeeMapper.empnoDuplicateCheck(empno);
        return result;
    }



}
