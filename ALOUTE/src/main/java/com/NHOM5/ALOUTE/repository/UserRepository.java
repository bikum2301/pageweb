package com.NHOM5.ALOUTE.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.NHOM5.ALOUTE.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{
    User findByUsername(String username);
    List<User> findByUserIdNotIn(List<Long> following);
    User findByEmail(String email);
    boolean existsByUsername(String username);
    void deleteByUsername(String username);
}