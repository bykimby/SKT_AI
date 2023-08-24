package com.example.studyproject.entity;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class UserDto {
    private String username;
    private String password;
    private Long phone_no;
    private Long likes;
}
