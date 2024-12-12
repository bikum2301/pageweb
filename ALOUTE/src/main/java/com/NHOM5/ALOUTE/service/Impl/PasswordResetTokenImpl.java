package com.NHOM5.ALOUTE.service.Impl;

import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NHOM5.ALOUTE.entity.PasswordResetToken;
import com.NHOM5.ALOUTE.repository.PasswordResetTokenRepository;
import com.NHOM5.ALOUTE.service.EmailService;
import com.NHOM5.ALOUTE.service.PasswordResetTokenService;

@Service
public class PasswordResetTokenImpl implements PasswordResetTokenService {

	@Autowired
	private PasswordResetTokenRepository tokenRepository;

	@Autowired
	private EmailService emailService;

	@Override
	public String createToken(String email) {
		String token = UUID.randomUUID().toString(); // Generate a unique token

		PasswordResetToken resetToken = new PasswordResetToken();
		resetToken.setEmail(email);
		resetToken.setToken(token);
		resetToken.setExpiryDate(LocalDateTime.now().plusMinutes(15)); // Token valid for 15 minutes

		tokenRepository.save(resetToken);
		return token;
	}

	@Override
	public PasswordResetToken getToken(String token) {
		// TODO Auto-generated method stub
		return tokenRepository.findByToken(token);
	}

	@Override
	public void deleteToken(PasswordResetToken token) {
		tokenRepository.delete(token);
	}

	@Override
	public void sendResetEmail(String email, String token) {
		String resetLink = "http://localhost:8080/reset-password?token=" + token;
		String subject = "Reset Your Password";
		String body = "Click the following link to reset your password: " + resetLink;

		emailService.sendSimpleEmail(email, subject, body);
	}

	@Override
	public PasswordResetToken getEmail(String email) {
		// TODO Auto-generated method stub
		return tokenRepository.findByEmail(email);
	}

}
