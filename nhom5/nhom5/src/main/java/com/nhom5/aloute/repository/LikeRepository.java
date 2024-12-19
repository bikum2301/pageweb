package com.nhom5.aloute.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom5.aloute.model.Like;
import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;

import java.util.List;

public interface LikeRepository extends JpaRepository<Like, Long> {
    List<Like> findByPost(Post post);

    Like findByPostAndUser(Post post, User user);
}