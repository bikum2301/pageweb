package com.NHOM5.ALOUTE.service;

import java.util.List;

import com.NHOM5.ALOUTE.entity.User;

public interface UserService {
	List<User> findAllUsers();
	
	User createUser(User user);
	
	User resetPassword(String email);
	
	User findUserById(Long id);
	
	User findByUsername(String username);
	
	User findByEmail(String email);
}
