package com.example.studyproject.mapper;

import com.example.studyproject.entity.PostDto;
import com.example.studyproject.entity.PostEntity;
import com.example.studyproject.entity.UserDto;
import com.example.studyproject.entity.UserEntity;
import org.springframework.stereotype.Component;
@Component
public class PostMapper {
    public PostDto toDto(PostEntity postEntity) {
        return PostDto.builder()
                .id(postEntity.getId())
                .user_id(postEntity.getUser_id().getId())
                .category(postEntity.getCategory())
                .title(postEntity.getTitle())
                .thumbnail_url(postEntity.getThumbnail_url())
                .description(postEntity.getDescription())
                .price(postEntity.getPrice())
                .view_count(postEntity.getView_count())
                .status(postEntity.getStatus())
                .build();
    }

    public PostEntity toEntity(PostDto postDto) {
        UserEntity user=UserEntity.builder()//실제 user데려와야
                .id(postDto.getUser_id())
                .build(); //dto에서 userentity를 꺼냄
        return PostEntity.builder()
                .user_id(user)
                .category(postDto.getCategory())
                .title(postDto.getTitle())
                .thumbnail_url(postDto.getThumbnail_url())
                .description(postDto.getDescription())
                .price(postDto.getPrice())
                .view_count(postDto.getView_count())
                .status(postDto.getStatus())
                .build();
    }
}
