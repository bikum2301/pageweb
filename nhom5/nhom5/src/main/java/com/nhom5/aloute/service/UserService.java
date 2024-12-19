package com.nhom5.aloute.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.nhom5.aloute.model.User;
import com.nhom5.aloute.repository.UserRepository;

import java.util.List;


@Service
public class UserService {
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;

    @Autowired
    public UserService(PasswordEncoder passwordEncoder, UserRepository userRepository) {
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
    }


    public void createUser(User user) {
        user.setActive(true);
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userRepository.save(user);
    }

 
    public boolean authenticateUser(User user) {
        User userFromDatabase = userRepository.findByUsername(user.getUsername());
        if (userFromDatabase != null) {
            return passwordEncoder.matches(user.getPassword(), userFromDatabase.getPassword());
        }
        return false;
    }


    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }


    public List<User> findAll() {
        return userRepository.findAll();
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public boolean isUsernameTaken(String username) {
        return userRepository.findByUsername(username) != null;
    }

    public boolean isEmailTaken(String email) {
        return userRepository.findByEmail(email) != null;
    }
    
    public void delete(User user) {
    	userRepository.delete(user);
    }
}
