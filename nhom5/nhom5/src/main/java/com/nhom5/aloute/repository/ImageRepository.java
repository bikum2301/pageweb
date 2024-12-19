package com.nhom5.aloute.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom5.aloute.model.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {
    Image findByImageName(String imageName);
}
