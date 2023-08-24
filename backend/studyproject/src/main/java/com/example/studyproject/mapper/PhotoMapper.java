package com.example.studyproject.mapper;

import com.example.studyproject.entity.*;
import org.springframework.stereotype.Component;

@Component
public class PhotoMapper {
    public PhotoDto toDto(PhotoEntity photoEntity){
        return PhotoDto.builder()
                .id(photoEntity.getId())
                .url(photoEntity.getUrl())
                .post_id(photoEntity.getPost_id().getId())//post entity의 id만 가져옴
                .build();
    }
    public PhotoEntity toEntity(PhotoDto photoDto){
        PostEntity post = PostEntity.builder()
                .id(photoDto.getPost_id())
                .build();

        return PhotoEntity.builder()
                .id(photoDto.getId())
                .url(photoDto.getUrl())
                .post_id(post)
                .build();
    }
}
