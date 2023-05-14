package com.spring.insaproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.HiddenHttpMethodFilter;

@SpringBootApplication
public class InsaprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(InsaprojectApplication.class, args);
	}

	//히든 메소드 사용을 위한 Bean 등록
	@Bean
	public HiddenHttpMethodFilter hiddenHttpMethodFilter() {
		return new HiddenHttpMethodFilter();
	}

}
