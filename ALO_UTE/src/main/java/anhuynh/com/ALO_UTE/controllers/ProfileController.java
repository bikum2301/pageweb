package anhuynh.com.ALO_UTE.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import anhuynh.com.ALO_UTE.entity.User;
import anhuynh.com.ALO_UTE.services.UserService;

@RequestMapping("/profile")
@RestController
public class ProfileController {
	private final UserService userService;

	public ProfileController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/edit")
	public ResponseEntity<User> getProfile() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User currentUser = (User) authentication.getPrincipal();
		User user = userService.findByEmail(currentUser.getEmail());
		return ResponseEntity.ok(user);
	}

	@PutMapping("/edit")
	public ResponseEntity<User> updateProfile(@RequestBody User user) {
		User updatedUser = userService.updateUser(user);
		return ResponseEntity.ok(updatedUser);
	}
}
