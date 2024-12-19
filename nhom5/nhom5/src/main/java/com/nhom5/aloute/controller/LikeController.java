package com.nhom5.aloute.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhom5.aloute.model.Like;
import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.service.FollowService;
import com.nhom5.aloute.service.LikeService;
import com.nhom5.aloute.service.PostService;
import com.nhom5.aloute.service.UserService;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;


@Controller
public class LikeController {
    private final UserService userService;
    private final PostService postService;
    private final LikeService likeService;
    private final FollowService followService;


    public LikeController(UserService userService, PostService postService, LikeService likeService, FollowService followService) {
        this.userService = userService;
        this.postService = postService;
        this.likeService = likeService;
        this.followService = followService;
    }

    @PostMapping("/like/{postId}")
    public String likePost(@PathVariable("postId") Long postId, HttpSession session, @RequestParam("referer") String referer) {
        User sessionUser = (User) session.getAttribute("user");
        User user = userService.findByUsername(sessionUser.getUsername());
        Post post = postService.getPostById(postId);
        likeService.likePost(post, user);
        return "redirect:" + referer;
    }


    @PostMapping("/unlike/{postId}")
    public String unlikePost(@PathVariable("postId") Long postId, HttpSession session, @RequestParam("referer") String referer) {
        User sessionUser = (User) session.getAttribute("user");
        User user = userService.findByUsername(sessionUser.getUsername());
        Post post = postService.getPostById(postId);
        likeService.unlikePost(post, user);
        return "redirect:" + referer;
    }

    @GetMapping("/{username}/likes")
    public String showLikedPosts(@PathVariable("username") String username, Model model, HttpSession session, HttpServletRequest request) {

        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            User sessionUser = userService.findByUsername(tmp.getUsername());
            model.addAttribute("sessionUser", sessionUser);
            User user = userService.findByUsername(username);
            if (user != null) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("h:mma, MMMM d, yyyy");
                DateTimeFormatter formatterHour = DateTimeFormatter.ofPattern("K:mma");
                model.addAttribute("formatterHour", formatterHour);
                model.addAttribute("formatter", formatter);
                model.addAttribute("user", user);
                List<Like> likes = user.getLikes();
                List<Post> posts = new ArrayList<>();
                for (Like like : likes) {
                    posts.add(like.getPost());
                }
                model.addAttribute("currentPath", request.getRequestURI());
                model.addAttribute("posts", posts);
                boolean isFollowing = followService.isFollowing(sessionUser, user);
                model.addAttribute("isFollowing", isFollowing);
                posts.sort(Comparator.comparing(Post::getCreatedAt).reversed());
                return "profile";
            } else {
                return "redirect:/error";
            }
        } else {
            return "redirect:/login";
        }

    }

    public UserService getUserService() {
        return userService;
    }

    public PostService getPostService() {
        return postService;
    }

    public LikeService getLikeService() {
        return likeService;
    }
}
