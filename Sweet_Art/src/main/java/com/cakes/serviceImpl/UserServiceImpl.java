package com.cakes.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cakes.dao.UserDao;
import com.cakes.entity.User;
import com.cakes.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public void save(User user) {
		if (user.getEmail().contains("@")) {
			userDao.save(user);

		} else {
			System.out.println("wrong email");
		}
	}

	public List<User> findAll() {
		 return userDao.findAll();
	}

	public User findOne(int id) {
		return userDao.findOne(id);
	}

	public void delete(int id) {
		userDao.delete(id);
	}

	public void update(User user) {
		userDao.save(user);
	}


}
