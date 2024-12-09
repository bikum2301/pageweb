package anhuynh.com.ALO_UTE.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import anhuynh.com.ALO_UTE.entity.Friendship;
import anhuynh.com.ALO_UTE.services.FriendshipService;

@RequestMapping("/friends")
@RestController
public class FriendshipController {
	private final FriendshipService friendshipService;

	public FriendshipController(FriendshipService friendshipService) {
		this.friendshipService = friendshipService;
	}

	@PostMapping("/add")
	public ResponseEntity<Friendship> addFriend(@RequestBody Friendship friendship) {
		Friendship newFriendship = friendshipService.addFriend(friendship);
		return ResponseEntity.ok(newFriendship);
	}
}
