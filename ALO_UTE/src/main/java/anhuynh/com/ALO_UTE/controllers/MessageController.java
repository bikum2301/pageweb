package anhuynh.com.ALO_UTE.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import anhuynh.com.ALO_UTE.entity.Message;
import anhuynh.com.ALO_UTE.services.MessageService;

@RequestMapping("/messages")
@RestController
public class MessageController {
	private final MessageService messageService;

	public MessageController(MessageService messageService) {
		this.messageService = messageService;
	}

	@PostMapping("/send")
	public ResponseEntity<Message> sendMessage(@RequestBody Message message) {
		Message sentMessage = messageService.sendMessage(message);
		return ResponseEntity.ok(sentMessage);
	}
}
