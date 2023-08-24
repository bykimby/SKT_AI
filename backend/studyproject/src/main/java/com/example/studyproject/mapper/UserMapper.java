package com.example.studyproject.mapper;

import com.example.studyproject.entity.UserDto;
import com.example.studyproject.entity.UserEntity;
import org.springframework.stereotype.Component;

@Component
public class UserMapper {
    public UserDto toDto(UserEntity userEntity) {
        UserDto userDto = new UserDto();
        userDto.setUsername(userEntity.getUsername());
        userDto.setPassword(userEntity.getPassword());
        userDto.setPhone_no(userEntity.getPhone_no());
        userDto.setLikes(userEntity.getLikes());
        return userDto;
    }

    public UserEntity toEntity(UserDto userDto) {
        UserEntity userEntity = UserEntity.builder()
                .username(userDto.getUsername())
                .password(userDto.getPassword())
                .phone_no(userDto.getPhone_no())
                .likes(userDto.getLikes())
                .build();
        return userEntity;
    }

}
