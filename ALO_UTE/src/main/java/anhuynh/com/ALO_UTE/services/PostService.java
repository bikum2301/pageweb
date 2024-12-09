package anhuynh.com.ALO_UTE.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import anhuynh.com.ALO_UTE.entity.Post;
import anhuynh.com.ALO_UTE.repository.PostRepository;

@Service
public class PostService {
	private final PostRepository postRepository;

	public PostService(PostRepository postRepository) {
		this.postRepository = postRepository;
	}

	@Transactional
	public Post createPost(Post post) {
		// Kiểm tra tính hợp lệ của bài viết
		if ((post.getText() == null || post.getText().isEmpty())
				&& (post.getImageUrl() == null || post.getImageUrl().isEmpty())
				&& (post.getVideoUrl() == null || post.getVideoUrl().isEmpty())) {
			throw new IllegalArgumentException(
					"Bài viết phải có ít nhất một trong ba trường (text, imageUrl, videoUrl) có dữ liệu.");
		}
		return postRepository.save(post);
	}
}
