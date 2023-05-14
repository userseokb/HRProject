package com.spring.insaproject.mvc;


import com.spring.insaproject.dto.Employee;
import com.spring.insaproject.dto.EmployeeOneInfo;
import com.spring.insaproject.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class EmployeeController {

    private final EmployeeService employeeService;

    @GetMapping("/empl")
    public String emplList(Model model) {
        List<Employee> allEmployee = employeeService.getAllEmployee();
        model.addAttribute("allEmpl", allEmployee);
        log.info("all empl = {}", allEmployee);
        return "empl/empllist";
    }

    @GetMapping("/empl/register")
    public String registerEmplForm() {
        return "empl/registerempl";
    }

    @PostMapping("/empl/register")
    public String registerEmpl(@ModelAttribute Employee employee) {
        employee.setStatus("NORMAL");
        log.info("registered empl = {}", employee);
        employeeService.insertEmployee(employee);
            return "redirect:/empl";
    }

    @GetMapping("/empl/{empno}")
    public String emplDetail(@PathVariable int empno, Model model) {
        EmployeeOneInfo result = employeeService.getEmployeeOneInfo(empno);
        model.addAttribute("oneEmpl", result);
        log.info("one empl = {}", result);
        return "empl/empldetail";
    }

}
