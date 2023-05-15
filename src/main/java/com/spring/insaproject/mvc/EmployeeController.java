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

    //사원 목록
    @GetMapping("/empl")
    public String emplList(Model model) {
        List<Employee> allEmployee = employeeService.getAllEmployee();
        model.addAttribute("allEmpl", allEmployee);
        log.info("all empl = {}", allEmployee);
        return "empl/empllist";
    }

    //사원 추가 폼
    @GetMapping("/empl/register")
    public String registerEmplForm() {
        return "empl/registerempl";
    }

    //사원 추가
    @PostMapping("/empl/register")
    public String registerEmpl(@ModelAttribute Employee employee) {
        employee.setStatus("NORMAL");
        log.info("registered empl = {}", employee);
        employeeService.insertEmployee(employee);
            return "redirect:/empl";
    }

    //사원 상세
    @GetMapping("/empl/{empno}")
    public String emplDetail(@PathVariable int empno, Model model) {
        EmployeeOneInfo result = employeeService.getEmployeeOneInfo(empno);
        model.addAttribute("oneEmpl", result);
        log.info("one empl = {}", result);
        return "empl/empldetail";
    }

    //사원 수정 폼
    @GetMapping("/modify/empl/{empno}")
    public String motifyEmplForm(@PathVariable int empno, Model model) {
        Employee result = employeeService.getOneEmployee(empno);
        model.addAttribute("employee", result);
        log.info("one employee = {}", result);
        return "empl/modifyempl";
    }

    //사원 수정
    @PutMapping("/empl/{empno}")
    public String modifyEmpl(@PathVariable int empno, @ModelAttribute Employee updateValue) {
        Employee oriEmployee = employeeService.getOneEmployee(empno);
        oriEmployee.setDeptno(updateValue.getDeptno());
        oriEmployee.setEvalGrade(updateValue.getEvalGrade());
        oriEmployee.setEname(updateValue.getEname());
        oriEmployee.setAge(updateValue.getAge());
        oriEmployee.setGender(updateValue.getGender());
        oriEmployee.setPosition(updateValue.getPosition());
        oriEmployee.setStatus(updateValue.getStatus());
        oriEmployee.setSal(updateValue.getSal());
        log.info("modified employee = {}", oriEmployee);
        employeeService.updateOneEmplInfo(oriEmployee);
        return "redirect:/empl/" + empno;
    }



}
