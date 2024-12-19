package com.nhom5.aloute.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nhom5.aloute.model.Follow;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.service.FollowService;
import com.nhom5.aloute.service.UserService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FollowController {
    private final UserService userService;
    private final FollowService followService;

    public FollowController(UserService userService, FollowService followService) {
        this.userService = userService;
        this.followService = followService;
    }

    @PostMapping("/follow/{username}")
    public String followUser(@PathVariable("username") String username, HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        User follower = userService.findByUsername(tmp.getUsername());
        User followed = userService.findByUsername(username);
        followService.follow(follower, followed);
        return "redirect:/home";
    }


    @PostMapping("/unfollow/{username}")
    public String unfollowUser(@PathVariable("username") String username, HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        User follower = userService.findByUsername(tmp.getUsername());
        User followed = userService.findByUsername(username);
        followService.unfollow(follower, followed);
        return "redirect:/home";
    }


    @GetMapping("{username}/followers")
    public String showFollowers(@PathVariable("username") String username, Model model, HttpSession session, HttpServletRequest request) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {

            User sessionUser = userService.findByUsername(tmp.getUsername());
            User user = userService.findByUsername(username);
            model.addAttribute("currentPath", request.getRequestURI());
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("user", user);
            List<User> users = new ArrayList<>();
            for (Follow follow : user.getFollowers()) {
                users.add(follow.getFollower());
            }
            model.addAttribute("users", users);
            return "users";
        } else {

            return "redirect:/login";
        }
    }


    @GetMapping("{username}/following")
    public String showFollowing(@PathVariable("username") String username, Model model, HttpSession session, HttpServletRequest request) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            // If user is logged in proceed
            User user = userService.findByUsername(username);
            User sessionUser = userService.findByUsername(tmp.getUsername());
            model.addAttribute("currentPath", request.getRequestURI());
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("user", user);
            List<User> users = new ArrayList<>();
            for (Follow follow : user.getFollowing()) {
                users.add(follow.getFollowed());
            }
            model.addAttribute("users", users);
            return "users";
        } else {

            return "redirect:/login";
        }
    }
}
