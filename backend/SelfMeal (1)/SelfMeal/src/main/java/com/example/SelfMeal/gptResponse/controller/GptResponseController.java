package com.example.SelfMeal.gptResponse.controller;

import com.example.SelfMeal.common.dto.ApiDataResDto;
import com.example.SelfMeal.diet.dto.DietDto;
import com.example.SelfMeal.gptResponse.dto.DietImageResDto;
import com.example.SelfMeal.gptResponse.dto.DietQueryDto;
import com.example.SelfMeal.gptResponse.dto.GptResponseDto;
import com.example.SelfMeal.gptResponse.service.GptResponseService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/recommend")
public class GptResponseController {
    private final GptResponseService gptResponseService;
    public GptResponseController(GptResponseService gptResponseService) {
        this.gptResponseService = gptResponseService;
    }
    @PostMapping("")
    public ApiDataResDto<List<GptResponseDto>> createRecommendDiets(@RequestBody DietDto dietDto){
        List<GptResponseDto> gptResponseDtos=gptResponseService.createRecommendDiets(dietDto);
        return ApiDataResDto.of(gptResponseDtos);
    }
    @DeleteMapping("/delete")
    public void deleteDietResponse(@PathVariable("gptResponseId") Long gptResponseId){
        gptResponseService.deleteDietResponse(gptResponseId);
    }
    @GetMapping("/{keyword}")
    public ApiDataResDto<List<GptResponseDto>> searchDietsByTitle(@PathVariable("keyword") String keyword, @RequestBody DietQueryDto dietQueryDto){
        List<GptResponseDto> gptResponseDtos=gptResponseService.searchDietsByTitle(dietQueryDto.getUserId(),keyword);
        return ApiDataResDto.of(gptResponseDtos);
    }

    @GetMapping("")
    public ApiDataResDto<List<GptResponseDto>> getByUserId(@RequestBody DietQueryDto dietQueryDto){
        List<GptResponseDto> gptResponseDtos=gptResponseService.getByUserId(dietQueryDto.getUserId());
        return ApiDataResDto.of(gptResponseDtos);
    }
//    @GetMapping("/{liked}")
//    public ApiDataResDto<GptResponseDto> findXthMostLiked(@PathVariable("liked")int liked){
//        GptResponseDto gptResponseDto=gptResponseService.findXthMostLiked(liked);
//        return ApiDataResDto.of(gptResponseDto);
//    }
    @GetMapping("/{dietName}")
    public ApiDataResDto<DietImageResDto> dietImageQuery(@PathVariable("dietName")String dietName){
        DietImageResDto dietImageResDto=gptResponseService.dietImageQuery(dietName);
        return ApiDataResDto.of(dietImageResDto);
    }
}
