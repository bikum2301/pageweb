package com.NHOM5.ALOUTE.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.NHOM5.ALOUTE.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService{
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Value("${spring.mail.username}") 
	private String sender;

	@Override
	public void sendSimpleEmail(String to, String subject, String text) {
		// TODO Auto-generated method stub
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        message.setFrom(sender);

        mailSender.send(message);
	}

}
