package com.nhom5.aloute.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom5.aloute.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByEmail(String email);
}
