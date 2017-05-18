package com.cakes.service;

import java.util.List;

import com.cakes.entity.User;

public interface UserService {

	void save(User user);

	List<User> findAll();

	User findOne(int id);

	void delete(int id);

	void update(User user);
	
}
