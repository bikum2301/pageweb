package com.NHOM5.ALOUTE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.NHOM5.ALOUTE.entity.PasswordResetToken;

@Repository
public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetToken, Long>{
	PasswordResetToken findByToken(String token);
	
	PasswordResetToken findByEmail(String email);
}
