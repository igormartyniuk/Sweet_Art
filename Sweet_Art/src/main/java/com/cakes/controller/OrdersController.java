package com.cakes.controller;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.entity.Orders;
import com.cakes.service.OrderService;

@Controller
public class OrdersController {
	
	@Autowired
	private OrderService orderService;

	@GetMapping("/orders")
	public String Cakes(Model model) {

		model.addAttribute("orders", orderService.findAll());

		return "orders";
	}

	@PostMapping("/saveOrders")
	public String saveCakes(@RequestParam String type, 
						   @RequestParam String orderName, 
						   @RequestParam int number,
						   @RequestParam LocalDate date) {

		Orders orders = new Orders(type, orderName, number, date);

		orders.setType(type);
		orders.setCakeName(orderName);
		orders.setNumber(number);
		orders.setDate(date);
		
		orderService.save(orders);

		return "redirect:/orders";
	}

	@GetMapping("/deleteOrders/{id}")
	public String deleteCake(@PathVariable int id) {

		orderService.delete(id);

		return "redirect:/orders";
	}
}
