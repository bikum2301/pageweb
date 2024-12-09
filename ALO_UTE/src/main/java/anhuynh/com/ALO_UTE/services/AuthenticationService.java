package anhuynh.com.ALO_UTE.services;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import anhuynh.com.ALO_UTE.entity.User;
import anhuynh.com.ALO_UTE.models.LoginUserModel;
import anhuynh.com.ALO_UTE.models.RegisterUserModel;
import anhuynh.com.ALO_UTE.repository.UserRepository;

@Service
public class AuthenticationService {
	private final UserRepository userRepository;
	private final PasswordEncoder passwordEncoder;
	private final AuthenticationManager authenticationManager;

	public AuthenticationService(UserRepository userRepository, PasswordEncoder passwordEncoder,
			AuthenticationManager authenticationManager) {
		this.userRepository = userRepository;
		this.authenticationManager = authenticationManager;
		this.passwordEncoder = passwordEncoder;
	}

	public User signup(RegisterUserModel input) {
		User user = new User();
		user.setFullName(input.getFullName());
		user.setEmail(input.getEmail());
		user.setPassword(passwordEncoder.encode(input.getPassword()));

		return userRepository.save(user);
	}

	public User authenticate(LoginUserModel input) {
		authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(input.getEmail(), input.getPassword()));

		return userRepository.findByEmail(input.getEmail()).orElseThrow();
	}

}
