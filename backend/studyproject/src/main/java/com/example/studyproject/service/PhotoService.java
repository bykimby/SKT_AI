package com.example.studyproject.service;

import com.example.studyproject.entity.PhotoDto;
import com.example.studyproject.entity.PhotoEntity;
import com.example.studyproject.mapper.PhotoMapper;
import com.example.studyproject.repository.PhotoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhotoService {
    private final PhotoRepository photoRepository;
    private final PhotoMapper photoMapper;
    @Autowired
    public PhotoService(PhotoRepository photoRepository, PhotoMapper photoMapper) {
        this.photoRepository = photoRepository;
        this.photoMapper = photoMapper;
    }
    public PhotoDto createPhoto(PhotoDto photoDto) {
        PhotoEntity photoEntity = photoMapper.toEntity(photoDto);
        PhotoEntity returnEntity =  photoRepository.save(photoEntity);
        return photoMapper.toDto(returnEntity);
    }
    public void deletePhoto(Long id) {
        photoRepository.deleteById(id);
    }
}
