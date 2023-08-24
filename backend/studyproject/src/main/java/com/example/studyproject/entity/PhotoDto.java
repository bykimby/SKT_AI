package com.example.studyproject.entity;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class PhotoDto {
    private Long id;
    private String url;
    private Long post_id;
}
