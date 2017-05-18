package com.cakes.service;

import java.util.List;

import com.cakes.entity.Chef;

public interface ChefService {

	void save(Chef chef);

	List<Chef> findAll();

	Chef findOne(int id);

	void delete(int id);

	void update(Chef chef);
	
}
