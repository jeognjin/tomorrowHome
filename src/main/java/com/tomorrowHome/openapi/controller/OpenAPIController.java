package com.tomorrowHome.openapi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/openAPI")
public class OpenAPIController {

	@GetMapping("/apartment")
	public String openAPI() {
		return "openapi/apartment";
	}

	@GetMapping("/book")
	public String Book() {

		return "openapi/book";
	}
}
