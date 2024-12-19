package com.nhom5.aloute.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.service.LikeService;
import com.nhom5.aloute.service.PostService;
import com.nhom5.aloute.service.UserService;

import java.time.format.DateTimeFormatter;


@Controller
public class PostController {
    private final PostService postService;
    private final UserService userService;
    private final LikeService likeService;


    @Autowired
    public PostController(PostService postService, UserService userService, LikeService likeService) {
        this.postService = postService;
        this.userService = userService;
        this.likeService = likeService;
    }


    @PostMapping("/create-post")
    public String createPost(@ModelAttribute("post") Post post, HttpSession session) {
        postService.createPost(post, session);
        return "redirect:/home";
    }


    @PostMapping("/post/{postId}/delete")
    public String deletePost(@PathVariable("postId") Long postId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Post post = postService.getPostById(postId);
        if (post.getUser().getUsername().equals(user.getUsername())) {
            postService.deletePostById(postId);
            return "redirect:/home";
        } else {
            return "redirect:/error";
        }
    }

    @GetMapping("post/{postId}")
    public String showPostById(@PathVariable("postId") Long postId, Model model, HttpSession session, HttpServletRequest request) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            User sessionUser = userService.findByUsername(tmp.getUsername());
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("h:mma, MMMM d, yyyy");
            Post post = postService.getPostById(postId);
            DateTimeFormatter formatterHour = DateTimeFormatter.ofPattern("K:mma");
            model.addAttribute("currentPath", request.getRequestURI());
            model.addAttribute("formatterHour", formatterHour);
            model.addAttribute("formatter", formatter);
            model.addAttribute("post", post);
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("user", post.getUser());
            return "post";
        } else {
            return "redirect:/login";
        }
    }

    public UserService getUserService() {
        return userService;
    }

    public LikeService getLikeService() {
        return likeService;
    }
}
