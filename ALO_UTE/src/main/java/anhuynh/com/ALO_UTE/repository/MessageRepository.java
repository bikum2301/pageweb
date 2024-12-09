package anhuynh.com.ALO_UTE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import anhuynh.com.ALO_UTE.entity.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message, Integer> {

}
