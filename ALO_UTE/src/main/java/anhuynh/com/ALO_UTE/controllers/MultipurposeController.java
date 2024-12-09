package anhuynh.com.ALO_UTE.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MultipurposeController {

    @GetMapping("/login")
    public String loginForm(){
        return "web/login";
    }

    @GetMapping("/register")
    public String registerForm(){
        return "web/register";
    }

    @GetMapping("/home")
    public String homePage(){
        return "web/home";
    }
}
