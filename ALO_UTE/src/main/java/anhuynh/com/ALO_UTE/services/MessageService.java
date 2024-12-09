package anhuynh.com.ALO_UTE.services;

import org.springframework.stereotype.Service;

import anhuynh.com.ALO_UTE.entity.Message;
import anhuynh.com.ALO_UTE.repository.MessageRepository;

@Service
public class MessageService {
	private final MessageRepository messageRepository;

	public MessageService(MessageRepository messageRepository) {
		this.messageRepository = messageRepository;
	}

	public Message sendMessage(Message message) {
		return messageRepository.save(message);
	}
}
