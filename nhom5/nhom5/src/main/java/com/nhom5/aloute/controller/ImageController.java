package com.nhom5.aloute.controller;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.nhom5.aloute.model.Image;
import com.nhom5.aloute.repository.ImageRepository;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;


@Controller
public class ImageController {
    private final ImageRepository imageRepository;


    public ImageController(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }

    @GetMapping("/images/{imageId}")
    public ResponseEntity<byte[]> getImage(@PathVariable Long imageId) {

        Image img = imageRepository.findById(imageId).orElseThrow();

        try {

            ByteArrayInputStream bais = new ByteArrayInputStream(img.getImage());
            BufferedImage originalImage = ImageIO.read(bais);


            int squareSize = Math.min(originalImage.getWidth(), originalImage.getHeight());

            int xCenter = originalImage.getWidth() / 2;
            int yCenter = originalImage.getHeight() / 2;

            int x = xCenter - (squareSize / 2);
            int y = yCenter - (squareSize / 2);

            BufferedImage croppedImage = originalImage.getSubimage(x, y, squareSize, squareSize);

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(croppedImage, img.getImageType().split("/")[1], baos);
            byte[] imageBytes = baos.toByteArray();

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.parseMediaType(img.getImageType()));
            headers.setContentLength(imageBytes.length);

            return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @GetMapping("/images/default")
    public ResponseEntity<byte[]> getDefaultImage() {
        Resource resource = new ClassPathResource("/static/images/default-profile-picture.png");
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.IMAGE_PNG);
            headers.setContentLength(resource.contentLength());

            return new ResponseEntity<>(IOUtils.toByteArray(resource.getInputStream()), headers, HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/images/error")
    public ResponseEntity<byte[]> getErrorImage() {
        Resource resource = new ClassPathResource("/static/images/error.png");
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.IMAGE_PNG);
            headers.setContentLength(resource.contentLength());

            return new ResponseEntity<>(IOUtils.toByteArray(resource.getInputStream()), headers, HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
