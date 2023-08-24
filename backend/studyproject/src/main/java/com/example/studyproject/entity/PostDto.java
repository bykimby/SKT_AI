package com.example.studyproject.entity;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class PostDto {
    private Long id;
    private Long user_id;
    private String category;
    private String title;
    private String thumbnail_url;
    private String description;
    private Long price;
    private Long view_count;
    private String status;

    public Long getUserId() {
        return user_id;
    }
}
