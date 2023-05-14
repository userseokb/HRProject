package com.spring.insaproject.exception;

public class EmplFailureException extends RuntimeException{

	public EmplFailureException() {
		super();
	}

	public EmplFailureException(String message, Throwable cause) {
		super(message, cause);
	}

	public EmplFailureException(String message) {
		super(message);
	}

	public EmplFailureException(Throwable cause) {
		super(cause);
	}
	
	

}
