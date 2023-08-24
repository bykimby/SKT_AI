package com.example.studyproject.controller;

import com.example.studyproject.domain.User;
import com.example.studyproject.entity.UserDto;
import com.example.studyproject.entity.UserEntity;
import com.example.studyproject.service.UserService;
import org.hibernate.annotations.GeneratorType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
@RestController
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public UserDto register(@RequestBody UserDto userDto) {
        return userService.registerUser(userDto);
    }
    @PostMapping("/login")
    public UserDto login(@RequestBody UserDto userDto) {
        return userService.login(userDto);
    }
    @PostMapping("/refresh-token")
    public ResponseEntity<String> refreshToken(@RequestBody String refreshToken) {
        return ResponseEntity.ok(userService.refreshToken(refreshToken));
    }
}
