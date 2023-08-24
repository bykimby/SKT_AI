package com.example.studyproject.mapper;

import com.example.studyproject.entity.PostEntity;
import com.example.studyproject.entity.BookmarkPostDto;
import com.example.studyproject.entity.BookmarkPostEntity;
import com.example.studyproject.entity.UserEntity;
import org.springframework.stereotype.Component;

@Component
public class BookmarkPostMapper {
    public BookmarkPostDto toDto(BookmarkPostEntity bookmarkPostEntity){
        return BookmarkPostDto.builder()
                .id(bookmarkPostEntity.getId())
                .user_id(bookmarkPostEntity.getUser_id().getId())
                .post_id(bookmarkPostEntity.getPost_id().getId())//post entity의 id만 가져옴
                .build();
    }
    public BookmarkPostEntity toEntity(BookmarkPostDto bookmarkPostDto){
        UserEntity user = UserEntity.builder()
                .id(bookmarkPostDto.getUser_id())
                .build();

        PostEntity post = PostEntity.builder()
                .id(bookmarkPostDto.getPost_id())
                .build();

        return BookmarkPostEntity.builder()
                .id(bookmarkPostDto.getId())
                .user_id(user)
                .post_id(post)
                .build();
    }
}
