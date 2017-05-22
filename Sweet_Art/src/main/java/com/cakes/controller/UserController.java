package com.cakes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.entity.User;
import com.cakes.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	// @GetMapping("/registration")
	// public String registration(){
	// return "registration";
	// }

	@GetMapping("/registration")
	public String registration(Model model) {

		model.addAttribute("users", userService.findAll());

		return "registration";
	}

	@PostMapping("/saveUser")
	public String saveUser(@RequestParam String username, @RequestParam String useremail,
			@RequestParam String userpassword) {

		User user = new User();
		user.setName(username);
		user.setEmail(useremail);
		user.setPassword(userpassword);

		userService.save(user);

		return "redirect:/registration";
	}
	
	@GetMapping("/deleteUser/{id}")
	public String deleteUser(@PathVariable int id){
		
		userService.delete(id);
		
		return "redirect:/registration";
	}
	
	@GetMapping("/updateUser/{id}")
	public String updateUser(@PathVariable int id, Model model){
		
		User user = userService.findOne(id);
		
		model.addAttribute("currentUser", user);
		
		return "updateUser";
	}
	
	@PostMapping("/updateUser/{id}")
	public String updateUser(@PathVariable int id, 
							 @RequestParam String name, 
							 @RequestParam String email,
							 @RequestParam String password){
		
	User user = userService.findOne(id);
	
	user.setName(name);
	user.setEmail(email);
	user.setPassword(password);
	
	userService.save(user);
	
	return "redirect:/registration";
	}
}
