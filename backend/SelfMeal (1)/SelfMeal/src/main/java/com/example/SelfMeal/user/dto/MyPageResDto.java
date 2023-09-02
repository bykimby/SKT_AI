package com.example.SelfMeal.user.dto;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class MyPageResDto {
    private String userName;
    private String gender;
    private int age;
    private float height;
    private double kcalToEat;
    private float targetWeight;
}
