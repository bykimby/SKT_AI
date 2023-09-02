package com.example.SelfMeal.common.dto;

import com.example.SelfMeal.common.constants.ErrorCode;

public class ApiDataResDto<T> extends ApiResDto {
    private final T data;

    private ApiDataResDto(T data) {
        super(true, ErrorCode.OK.getCode(), ErrorCode.OK.getMessage());
        this.data = data;
    }

    public static <T> ApiDataResDto<T> of(T data) {
        return new ApiDataResDto<>(data);
    }

    public static <T> ApiDataResDto<T> empty() {
        return new ApiDataResDto<>(null);
    }
}
