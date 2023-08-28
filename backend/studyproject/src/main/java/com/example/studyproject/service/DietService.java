package com.example.studyproject.service;

import com.example.studyproject.entity.DietDto;
import com.example.studyproject.entity.DietEntity;
import com.example.studyproject.mapper.DietMapper;
import com.example.studyproject.repository.DietRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DietService {
    private final DietRepository dietRepository;
    private final DietMapper dietMapper;

    public DietService(DietRepository dietRepository, DietMapper dietMapper) {
        this.dietRepository = dietRepository;
        this.dietMapper = dietMapper;
    }

    public DietDto createDiet(DietDto dietDto){
        DietEntity dietEntity = dietMapper.toEntity(dietDto);
        DietEntity returnEntity =  dietRepository.save(dietEntity);
        return dietMapper.toDto(returnEntity);
    }

    public void deleteDiet(Long dietId){
        dietRepository.deleteById(dietId);
    }

}
