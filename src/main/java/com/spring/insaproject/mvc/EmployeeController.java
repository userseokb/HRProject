package com.spring.insaproject.mvc;


import com.spring.insaproject.dto.Employee;
import com.spring.insaproject.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class EmployeeController {

    private final EmployeeService employeeService;

//    @GetMapping("/")
//    public List<Employee> main() {
//       return employeeService.getAllEmployee();
//    }

}
