package com.nhom5.aloute.service;

import org.springframework.stereotype.Service;

import com.nhom5.aloute.model.Like;
import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.repository.LikeRepository;


@Service
public class LikeService {
    private final LikeRepository likeRepository;


    public LikeService(LikeRepository likeRepository) {
        this.likeRepository = likeRepository;
    }


    public void likePost(Post post, User user) {
        Like like = new Like();
        if (likeRepository.findByPostAndUser(post, user) == null) {
            like.setPost(post);
            like.setUser(user);
            likeRepository.save(like);
        }

    }

 
    public void unlikePost(Post post, User user) {
        Like like = likeRepository.findByPostAndUser(post, user);
        if (like != null) {
            likeRepository.delete(like);
        }
    }


    public boolean isPostLikedByUser(Post post, User sessionUser) {
        return likeRepository.findByPostAndUser(post, sessionUser) != null;
    }


    public Like getLikeByPostAndUser(Post post, User sessionUser) {
        return likeRepository.findByPostAndUser(post, sessionUser);
    }
}
