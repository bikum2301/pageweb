package com.nhom5.aloute.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.nhom5.aloute.model.Image;
import com.nhom5.aloute.model.Post;
import com.nhom5.aloute.model.User;
import com.nhom5.aloute.repository.ImageRepository;
import com.nhom5.aloute.service.FollowService;
import com.nhom5.aloute.service.UserService;

import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.Comparator;
import java.util.List;


@Controller
public class UserController {
    private final FollowService followService;
    private final UserService userService;
    private final ImageRepository imageRepository;


    @Autowired
    public UserController(FollowService followService, UserService userService, ImageRepository imageRepository) {
        this.followService = followService;
        this.userService = userService;
        this.imageRepository = imageRepository;
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        // Add a new User object to the model
        model.addAttribute("user", new User());
        // Return the view name "register"
        return "register";
    }


    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user") User user, Model model) {
        boolean isUsernameTaken = userService.isUsernameTaken(user.getUsername());
        boolean isEmailTaken = userService.isEmailTaken(user.getEmail());
        if (isUsernameTaken) {
            model.addAttribute("error", "Username is already taken");
            user.setUsername(null);
            model.addAttribute("registrationFailed", true);
            return "register";
        } else if (isEmailTaken) {
            model.addAttribute("error", "Email is already taken");
            user.setEmail(null);
            model.addAttribute("registrationFailed", true);
            return "register";
        } else {
            userService.createUser(user);
            return "redirect:/login";
        }
    }



    @GetMapping("/login")
    public String showLoginForm(Model model, HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            return "redirect:/home";
        } else {
            model.addAttribute("user", new User());
            return "login";
        }
    }


    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") User user, Model model, HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            return "redirect:/home";
        }
        boolean isAuthenticated = userService.authenticateUser(user);
        if (isAuthenticated) {
            session.setAttribute("user", user);
            return "redirect:/home";
        } else {
            model.addAttribute("error", "Invalid username or password");
            model.addAttribute("authFailed", true);
            return "login";
        }
    }

  
    @GetMapping("/logout")
    public String logoutUser(HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            session.invalidate();
 
        }
        return "redirect:/login";
    }


    @GetMapping("/{username}")
    public String showUserProfile(@PathVariable String username, Model model, HttpSession session, HttpServletRequest request) {
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
                List<Post> posts = user.getPosts();
                posts.sort(Comparator.comparing(Post::getCreatedAt).reversed());
                model.addAttribute("currentPath", request.getRequestURI());
                model.addAttribute("posts", posts);
                boolean isFollowing = followService.isFollowing(sessionUser, user);
                model.addAttribute("isFollowing", isFollowing);
                return "profile";
            } else {
                return "redirect:/error";
            }
        } else {
            return "redirect:/login";
        }
    }


    @GetMapping("/users")
    public String showAllUsers(Model model, HttpSession session, HttpServletRequest request) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            List<User> allUsers = userService.findAll();
            User sessionUser = userService.findByUsername(tmp.getUsername());
            model.addAttribute("currentPath", request.getRequestURI());
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("users", allUsers);
            return "users";
        }
        return "redirect:/login";
    }

 
    @GetMapping("/profile/edit")
    public String showEditProfile(Model model, HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            User sessionUser = userService.findByUsername(tmp.getUsername());
            User user = userService.findByUsername(tmp.getUsername());
            model.addAttribute("sessionUser", sessionUser);
            model.addAttribute("user", user);
            return "edit_profile";
        }
        return "redirect:/login";
    }


    @PostMapping("/profile/edit")
    public String editProfile(@RequestParam("name") String name,
                              @RequestParam("username") String username,
                              @RequestParam("email") String email,
                              @RequestParam("biography") String biography,
                              @RequestParam("profilePicture") MultipartFile profilePicture,
                              HttpSession session) {
        User tmp = (User) session.getAttribute("user");
        if (tmp != null) {
            User user = userService.findByUsername(tmp.getUsername());

            user.setName(name);
            user.setUsername(username);
            user.setEmail(email);
            user.setBiography(biography);

            if (!profilePicture.isEmpty()) {
                try {
                    Image img = new Image();
                    img.setImageName(profilePicture.getOriginalFilename());
                    img.setImageType(profilePicture.getContentType());
                    img.setImage(profilePicture.getBytes());

                    imageRepository.save(img);
                    user.setProfileImage(img);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            userService.save(user);
            return "redirect:/home";
        } else {
            return "redirect:/login";
        }
    }
    
    @PostMapping("/profile/delete")
	public String deleteProfile(@RequestParam("username") String username) {
		userService.delete(userService.findByUsername(username));
		
		return "redirect:/login";
	}
}
