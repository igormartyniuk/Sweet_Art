package com.cakes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.entity.Cakes;
import com.cakes.service.CakesService;

@Controller
public class CakesController {

	@Autowired
	private CakesService cakesService;

	// @GetMapping("/cakes")
	// public String cakes() {
	// return "cakes";
	// }

	@GetMapping("/cakes")
	public String Cakes(Model model) {

		model.addAttribute("cakes", cakesService.findAll());

		return "cakes";
	}

	@PostMapping("/saveCakes")
	public String saveCakes(@RequestParam String cakeType, 
						   @RequestParam String cakeName, 
						   @RequestParam double weight) {

		Cakes cakes = new Cakes(cakeType, cakeName, weight);

		cakes.setCakeType(cakeType);
		cakes.setCakeName(cakeName);
		cakes.setWeight(weight);

		cakesService.save(cakes);

		return "redirect:/cakes";
	}

	@GetMapping("/deleteCakes/{id}")
	public String deleteCake(@PathVariable int id) {

		cakesService.delete(id);

		return "redirect:/cakes";
	}
}
