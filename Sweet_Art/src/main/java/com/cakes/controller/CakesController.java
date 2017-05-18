package com.cakes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CakesController {

	@GetMapping("/cakes")
	public String cakes() {
		return "cakes";
	}
}
