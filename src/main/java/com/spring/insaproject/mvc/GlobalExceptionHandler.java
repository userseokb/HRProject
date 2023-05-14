package com.spring.insaproject.mvc;

import com.spring.insaproject.exception.EmplFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler({EmplFailureException.class})
	public ModelAndView EmplExceptionHandler(EmplFailureException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("exception", exception);
		mv.setViewName("error");
		return mv;
	}

}
