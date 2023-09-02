package com.example.SelfMeal.diet.controller;


import com.example.SelfMeal.common.dto.ApiDataResDto;
import com.example.SelfMeal.common.dto.ApiResDto;
import com.example.SelfMeal.diet.dto.DietDto;
import com.example.SelfMeal.diet.dto.DietReqDto;
import com.example.SelfMeal.diet.mapper.DietMapper;
import com.example.SelfMeal.diet.service.DietService;
import com.example.SelfMeal.user.domain.dto.UserNameReqDto;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/diet")
public class DietController {
    private final DietService dietService;
    private final DietMapper dietMapper;

    public DietController(DietService dietService, DietMapper dietMapper) {
        this.dietService = dietService;
        this.dietMapper = dietMapper;
    }

    @DeleteMapping("/delete")
    public void deleteDiet(@RequestBody DietReqDto dietReqDto) {
        dietService.deleteDiet(dietReqDto.getDietId());
    }
    @GetMapping("/byusername")
    public ApiDataResDto<DietDto> getById(@RequestBody UserNameReqDto userNameReqDto){
        DietDto dietDto=dietService.getByUserName(userNameReqDto.getUserName());
        return ApiDataResDto.of(dietDto);
    }
}
