package com.nhom5.aloute.service;

import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom5.aloute.model.Follow;
import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.repository.FollowRepository;
import com.nhom5.aloute.repository.LikeRepository;
import com.nhom5.aloute.repository.PostRepository;
import com.nhom5.aloute.repository.UserRepository;

import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.List;


@Service
public class PostService {
    private final PostRepository postRepository;
    private final UserRepository userRepository;
    private final FollowRepository followRepository;
    private final LikeRepository likeRepository;


    @Autowired
    public PostService(PostRepository postRepository, UserRepository userRepository, FollowRepository followRepository, LikeRepository likeRepository) {
        this.postRepository = postRepository;
        this.userRepository = userRepository;
        this.followRepository = followRepository;
        this.likeRepository = likeRepository;
    }


    @Transactional
    public void createPost(Post post, HttpSession session) {
        User user = (User) session.getAttribute("user");
        post.setUser(userRepository.findByUsername(user.getUsername()));
        post.setCreatedAt(LocalDateTime.now());
        postRepository.save(post);
    }

    @Transactional
    public Post createPostReturnPost(Post post, HttpSession session) {
        User user = (User) session.getAttribute("user");
        post.setUser(userRepository.findByUsername(user.getUsername()));
        post.setCreatedAt(LocalDateTime.now());
        return postRepository.save(post);
    }


    public List<Post> getFeedPosts(User user) {
        List<Follow> follows = followRepository.findByFollower(user);
        List<User> followedUsers = follows.stream().map(Follow::getFollowed).toList();
        List<Post> feedPosts = postRepository.findByUserIn(followedUsers);
        feedPosts.addAll(user.getPosts());
        feedPosts.sort(Comparator.comparing(Post::getCreatedAt).reversed());
        return feedPosts;
    }


    public void deletePostById(Long postId) {
        Post post = getPostById(postId);
        postRepository.delete(post);
    }


    public Post getPostById(Long postId) {
        return postRepository.getPostById(postId);
    }

    public LikeRepository getLikeRepository() {
        return likeRepository;
    }

    public FollowRepository getFollowRepository() {
        return followRepository;
    }


    public PostRepository getPostRepository() {
        return postRepository;
    }
}
