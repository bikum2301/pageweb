package com.NHOM5.ALOUTE.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.NHOM5.ALOUTE.entity.Following;
import com.NHOM5.ALOUTE.entity.IdClass.FollowingId;

public interface FollowingRepository extends JpaRepository<Following, FollowingId> {

    List<Following> findAllByFollowed_userId(Long id);
}