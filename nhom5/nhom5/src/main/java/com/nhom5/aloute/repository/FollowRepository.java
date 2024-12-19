package com.nhom5.aloute.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom5.aloute.model.Follow;
import com.nhom5.aloute.model.User;

import java.util.List;

public interface FollowRepository extends JpaRepository<Follow, Long> {
    List<Follow> findByFollower(User follower);

    Follow findByFollowerAndFollowed(User follower, User followed);

    boolean existsByFollowerAndFollowed(User follower, User followed);
}
