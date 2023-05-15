package com.spring.insaproject.mvc;

import com.spring.insaproject.dto.LoginDto;
import com.spring.insaproject.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequiredArgsConstructor
@Slf4j
public class LoginController {

    private final EmployeeService employeeService;


    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public int login(@RequestBody LoginDto loginDto, HttpSession session) {
        log.info("login id pw = {}", loginDto);
        int loginResult = 0;
        int hrResult = 0;
        int finalResult = 0;
        loginResult = employeeService.checkExistEmplByEmpnoAndEname(loginDto);
        if(loginResult == 1) {
            finalResult++;
            hrResult = employeeService.checkEmplHRByEmpno(loginDto.getEmpno());
            if(hrResult == 1) {
                finalResult++;
                session.setAttribute("userId", loginDto.getEmpno());
                session.setAttribute("userName", loginDto.getEname());
            }
        }
        log.info("final={}", finalResult);
        return finalResult;
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        if(session != null) {
            session.invalidate();
        }
        return "redirect:/login";
    }




}
