package anhuynh.com.ALO_UTE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import anhuynh.com.ALO_UTE.entity.Friendship;

@Repository
public interface FriendshipRepository extends JpaRepository<Friendship, Integer> {

}
