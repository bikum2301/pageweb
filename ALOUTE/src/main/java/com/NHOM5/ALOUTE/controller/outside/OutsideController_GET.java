package com.NHOM5.ALOUTE.controller.outside;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.NHOM5.ALOUTE.entity.PasswordResetToken;
import com.NHOM5.ALOUTE.entity.User;
import com.NHOM5.ALOUTE.service.PasswordResetTokenService;
import com.NHOM5.ALOUTE.service.UserService;

@Controller
@RequestMapping("/")
public class OutsideController_GET {
	@Autowired
	private PasswordResetTokenService tokenService;

	@GetMapping("/login")
	public String loginPage() {
		return "web/outside/login";
	}

	@GetMapping("/create-account")
	public String createAccountPage() {
		return "web/outside/register";
	}

	@GetMapping("/forgot-password")
	public String resetPasswordPage() {
		return "web/outside/forgetPassword";
	}
	
	@GetMapping("/check-email")
	public String checkEmailPage() {
		return "web/outside/checkEmail";
	}

	@GetMapping("/reset-password")
	public String resetPasswordPage(@RequestParam("token") String token, Model model) {
		PasswordResetToken optionalToken = tokenService.getToken(token);

		if (!optionalToken.isExpired()) {
			model.addAttribute("email", optionalToken.getEmail());
			System.out.print("hehe");
			return "web/outside/resetPassword";
		} else {
			return "Invalid or expired reset token!";
		}
	}

}
