package com.web.ldap.controller;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	@GetMapping("/login")
public String loginpage() {
	return "loginpage";
}
	@GetMapping("/")
	public String loginpagewelcome() {
		return "loginpage";
	}
	@PostMapping("/welcome")
	@ResponseBody
	public String welcome() {
		SecurityContextHolder.getContext();
		return "HI";
	}
}
