package com.spring.insaproject.mvc;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {

    @GetMapping("/main")
    public String main() {
        return "index";
    }

    //test
    @GetMapping("/login")
    public String login() {
        return "login";
    }


    //test2
    @GetMapping("/tables")
    public String tables() {
        return "tables";
    }



}
