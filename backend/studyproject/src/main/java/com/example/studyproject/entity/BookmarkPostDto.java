package com.example.studyproject.entity;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class BookmarkPostDto {
    private Long id;
    private Long user_id;
    private Long post_id;
}
