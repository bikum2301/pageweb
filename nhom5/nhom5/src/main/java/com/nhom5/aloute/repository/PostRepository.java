package com.nhom5.aloute.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;

import java.util.Collection;
import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {
    List<Post> findByUserIn(List<User> userList);

    Post getPostById(Long postId);
}
