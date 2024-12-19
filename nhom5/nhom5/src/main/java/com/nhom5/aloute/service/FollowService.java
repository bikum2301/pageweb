package com.nhom5.aloute.service;

import org.springframework.stereotype.Service;

import com.nhom5.aloute.model.Follow;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.repository.FollowRepository;


@Service
public class FollowService {
    private final FollowRepository followRepository;

    public FollowService(FollowRepository followRepository) {
        this.followRepository = followRepository;
    }

    public FollowRepository getFollowRepository() {
        return followRepository;
    }

    public void follow(User follower, User followed) {
        Follow follow = new Follow();
        follow.setFollower(follower);
        follow.setFollowed(followed);
        followRepository.save(follow);
    }


    public void unfollow(User follower, User followed) {
        Follow follow = followRepository.findByFollowerAndFollowed(follower, followed);
        if (follow != null) {
            followRepository.delete(follow);
        }
    }


    public boolean isFollowing(User follower, User followed) {
        return followRepository.existsByFollowerAndFollowed(follower, followed);
    }
}
