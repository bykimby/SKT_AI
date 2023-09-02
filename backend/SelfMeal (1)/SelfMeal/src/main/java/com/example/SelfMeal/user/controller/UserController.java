package com.example.SelfMeal.user.controller;

import com.example.SelfMeal.common.dto.ApiDataResDto;
import com.example.SelfMeal.common.dto.ApiResDto;
import com.example.SelfMeal.user.domain.dto.*;
import com.example.SelfMeal.user.dto.MyPageResDto;
import com.example.SelfMeal.user.service.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    @PostMapping("/register")
    public ApiDataResDto<RegisterResDto> register(@Validated @RequestBody RegisterReqDto registerReqDto) {
        return ApiDataResDto.of(userService.register(registerReqDto));
    }
    @PostMapping("/login")
    public ApiDataResDto<LoginResDto> login(@Validated @RequestBody LoginReqDto loginReqDto){
        return ApiDataResDto.of(userService.login(loginReqDto));
    }
    @GetMapping("/duplicated")
    public ApiDataResDto<UserNameDuplicatedResDto> isDuplicatedUser(@Validated @RequestBody UserNameDuplicatedReqDto userNameDuplicatedReqDto){
        return ApiDataResDto.of(userService.isDuplicatedUser(userNameDuplicatedReqDto));
    }//가입된 유저냐?
    @GetMapping("/myPage")
    public ApiDataResDto<MyPageResDto> getMyPage(Authentication auth){
        return ApiDataResDto.of(userService.getMyPage(auth.getName()));
    }
}
