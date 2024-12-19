package com.nhom5.aloute.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.service.PostService;
import com.nhom5.aloute.service.UserService;

import java.time.format.DateTimeFormatter;
import java.util.List;


@Controller
public class HomeController {
    private final UserService userService;
    private final PostService postService;


    public HomeController(UserService userService, PostService postService) {
        this.userService = userService;
        this.postService = postService;
    }

    @GetMapping("/")
    public String redirectHomePage() {
        return "redirect:/home";
    }

    @GetMapping("/home")
    public String showHomePage(Model model, HttpSession session, HttpServletRequest request) {

        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {

            User sessionUser = userService.findByUsername(tmp.getUsername());
            List<Post> feedPosts = postService.getFeedPosts(sessionUser);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("h:mma, MMMM d, yyyy");
            model.addAttribute("formatter", formatter);
            DateTimeFormatter formatterHour = DateTimeFormatter.ofPattern("K:mma");
            model.addAttribute("currentPath", request.getRequestURI());
            model.addAttribute("formatterHour", formatterHour);
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("user", sessionUser);
            model.addAttribute("feedPosts", feedPosts);
            return "home";
        } else {

            return "redirect:/login";
        }
    }
}
