package anhuynh.com.ALO_UTE.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import anhuynh.com.ALO_UTE.entity.Post;
import anhuynh.com.ALO_UTE.services.PostService;

@RestController
@RequestMapping("/posts")
public class PostController {
	private final PostService postService;

	public PostController(PostService postService) {
		this.postService = postService;
	}

	@PostMapping("/create")
	public ResponseEntity<Post> createPost(@RequestBody Post post) {
		Post createdPost = postService.createPost(post);
		return ResponseEntity.ok(createdPost);
	}
}
