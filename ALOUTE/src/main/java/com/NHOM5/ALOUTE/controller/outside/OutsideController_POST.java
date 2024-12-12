package com.NHOM5.ALOUTE.controller.outside;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.NHOM5.ALOUTE.entity.User;
import com.NHOM5.ALOUTE.service.PasswordResetTokenService;
import com.NHOM5.ALOUTE.service.UserService;

@Controller
@RequestMapping("/")
public class OutsideController_POST {
	
	@Autowired
	private PasswordResetTokenService tokenService;
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/forgot_password")
	public String sendEmail(@RequestParam("email") String email) {
		String token = tokenService.createToken(email);
		tokenService.sendResetEmail(email, token);
		return "redirect:/check-email";
	}
	
	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam("token") String token,
								@RequestParam("password") String password ) {
		User user = userService.findByEmail(tokenService.getToken(token).getEmail());
		user.setPassword(password);
		tokenService.deleteToken(tokenService.getToken(token));
		userService.createUser(user);
		System.out.print(password);
		System.out.print(user.getEmail());
		return "redirect:/login";
	}
	
	@PostMapping("/create-account")
	public String createAccount(@RequestParam("email") String email,
								@RequestParam("username") String username,
								@RequestParam("password") String password) {
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setUsername(username);
		System.out.print(email);
		System.out.print(username);
		System.out.print(password);
		userService.createUser(user);
		return "redirect:/login";
	}
	@PostMapping("/login")
	public String homePage(@RequestParam("email") String email,
							@RequestParam("password") String password,
							Model model) {
		User user = userService.findByEmail(email);
		if(user == null  || user.getPassword() != password) {
			model.addAttribute("error", "Nhập sai địa chỉ email hoặc mật khẩu");
		}
		return "redirect:/waiting";
	}
}
