package com.cakes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.entity.Ingredient;
import com.cakes.service.IngredientService;

@Controller
public class IngredientController {

	@Autowired
	private IngredientService ingredientservice;
	
	@GetMapping("/ingredient")
	public String ingredient(Model model){
		model.addAttribute("ingredient", ingredientservice.findAll());
	return "ingredient";
	}

	
	@PostMapping("/ingredient")
	public String ingredient(@RequestParam String ingredientName){
		ingredientservice.save(new Ingredient(ingredientName));
		return "redirect:/ingredient";
	}
	
//	@PostMapping("/ingredient")
//	public Ingredient ingredient(@RequestParam String ingredientName, @RequestParam double ingredientPrice){
//		ingredientservice.save(new Ingredient(ingredientName, ingredientPrice));
//		return ingredient(ingredientName, ingredientPrice);
//	}
	
	@GetMapping("/deleteIngredient/{id}")
	public String delete(@PathVariable int id){
		
		ingredientservice.delete(id);
		return "redirect:/ingredient";
		
	}
	
}
