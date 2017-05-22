package com.cakes.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakes.entity.Orders;
import com.cakes.service.CakesService;
import com.cakes.service.OrderService;

@Controller
public class OrdersController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CakesService cakeService;

	@GetMapping("/orders")
	public String Cakes(Model model) {
		
		model.addAttribute("orders", orderService.findAll());
		model.addAttribute("cakes", cakeService.findAll());

		return "orders";
	}

	@PostMapping("/saveOrders")
	public String saveCakes(@RequestParam String orderType, 
						    @RequestParam String orderName, 
						    @RequestParam int numbers,
						    @RequestParam String orderDate) {
		
		LocalDate Date = LocalDate.parse(orderDate);

		Orders orders = new Orders();

		orders.setType(orderType);
		orders.setCakeName(orderName);
		orders.setNumber(numbers);
		orders.setDate(Date);
		
		orderService.save(orders);

		return "redirect:/orders";
	}

	@GetMapping("/deleteOrders/{id}")
	public String deleteCake(@PathVariable int id) {

		orderService.delete(id);

		return "redirect:/orders";
	}
	
	@GetMapping("/updateOrders/{id}")
	public String updateOrders(@PathVariable int id, Model model){
		
		Orders orders = orderService.findOne(id);
		
		model.addAttribute("cakes", cakeService.findAll());
		model.addAttribute("currentOrder", orders);
		
		return "updateOrders";
	}
	
	@PostMapping("/updateOrders/{id}")
	public String updateOrder(@PathVariable int id, 
 							  @RequestParam String orderType, 
						      @RequestParam String orderName, 
						      @RequestParam int numbers,
						      @RequestParam String orderDate){
					
	Orders order = orderService.findOne(id);
	
	LocalDate Date = LocalDate.parse(orderDate);
	
	order.setType(orderType);
	order.setCakeName(orderName);
	
	order.setNumber(numbers);
	order.setDate(Date);
	
	orderService.save(order);
	
	return "redirect:/orders";
	}
}
