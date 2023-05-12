package com.spring.insaproject.mvc;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class TestController {

    @GetMapping("/")
    public String main() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
