package com.example.dseng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ContactController {
	
	
	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@PostMapping("/contact/sendEmail")
	public @ResponseBody String contactSendEmail(
			@RequestParam("message") String message,
			@RequestParam("name") String name,
			@RequestParam("from") String from,
			@RequestParam("title") String title
			) {
		
		return "";
	}
}
