package anhuynh.com.ALO_UTE.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import anhuynh.com.ALO_UTE.entity.User;
import anhuynh.com.ALO_UTE.repository.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public List<User> allUsers() {
		List<User> users = new ArrayList<>();

		userRepository.findAll().forEach(users::add);
		return users;
	}

	public User updateUser(User user) {
		User existingUser = userRepository.findById(user.getId())
				.orElseThrow(() -> new RuntimeException("User not found"));
		existingUser.setFullName(user.getFullName());
		existingUser.setEmail(user.getEmail());
		existingUser.setImages(user.getImages());
		return userRepository.save(existingUser);
	}

	public User findByEmail(String email) {
		return userRepository.findByEmail(email).orElseThrow(() -> new RuntimeException("User not found"));
	}
}
