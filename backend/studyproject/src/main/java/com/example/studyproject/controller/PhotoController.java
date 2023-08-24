package com.example.studyproject.controller;


import com.example.studyproject.entity.PhotoDto;
import com.example.studyproject.entity.PostDto;
import com.example.studyproject.mapper.PhotoMapper;
import com.example.studyproject.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/photo")
public class PhotoController {
    private final PhotoService photoService;
    private final PhotoMapper photoMapper;
    @Autowired
    public PhotoController(PhotoService photoService, PhotoMapper photoMapper) {
        this.photoService = photoService;
        this.photoMapper = photoMapper;
    }
    @PostMapping("")
    public PhotoDto createPhoto(@RequestBody PhotoDto photoDto) {
        return photoService.createPhoto(photoDto);
    }
    @DeleteMapping("/{id}")
    public void deletePhoto(@PathVariable("id") Long id) {
        photoService.deletePhoto(id);
    }

}