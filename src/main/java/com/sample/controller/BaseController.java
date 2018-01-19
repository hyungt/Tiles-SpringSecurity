package com.sample.controller;

import org.springframework.security.core.context.SecurityContextHolder;

import com.sample.service.UserUserDetails;

public class BaseController {

	public String getPrincipal() {
		String username = null;
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		if(principal instanceof UserUserDetails) {
			username = ((UserUserDetails)principal).getUsername();
		} else {
			username = principal.toString();
		}
		
		return username;
	}
}
