package com.example.SelfMeal.diet.service;


import com.example.SelfMeal.diet.dto.DietDto;
import com.example.SelfMeal.diet.entity.DietEntity;
import com.example.SelfMeal.diet.exception.UserDoesNotExistException;
import com.example.SelfMeal.diet.mapper.DietMapper;
import com.example.SelfMeal.diet.repository.DietRepository;

import com.example.SelfMeal.gptResponse.exception.DietDoesNotExistException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DietService {
    public DietService(DietRepository dietRepository, DietMapper dietMapper) {
        this.dietRepository = dietRepository;
        this.dietMapper = dietMapper;
    }

    private final DietRepository dietRepository;
    private final DietMapper dietMapper;

    public DietDto createDiet(DietDto dietDto){
        DietEntity dietEntity = dietMapper.toEntity(dietDto);
        DietEntity returnEntity =  dietRepository.save(dietEntity);
        return dietMapper.toDto(returnEntity);
    }

    public DietDto getByUserName(String userName){
        Optional<DietEntity> opDietEntity=dietRepository.findByUser_UserName(userName);
        if(opDietEntity.isEmpty()){
            throw new UserDoesNotExistException();
        }
        DietEntity dietEntity=opDietEntity.get();
        DietDto dietDto=dietMapper.toDto(dietEntity);
        return dietDto;
    }

    public void deleteDiet(Long dietId){
        Optional<DietEntity> opDietEntity=dietRepository.findByDietId(dietId);
        if(opDietEntity.isEmpty()){
            throw new UserDoesNotExistException();
        }
        DietEntity dietEntity=opDietEntity.get();
        dietRepository.deleteById(dietEntity.getDietId());
    }
    public DietEntity getByDietId(Long dietId){
        Optional<DietEntity> dietEntity=dietRepository.findByDietId(dietId);
        if(dietEntity.isEmpty())
            throw new DietDoesNotExistException();
        return dietEntity.get();
    }
}
