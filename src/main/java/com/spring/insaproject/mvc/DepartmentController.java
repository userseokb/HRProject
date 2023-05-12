package com.spring.insaproject.mvc;

import com.spring.insaproject.dto.Department;
import com.spring.insaproject.service.DepartmentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class DepartmentController {

    private final DepartmentService departmentService;

    @GetMapping("/dept")
    public String deptList(Model model) {
        List<Department> allDept = departmentService.getAllDepartment();

        model.addAttribute("allDept", allDept);
        log.info("all dept = {}", allDept);

        return "dept/deptlist";
    }

}
