package anhuynh.com.ALO_UTE.services;

import org.springframework.stereotype.Service;

import anhuynh.com.ALO_UTE.entity.Friendship;
import anhuynh.com.ALO_UTE.repository.FriendshipRepository;

@Service
public class FriendshipService {
	private final FriendshipRepository friendshipRepository;

	public FriendshipService(FriendshipRepository friendshipRepository) {
		this.friendshipRepository = friendshipRepository;
	}

	public Friendship addFriend(Friendship friendship) {
		return friendshipRepository.save(friendship);
	}
}
