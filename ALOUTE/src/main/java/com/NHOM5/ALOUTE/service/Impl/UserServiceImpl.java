package com.NHOM5.ALOUTE.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NHOM5.ALOUTE.entity.User;
import com.NHOM5.ALOUTE.repository.UserRepository;
import com.NHOM5.ALOUTE.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public List<User> findAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public User createUser(User user) {
		return userRepository.save(user);
	}

	@Override
	public User findUserById(Long id) {
		User user = new User();
		user.setUserId(id);
		return null;
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public User resetPassword(String email) {
		User user = this.findByEmail(email);
		return user;
	}
	
	
}
