package com.rentcar.config.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomErrorControler {

	@GetMapping("/error403")
	public String error404(){
		return "/error403";
	}
}