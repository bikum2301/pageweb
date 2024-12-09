package anhuynh.com.ALO_UTE.controllers;

import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import anhuynh.com.ALO_UTE.entity.User;
import anhuynh.com.ALO_UTE.models.LoginResponse;
import anhuynh.com.ALO_UTE.models.LoginUserModel;
import anhuynh.com.ALO_UTE.models.RegisterUserModel;
import anhuynh.com.ALO_UTE.services.AuthenticationService;
import anhuynh.com.ALO_UTE.services.JwtService;
import jakarta.transaction.Transactional;

import java.io.IOException;

@Slf4j
@RequestMapping("/auth")
@RestController
public class AuthenticationController {
    private final JwtService jwtService;
    private final AuthenticationService authenticationService;

    public AuthenticationController(JwtService jwtService, AuthenticationService authenticationService) {
        this.jwtService = jwtService;
        this.authenticationService = authenticationService;
    }

    @PostMapping("/signup")
    @Transactional
    public ResponseEntity<User> register(@RequestParam String email,
                                         @RequestParam String password,
                                         @RequestParam String fullname) {
        RegisterUserModel registerUser = new RegisterUserModel();
        registerUser.setEmail(email);
        registerUser.setPassword(password);
        registerUser.setFullName(fullname);
        User registeredUser = authenticationService.signup(registerUser);
        return ResponseEntity.status(HttpStatus.FOUND)
                .header("Location", "/login")
                .build();
    }

    @PostMapping("/login")
    @Transactional
    public void authenticate(@RequestParam String email,
                             @RequestParam String password,
                             HttpServletResponse response) throws IOException {
        LoginUserModel loginUser = new LoginUserModel();
        loginUser.setPassword(password);
        loginUser.setEmail(email);
        User authenticatedUser = authenticationService.authenticate(loginUser);
        String jwtToken = jwtService.generateToken(authenticatedUser);
        response.setHeader("Authorization", "Bearer " + jwtToken);
        response.sendRedirect("/home"); // Chuyển hướng đến trang home sau khi đăng nhập thành công
    }
}
