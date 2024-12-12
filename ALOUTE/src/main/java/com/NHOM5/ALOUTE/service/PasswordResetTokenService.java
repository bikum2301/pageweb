package com.NHOM5.ALOUTE.service;


import com.NHOM5.ALOUTE.entity.PasswordResetToken;

public interface PasswordResetTokenService {
	String createToken(String email);
	
	PasswordResetToken getToken(String token);
	
	PasswordResetToken getEmail(String email);
	
	void deleteToken(PasswordResetToken token);
	
	void sendResetEmail(String email, String token);
}
