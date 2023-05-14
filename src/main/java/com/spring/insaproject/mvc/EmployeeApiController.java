package com.spring.insaproject.mvc;

import com.spring.insaproject.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class EmployeeApiController {

    private final EmployeeService employeeService;

    // 사원번호 중복 체크
    // http://localhost:8083/api/empl/{empno}
    @GetMapping("/api/empl/{empno}")
    public int empnoDuplicateCheck(@PathVariable String empno) throws Exception {
        int result = 0;
        try {
            Integer.parseInt(empno);
        } catch(NumberFormatException ex) {
            result = 2;
            return result;
        }
        result = employeeService.empnoDuplicateCheck(Integer.parseInt(empno));
        return result;
    }
}
